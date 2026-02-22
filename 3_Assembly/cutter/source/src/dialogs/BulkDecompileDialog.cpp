#include "BulkDecompileDialog.h"
#include "core/Cutter.h"

#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QProgressBar>
#include <QLabel>
#include <QPushButton>
#include <QMessageBox>
#include <QPointer>
#include <QTimer>

BulkDecompileDialog::BulkDecompileDialog(Decompiler *decompiler,
                                         const QList<FunctionDescription> &functions,
                                         const QString &outputPath,
                                         QWidget *parent)
    : QDialog(parent), decompiler(decompiler), functions(functions)
{
    setWindowTitle(tr("Exporting Decompiled Code"));
    setMinimumWidth(400);

    auto *layout = new QVBoxLayout(this);

    statusLabel = new QLabel(tr("Preparing..."), this);
    layout->addWidget(statusLabel);

    progressBar = new QProgressBar(this);
    progressBar->setRange(0, functions.size());
    progressBar->setValue(0);
    layout->addWidget(progressBar);

    auto *buttonLayout = new QHBoxLayout();
    buttonLayout->addStretch();
    cancelButton = new QPushButton(tr("Cancel"), this);
    buttonLayout->addWidget(cancelButton);
    layout->addLayout(buttonLayout);

    connect(cancelButton, &QPushButton::clicked, this, &BulkDecompileDialog::onCancelClicked);

    // Per-function timeout — if Ghidra hangs for >30 s on one function, skip it.
    timeoutTimer = new QTimer(this);
    timeoutTimer->setSingleShot(true);
    timeoutTimer->setInterval(30000);
    connect(timeoutTimer, &QTimer::timeout, this, &BulkDecompileDialog::onDecompileTimeout);

    outputFile.setFileName(outputPath);
    if (!outputFile.open(QIODevice::WriteOnly | QIODevice::Text)) {
        QMessageBox::critical(parent, tr("Export Error"),
                              tr("Could not open output file for writing:\n%1").arg(outputPath));
        QMetaObject::invokeMethod(this, "reject", Qt::QueuedConnection);
        return;
    }
    fileStream.setDevice(&outputFile);

    // Write all strings as a header section before the decompiled functions.
    writeStringsSection();

    // Kick off the first decompilation once the dialog is shown.
    QMetaObject::invokeMethod(this, "processNext", Qt::QueuedConnection);
}

void BulkDecompileDialog::writeStringsSection()
{
    // Use "izzj" (raw scan of entire binary) rather than getAllStrings() which
    // requires a bin object and silently returns empty for raw/DOS binaries.
    CutterJson strings = Core()->cmdj("izzj");
    if (!strings.valid() || strings.size() == 0) {
        return;
    }

    const QString sep = QString(70, QLatin1Char('='));
    fileStream << "/* " << sep << " */\n";
    fileStream << "/* STRINGS                                                             */\n";
    fileStream << "/* " << sep << " */\n\n";

    for (CutterJson s : strings) {
        RVA vaddr   = s["vaddr"].toRVA();
        QString str = s["string"].toString();
        QString type = s["type"].toString();

        // Skip short strings and strings with control characters mid-content —
        // both are almost always false positives from the raw binary scanner
        // picking up code bytes or data tables.
        if (str.length() < 7) {
            continue;
        }
        bool hasEmbeddedControl = false;
        for (int i = 0; i < str.length() - 1; ++i) {
            char c = str[i].toLatin1();
            if (c != '\0' && (c == '\r' || c == '\t' || (c > 0 && c < 0x20))) {
                hasEmbeddedControl = true;
                break;
            }
        }
        if (hasEmbeddedControl) {
            continue;
        }

        QString newName = QString("STR_0x%1").arg(vaddr, 0, 16);

        // Escape the string content so it is valid inside a C string literal.
        str.replace(QLatin1Char('\\'), QLatin1String("\\\\"));
        str.replace(QLatin1Char('"'),  QLatin1String("\\\""));
        str.replace(QLatin1Char('\n'), QLatin1String("\\n"));
        str.replace(QLatin1Char('\r'), QLatin1String("\\r"));
        str.replace(QLatin1Char('\t'), QLatin1String("\\t"));

        fileStream << QString("static const char *%1 = \"%2\"; // [%3]\n")
                              .arg(newName)
                              .arg(str)
                              .arg(type);
    }
    fileStream << "\n";
}


void BulkDecompileDialog::processNext()
{
    if (cancelled) {
        finish(true);
        return;
    }

    if (currentIndex >= functions.size()) {
        finish(false);
        return;
    }

    const FunctionDescription &fn = functions[currentIndex];
    statusLabel->setText(tr("Decompiling %1 (%2 / %3)...")
                                 .arg(fn.name)
                                 .arg(currentIndex + 1)
                                 .arg(functions.size()));
    progressBar->setValue(currentIndex);

    // Skip functions that are too large or too complex for Ghidra.
    // - linearSize > 8 KB: almost certainly a data region misidentified as code.
    // - nbbs > 300: extreme control-flow complexity (e.g. interrupt handlers
    //   with 1000+ basic blocks) causes a Ghidra crash regardless of byte size.
    static constexpr RVA kMaxFunctionSize = 8192;
    static constexpr int  kMaxBasicBlocks  = 300;
    const bool tooLarge   = fn.linearSize > kMaxFunctionSize;
    const bool tooComplex = fn.nbbs       > kMaxBasicBlocks;
    if (tooLarge || tooComplex) {
        const QString sep = QString(70, QLatin1Char('='));
        fileStream << "/* " << sep << " */\n";
        fileStream << QString("/* 0x%1: %2 */\n").arg(fn.offset, 0, 16).arg(fn.name);
        fileStream << "/* " << sep << " */\n";
        if (tooLarge) {
            fileStream << QString("/* (too large for decompiler: %1 bytes — disassembly below) */\n")
                                  .arg(fn.linearSize);
        } else {
            fileStream << QString("/* (too complex for decompiler: %1 basic blocks — disassembly below) */\n")
                                  .arg(fn.nbbs);
        }
        // Emit the raw disassembly so the function is still readable.
        QString disasm = Core()->cmd(
                QString("pda @ 0x%1").arg(fn.offset, 0, 16));
        if (!disasm.isEmpty()) {
            fileStream << "/*\n" << disasm << "*/\n\n";
        } else {
            fileStream << "\n";
        }
        ++skippedCount;
        ++currentIndex;
        QTimer::singleShot(0, this, &BulkDecompileDialog::processNext);
        return;
    }

    if (decompiler->isRunning()) {
        // The decompiler is currently busy (e.g. from a widget auto-refresh).
        // Wait for it to finish, then retry. Guard with QPointer so the lambda
        // is safe if the dialog is destroyed before the signal fires.
        QPointer<BulkDecompileDialog> self(this);
        auto *waitConn = new QMetaObject::Connection();
        *waitConn = connect(decompiler, &Decompiler::finished, this,
                            [self, waitConn](RzAnnotatedCode *) {
                                QObject::disconnect(*waitConn);
                                delete waitConn;
                                if (self) {
                                    QTimer::singleShot(0, self, &BulkDecompileDialog::processNext);
                                }
                            });
        return;
    }

    connect(decompiler, &Decompiler::finished, this,
            &BulkDecompileDialog::onDecompilationFinished);
    timeoutTimer->start();
    decompiler->decompileAt(fn.offset);
}

void BulkDecompileDialog::onDecompilationFinished(RzAnnotatedCode *code)
{
    timeoutTimer->stop();
    disconnect(decompiler, &Decompiler::finished, this,
               &BulkDecompileDialog::onDecompilationFinished);

    // Guard against unexpected double-delivery of finished (e.g. from a
    // concurrent widget refresh) which would push currentIndex out of range.
    if (currentIndex >= functions.size()) {
        if (code) {
            rz_annotated_code_free(code);
        }
        return;
    }

    const FunctionDescription &fn = functions[currentIndex];

    // Write a separator header so individual functions are easy to find.
    const QString sep = QString(70, QLatin1Char('='));
    fileStream << "/* " << sep << " */\n";
    fileStream << QString("/* 0x%1: %2 */\n")
                          .arg(fn.offset, 0, 16)
                          .arg(fn.name);
    fileStream << "/* " << sep << " */\n";

    if (code && code->code && code->code[0] != '\0') {
        // Strip the repetitive "[rz-ghidra] Matching calling convention" warning
        // lines — they appear for every function call and only mean "16-bit
        // calling conventions are uncertain", which is true everywhere.
        QString text = QString::fromUtf8(code->code);
        QStringList lines = text.split(QLatin1Char('\n'));
        QStringList filtered;
        filtered.reserve(lines.size());
        for (const QString &line : lines) {
            if (!line.contains(QLatin1String("[rz-ghidra] Matching calling convention"))) {
                filtered.append(line);
            }
        }
        fileStream << filtered.join(QLatin1Char('\n'));
    } else {
        fileStream << "/* (no output) */\n";
    }
    fileStream << "\n";

    if (code) {
        rz_annotated_code_free(code);
    }

    ++currentIndex;

    if (cancelled) {
        finish(true);
    } else {
        // Schedule via the event loop so the UI (progress bar, label) gets
        // a chance to repaint between functions and the call stack stays flat.
        QTimer::singleShot(0, this, &BulkDecompileDialog::processNext);
    }
}

void BulkDecompileDialog::onDecompileTimeout()
{
    // The decompiler did not respond within the timeout — cancel it if possible,
    // disconnect, write a placeholder, and move on.
    if (decompiler->isCancelable()) {
        decompiler->cancel();
    }
    disconnect(decompiler, &Decompiler::finished, this,
               &BulkDecompileDialog::onDecompilationFinished);

    if (currentIndex < functions.size()) {
        const FunctionDescription &fn = functions[currentIndex];
        const QString sep = QString(70, QLatin1Char('='));
        fileStream << "/* " << sep << " */\n";
        fileStream << QString("/* 0x%1: %2 */\n").arg(fn.offset, 0, 16).arg(fn.name);
        fileStream << "/* " << sep << " */\n";
        fileStream << "/* (decompiler timeout — skipped) */\n\n";
        ++skippedCount;
        ++currentIndex;
    }

    if (cancelled) {
        finish(true);
    } else {
        QTimer::singleShot(0, this, &BulkDecompileDialog::processNext);
    }
}

void BulkDecompileDialog::onCancelClicked()
{
    cancelled = true;
    cancelButton->setEnabled(false);
    statusLabel->setText(tr("Cancelling..."));
}

void BulkDecompileDialog::finish(bool wasCancelled)
{
    fileStream.flush();
    outputFile.close();

    progressBar->setValue(functions.size());

    if (wasCancelled) {
        statusLabel->setText(tr("Cancelled after %1 of %2 functions.")
                                     .arg(currentIndex)
                                     .arg(functions.size()));
    } else {
        if (skippedCount > 0) {
            statusLabel->setText(tr("Done. Exported %1 functions (%2 skipped due to timeout).")
                                         .arg(functions.size() - skippedCount)
                                         .arg(skippedCount));
        } else {
            statusLabel->setText(tr("Done. Exported %1 functions.").arg(functions.size()));
        }
    }

    cancelButton->setText(tr("Close"));
    cancelButton->setEnabled(true);
    // Reconnect so "Close" actually closes the dialog.
    disconnect(cancelButton, &QPushButton::clicked, this, &BulkDecompileDialog::onCancelClicked);
    connect(cancelButton, &QPushButton::clicked, this, &QDialog::accept);
}
