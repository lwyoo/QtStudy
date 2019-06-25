import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // ColorAnimation - Animates changes in color values

    Rectangle {
        width: 100; height: 100
        color: "red"

        ColorAnimation on color {
            to: "yellow"
            duration: 1000
        }
    }
}
