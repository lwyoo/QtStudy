import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // 동일한 레벨에서  각 화면에 대한 order 값은 선언된 순서대로 표출됨
    // 각 qml type 의 z 값을 설정 하여 변경 가능
    // z default value : 0

    Rectangle {
        width: 300
        height: 300
        color: "red"
    }

    Rectangle {
        width: 200
        height: 200
        color: "blue"
    }

    Rectangle {
        width: 100
        height: 100
        color: "yellow"
    }
}
