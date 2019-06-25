import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // SequentialAnimation - 애니메이션을 순차적으로 실행할 수 있습니다

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"

        SequentialAnimation {
            running: true
            NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
            NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
        }
    }
}
