import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        MButton{
            buttonText : "Button1"

            onButtonClicked: {
                console.log("Clicked on Button 1 from main file")
            }

        }

        MButton{
            buttonText: "Button2"
            onButtonClicked: {
                console.log("Clicked on Button 2 from main file")
            }

        }
    }
}
