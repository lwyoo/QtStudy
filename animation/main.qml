import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // ParallelAnimation - 애니메이션을 병렬로 실행할 수 있습니다.

    Item {
        id: container
        width: 200; height: 200

        Rectangle {
            id: myRect
            width: 100; height: 100
            color: "red"
        }

        states: State {
            name: "reanchored"
            AnchorChanges { target: myRect; anchors.right: container.right }
        }

        transitions: Transition {
            // smoothly reanchor myRect and move into new position
            AnchorAnimation { duration: 1000 }
        }

        Component.onCompleted: container.state = "reanchored"
    }

}
