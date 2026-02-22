#ifndef BULKDECOMPILEDOCK_H
#define BULKDECOMPILEDOCK_H

#include <QDialog>
#include <QFile>
#include <QTextStream>

#include "common/Decompiler.h"
#include "core/CutterDescriptions.h"

class QProgressBar;
class QLabel;
class QPushButton;

/**
 * @brief Dialog that bulk-decompiles every function in the binary and writes
 *        the output to a single text file.
 *
 * Decompilation is driven by the async Decompiler::finished signal so the UI
 * stays responsive.  Functions are processed one at a time (the decompiler is
 * single-threaded) and a progress bar tracks how many have been completed.
 */
class BulkDecompileDialog : public QDialog
{
    Q_OBJECT

public:
    /**
     * @param decompiler   The decompiler backend to use.
     * @param functions    List of all functions to decompile.
     * @param outputPath   Absolute path of the output file that will be written.
     * @param parent       Optional parent widget.
     */
    explicit BulkDecompileDialog(Decompiler *decompiler,
                                 const QList<FunctionDescription> &functions,
                                 const QString &outputPath,
                                 QWidget *parent = nullptr);

private slots:
    void processNext();
    void onDecompilationFinished(RzAnnotatedCode *code);
    void onCancelClicked();

private slots:
    void onDecompileTimeout();

private:
    void writeStringsSection();
    void finish(bool wasCancelled);

    Decompiler *decompiler;
    QList<FunctionDescription> functions;
    int currentIndex = 0;
    int skippedCount = 0;
    bool cancelled = false;

    QTimer *timeoutTimer = nullptr;

    QFile outputFile;
    QTextStream fileStream;

    QProgressBar *progressBar;
    QLabel *statusLabel;
    QPushButton *cancelButton;
};

#endif // BULKDECOMPILEDOCK_H
