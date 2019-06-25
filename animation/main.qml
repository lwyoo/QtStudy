import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // PropertyAnimation - 속성 값의 변경 사항을 애니메이션화합니다.

    Rectangle{
        id: theObject
        width: 50
        height: 50
        color: "red"
    }

    MouseArea {
        anchors.fill: theObject
        onClicked: PropertyAnimation {
            target: theObject;
            property: "opacity";
            to: 0
        }
    }
}
