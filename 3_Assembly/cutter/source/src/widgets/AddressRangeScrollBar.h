#ifndef ADDRESS_RANGE_SCROLLBAR_H
#define ADDRESS_RANGE_SCROLLBAR_H

#include <QScrollBar>
#include "CutterCommon.h"

class AddressRangeScrollBar : public QScrollBar
{
    Q_OBJECT
public:
    AddressRangeScrollBar(QWidget *parent = nullptr);
    void refreshRange();
    void setPosition(RVA address);
    RVA address();

    RVA clampAddressToRange(RVA address);
    RVA rangeSize();

    /**
     * @brief Reposts a wheel event to this scrollbar to synchronize its visual state
     *
     * This allows external widgets (like side panels or text edits) to notify the
     * scrollbar of wheel activity. It is needed for systems which have the option to show the
     * scrollbar only while scrolling (when using Cutter's "Native" theme)
     *
     * @param event The original QWheelEvent to be processed by the scrollbar
     */
    void repostWheelEvent(QWheelEvent *event);
signals:
    void hideScrollBar();
    void showScrollBar();
    void scrolled(int lines);

protected:
    void wheelEvent(QWheelEvent *event) override;

private:
    RVA beginOffset = 0, endOffset = RVA_INVALID;
    int accumScrollWheelDeltaY = 0;
};

#endif // ADDRESS_RANGE_SCROLLBAR_H
