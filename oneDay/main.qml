import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //qml signal & slot

    signal mySignal

    signal mySignal2(int arg)

    onMySignal: {
        console.log("onMySignal")
    }

    onMySignal2: {
        console.log("onMySignal2", arg)
    }

    Rectangle {
        id: rec1
        width: 100
        height: 100
        color: "red"
        anchors.centerIn: parent
    }

    Rectangle {
        id: rec2
        width: 100
        height: 100
        color: "green"
        anchors.left: rec1.right
        anchors.leftMargin: 100

        MouseArea {
            anchors.fill: parent
            onClicked: {
                mySignal()
                mySignal2(100)
            }
        }

    }


}
