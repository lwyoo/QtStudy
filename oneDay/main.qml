import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //각각의 qml type 간 상대 위치 조정

    Rectangle {
        id: rec1
        width: 100
        height: 100
        color: "red"
    }

    Rectangle {
        id: rec2
        width: 100
        height: 100
        color: "green"
        anchors.left: rec1.right
        anchors.leftMargin: 100

    }

}
