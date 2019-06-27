import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property bool isEnable: false

    property int minValue: 0
    property int maxValue: 10
    property int sliderBarStep: 10
    property bool enableStep: true
    property bool enableAnimation: true



    Item {
        id: sliderBarItem
        x: 100
        y: 100

        Rectangle {

            id: sliderBarGaugeBG
            width: 500
            height: 5
            color: (isEnable === true ) ? "gray" : "skygray"
            MouseArea {
                id:sliderBarGaugeBGMouseArea
                width: parent.width
                height: 50
                onClicked:  {
                    console.log("mouseX : "+ mouseX)
                    if (true === enableStep) {
                        moveIconWithStep(mouseX)
                    } else {

                        moveIcon(mouseX)
                    }
                }
            }
        }


        Rectangle {
            id: sliderBarGauge
            color: isEnable?"red":"greay"
            height: sliderBarGaugeBG.height
            y: sliderBarGaugeBG.y
            anchors.left: sliderBarGaugeBG.left
            anchors.right: sliderBarIcon.right
            anchors.rightMargin: sliderBarIcon.width/2
        }

        Repeater {
            model: sliderBarStep

            Rectangle {
                y: -10
                width: 1
                height: 10
                x:(sliderBarGaugeBG.width/sliderBarStep) * (index+1)
                color: "black"
                Component.onCompleted:  {
                    console.log("index :" , index , "position : " , (sliderBarGaugeBG.width/sliderBarStep * index))
                }
            }

        }

        Rectangle {
            id: sliderBarIcon
            width: 30
            height: 30
            radius: 100
            color: isEnable?"skyblue":"gray"
            anchors.verticalCenter: sliderBarGaugeBG.verticalCenter
            MouseArea {
                //drag
                anchors.fill: parent
                drag.target: sliderBarIcon
                drag.axis: Drag.XAxis
                drag.minimumX: 0
                drag.maximumX: sliderBarGaugeBGMouseArea.width - sliderBarIcon.width

            }


            Behavior on x {
                NumberAnimation { duration: enableAnimation? 1000 :0}
            }


        }
    }

    Rectangle {
        id: sliderBarState
        Rectangle {
            y:300
            width: 100
            height: 100
            color: "red"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    isEnable = !isEnable
                }
            }
        }
    }

    function moveIcon (posX) {
        if (isEnable) {
            var posIcon = posX - sliderBarIcon.width/2
            sliderBarIcon.x = posIcon
        }
    }

    function moveIconWithStep (posX) {

        var updatePosX;

        var stopWidth = (sliderBarGaugeBG.width/sliderBarStep)

        updatePosX= findValue (posX, stopWidth)

        console.log("input posX : ", posX)
        console.log("update posX : ", updatePosX)

        sliderBarIcon.x = updatePosX
    }

    function findValue(currentPosX, stepWidth) {
        var rounds = currentPosX%stepWidth
        console.log("rounds : " , rounds)
        var updatePosX

        if (rounds > stepWidth/2) {
            //반올림
            console.log()
            updatePosX = Math.ceil(currentPosX/stepWidth) * stepWidth
        } else {
            updatePosX = Math.floor(currentPosX/stepWidth)* stepWidth

        }
        return updatePosX - sliderBarIcon.width/2
    }





}
