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
        width: 180; height: 200

        Component {
            id: contactsDelegate
            Rectangle {
                id: wrapper
                width: 180
                height: contactInfo.height
                color: ListView.isCurrentItem ? "black" : "red"
                Text {
                    id: contactInfo
                    text: name + ": " + note
                    color: wrapper.ListView.isCurrentItem ? "red" : "black"
                }
            }
        }

        model: MyListModel {}
        delegate: contactsDelegate
        focus: true
    }


}
