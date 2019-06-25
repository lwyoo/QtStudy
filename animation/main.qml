import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // PropertyAction 은 애니메이션 중에 즉각적인 속성 변경을 지정하는 데 사용

    //    Item {
    //        width: 400; height: 400

    //        Rectangle {
    //            id: rect
    //            width: 200; height: 100
    //            color: "red"

    //            states: State {
    //                name: "rotated"
    //                PropertyChanges { target: rect; rotation: 180; transformOrigin: Item.BottomRight }
    //            }

    //            transitions: Transition {
    //                SequentialAnimation {
    //                       PropertyAction { target: rect; property: "transformOrigin" }
    //                       RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
    //                   }
    //            }

    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: rect.state = "rotated"
    //            }
    //        }
    //    }

    Rectangle {
        id: img
        width: 200; height: 100
        color: "red"
        SequentialAnimation {
            running: true
            PropertyAction { target: img; property: "opacity"; value: .1 }
            NumberAnimation { target: img; property: "width"; to: 300; duration: 3000 }
            PropertyAction { target: img; property: "opacity"; value: 1 }
        }
    }
}
