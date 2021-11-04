import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Property Binding Demo")

    Rectangle{
        id:redRectId
        width: 50
        height:width*1.5
        color: "red"
    }

    Rectangle{
        id:blueRectId
        color: "blue"
        width: 100
        height: 100
        anchors.bottom: parent.bottom

        MouseArea{
            anchors.fill:parent
            onClicked: {
                redRectId.width=redRectId.width+10
            }
        }
    }

    Rectangle{
        id: greenRectId
        color: "green"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right

        MouseArea{
            anchors.fill:parent
            onClicked: {
                //redRectId.height=100   //This is static and results are different than expeced. Use Qt.binding()

                redRectId.height = Qt.binding(function(){
                    return redRectId.width*2;
                })
            }
        }
    }
}
