import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Component {
        id: highlight
        Rectangle {
            width: 180; height: 40
            color: "lightsteelblue"; radius: 5
            y: list.currentItem.y
            Behavior on y {
                SpringAnimation {
                    spring: 3
                    damping: 0.2
                }
            }
        }
    }

    ListView {
        id: list
        width: 180; height: 200
        model: MyListModel{}
        delegate: Text { text: name + "\n" + note }

        highlight: highlight
        highlightFollowsCurrentItem: false
        focus: true
    }

}
