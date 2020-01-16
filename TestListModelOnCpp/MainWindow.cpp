#include "MainWindow.h"

MainWindow::MainWindow(QQuickView* parent)
    : QQuickView(parent)
{
    rootContext()->setContextProperty("MainWindow", this);
}

void MainWindow::loadQml(const QUrl source)
{
    mUrl = source;
    setSource(source);
}
