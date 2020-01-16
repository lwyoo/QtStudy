#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QQmlContext>
#include <QQuickView>

class MainWindow : public QQuickView {
    Q_OBJECT
public:
    MainWindow(QQuickView* parent = nullptr);
    virtual ~MainWindow() {}
    void loadQml(const QUrl source);

private:
    QUrl mUrl;
};

#endif // MAINWINDOW_H
