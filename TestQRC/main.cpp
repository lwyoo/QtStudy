#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QResource>

int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    /*
     * 생성한 rcc 파일을 등록 ()
     * qrc 파일을 rcc파일로 변경
     * rcc -binary qml.qrc -o qml.rcc
     * 응용 프로그램에서 리소스 등록
     * QResource :: registerResource( "/home/ldg/QtExample/study/QtStudy/TestQRC/qml.rcc" );
      */

    QResource::registerResource(qApp->applicationDirPath() + "/resource.rcc");

    //이진 바이너리로된 rcc파일에서 qrc의 파일 읽기
    const QUrl url(QStringLiteral("qrc:/MyQRC/main.qml"));
    engine.load(url);

    return app.exec();
}
