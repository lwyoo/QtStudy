import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // NumberAnimation - Animates changes in qreal-type values

    Rectangle {
        width: 100; height: 100
        color: "red"

        NumberAnimation on x {
            to: 500;
            duration: 1000
        }
    }
}
