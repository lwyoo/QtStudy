import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 100
    height: 170
    title: qsTr("Hello World")

    property bool isFront: true

    Rectangle {
        width: parent.width
        height: parent.height
        border.color: "black"
        border.width: 3
        radius: 10

        Rectangle {
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10

            color: "blue"

            radius: 10
            visible: isFront
        }
        Text {
            text: "1"
            anchors.centerIn: parent
            font.pixelSize: 30
            visible: !isFront
        }

        MouseArea {
            anchors.fill: parent
            onClicked:  {
                isFront = !isFront
            }
        }

    }
}
