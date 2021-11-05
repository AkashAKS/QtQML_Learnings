import QtQuick 2.14

Item {

    property alias rectColor: notifierRectId.color
    width: notifierRectId.width
    height: notifierRectId.height
    property int count: 0
    signal notify(string count)  //Declare Signal
    property Receiver target: null

    //Method2: Using the onTargetChanged
    onTargetChanged: {
        notify.connect(target.receiveInfo)
    }

    Rectangle{
        id:notifierRectId
        width: 200
        height: 300
        color:  "red"

        Text{
            id: displayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: count
        }

        MouseArea{
            anchors.fill:parent
            onClicked:{
                count++
                notify(count)
            }
        }
    }
}
