import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // RotationAnimation - 회전 값의 변화를 애니메이션화합니다.

    Rectangle {
        id: rec1
        width: 100; height: 100
        color: "red"

        RotationAnimation {
            target: rec1
            from: 0
            to: 360
            running: true
            duration: 1000
        }
    }
}
