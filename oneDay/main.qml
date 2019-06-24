import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //자식 qml type 의 좌표 정보는 부모의 좌표에서 상대 좌표로 표시됨


    Item {
        x: 0
        y: 0
        width: parent.width
        height: parent.height

        Rectangle {
            width: 100
            height: 100
            color: "red"
            Text {
                text: "부모 좌표  x: 0 , y: 0
자식의 좌표 x: 0 , y: 0 "
            }
        }
    }

    Item {
        x: 0
        y: 300
        width: parent.width
        height: parent.height

        Rectangle {
            width: 100
            height: 100
            color: "green"
            Text {
                text: "부모 좌표  x: 0 , y: 300\n자식의 좌표 x: 300 , y: 0 "
            }
        }
    }


    Item {
        x: 0
        y: 300
        width: parent.width
        height: parent.height

        Rectangle {
            x: 300
            width: 100
            height: 100
            color: "yellow"
            Text {
                text: "부모 좌표  x: 0 , y: 300\n자식의 좌표 x: 0 , y: 0 "
            }
        }
    }
}
