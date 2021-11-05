import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Signals and Slots Demo")

    property int increament: 50

    Rectangle{
        id:rectangleId
        width: 200+increament
        height: 300
        color: "red"

        signal greet(string message) //Declare a signal

        onGreet: {
            console.log("onGreet: greet signal emitted")
        }

        onWidthChanged: {

        }

        function myGreeting(mMessage){
            console.log(" myGreeting called . The parameter is: "+mMessage)
            increament+=50;
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectangleId.greet("Hello there") //Fire the signal
            }
        }

        Component.onCompleted: {
            rectangleId.greet.connect(rectangleId.myGreeting)
        }
    }
}
