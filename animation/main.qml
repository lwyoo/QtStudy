import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // SmoothedAnimation - 속성이 값을 매끄럽게 추적 할 수있게합니다.

    Rectangle {
        width: 800; height: 600
        color: "blue"

        Rectangle {
            width: 60; height: 60
            x: rect1.x - 5; y: rect1.y - 5
            color: "green"

            Behavior on x { SmoothedAnimation { velocity: 200 } }
            Behavior on y { SmoothedAnimation { velocity: 200 } }
        }

        Rectangle {
            id: rect1
            width: 50; height: 50
            color: "red"
        }

        focus: true
        Keys.onRightPressed: rect1.x = rect1.x + 100
        Keys.onLeftPressed: rect1.x = rect1.x - 100
        Keys.onUpPressed: rect1.y = rect1.y - 100
        Keys.onDownPressed: rect1.y = rect1.y + 100

        MouseArea {
            id: myMA
            anchors.fill: parent
            onClicked:  {
                rect1.x = myMA.mouseX
                rect1.y = myMA.mouseY
            }
        }
    }

}
