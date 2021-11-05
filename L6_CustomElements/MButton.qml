import QtQuick 2.12

Item {                                           /*For exposing custom element outside use "Item"*/
    id : rootId
    property alias buttonText: buttonTextId.text /*For exposing properties outside use alias*/
    width: containerRectId.width                 /*For proper layout use width of container outside*/
    height: containerRectId.height               /*For proper layout use height of container outside*/
    signal buttonClicked                         /*For exposing signal outside*/


    Rectangle {

        id : containerRectId
        width: buttonTextId.implicitWidth + 20
        height: buttonTextId.implicitHeight + 20
        color: "red"
        border { color: "blue"; width : 3}

        Text {
            id : buttonTextId
            text : "Button"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                //console.log("Clicked ON :"+ buttonTextId.text)
                rootId.buttonClicked()
            }
        }
    }

}


