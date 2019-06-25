import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // PauseAnimation - Provides a pause for an animation

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"

        SequentialAnimation {
            running: true
            NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }

            PauseAnimation {
                duration: 2000
            }
            NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
        }
    }


}
