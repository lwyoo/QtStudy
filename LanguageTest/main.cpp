//#include <QGuiApplication>
//#include <QQmlApplicationEngine>
//#include "qmltranslator.h"

//int main(int argc, char* argv[]) {
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

//    QGuiApplication app(argc, argv);

//    // Create an object to work with translations ...
//    QmlTranslator qmlTranslator;

//    QQmlApplicationEngine engine;
//    const QUrl url(QStringLiteral("qrc:/main.qml"));
//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app,
//                     [url](QObject* obj, const QUrl& objUrl) {
//                         if (!obj && url == objUrl) QCoreApplication::exit(-1);
//                     },
//                     Qt::QueuedConnection);

//    engine.rootContext().setContextProperty("qmlTranslator", &qmlTranslator);

//    engine.load(url);

//    return app.exec();
//}
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "qmltranslator.h"

int main(int argc, char* argv[]) {
    QApplication app(argc, argv);

    // Create an object to work with translations ...
    QmlTranslator qmlTranslator;

    QQmlApplicationEngine engine;
    // and register it as a context in Qml layer
    engine.rootContext()->setContextProperty("qmlTranslator", &qmlTranslator);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
