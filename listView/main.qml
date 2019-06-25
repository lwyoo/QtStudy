import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")



//    ListView {
//        id: myListView

//        width: 100

//        height: 400

//        model: MyListModel{}

//        delegate:contactDelegate

//        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }

//        focus: true
//    }

//    Component {
//           id: contactDelegate
//           Item {
//               width: 180; height: 40
//               Column {
//                   Text { text: '<b>Name:</b> ' + name }
//                   Text { text: '<b>Number:</b> ' + note }
//               }
//           }
//       }
    ListView {
        width: 240; height: 320
        model: MyListModel {}

        delegate: Rectangle {
            width: 100; height: 30
            border.width: 1
            color: "lightsteelblue"
            Text {
                anchors.centerIn: parent
                text: name
            }
        }

        add: Transition {
            NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration: 400 }
            NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 400 }
        }

//        displaced: Transition {
//            NumberAnimation { properties: "x,y"; duration: 400; easing.type: Easing.OutBounce }
//        }

        focus: true
        Keys.onSpacePressed: model.insert(0, { "name": "Item " + model.count })
    }

}
