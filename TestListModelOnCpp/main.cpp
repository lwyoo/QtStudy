#include "MainWindow.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
int main(int argc, char* argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    MainWindow* mainWindow = new MainWindow();
    mainWindow->loadQml(url);

    return app.exec();
}
