import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property string textToShow: "hello"

    Row{
        id:row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle{
            id: redRectId
            width: 150
            height: 150
            color: "red"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("Clicked on the red rectangle")
                    textToShow="red"
                }
            }
        }

        Rectangle{
            id: greenRectId
            width: 150
            height: 150
            color: "green"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("Clicked on the green rectangle")
                    textToShow="green"
                }
            }
        }

        Rectangle{
            id: blueRectId
            width: 150
            height: 150
            color: "blue"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("Clicked on the blue rectangle")
                    textToShow="blue"
                }
            }
        }

        Rectangle{
            id: textRectId
            width: 150
            height: 150
            color: "dodgerblue"
            radius: 100
            Text {
                id:textId
                anchors.centerIn: parent
                text: textToShow
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("Clicked on the circle")
                    textId.text = "loop" //To break the property binding of textToShow
                }
            }
        }

    }
}
