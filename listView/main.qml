import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")



    ListView {
        id: myListView

        width: 100

        height: 400

        model: MyListModel{}

        delegate: Text {
            text: name + " : " + note
        }

    }
}
