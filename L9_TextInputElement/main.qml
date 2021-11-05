import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("TextInput Element Demo")

    Row{
        x:10
        y:10
        spacing: 10

        Rectangle{
            id:firstNameRectId
            width:firstNameLabelId.implicitWidth+20
            height:firstNameLabelId.implicitHeight+20
            color: "beige"

            Text{
                id: firstNameLabelId
                anchors.centerIn: parent
                text: "FirstName: "
            }
        }

        Rectangle{
            id:firstNameTextRectId
            color: "beige"
            width:firstNameTextId.width+20
            height: firstNameTextId.height+20

            TextInput{
                id:firstNameTextId
                anchors.centerIn: parent
                focus:true
                text:"Type in your first name"
                onEditingFinished: {
                    console.log("The first name changed to : "+text)
                }
            }
        }
    }

    Row{
        x:10
        y:60
        spacing: 10

        Rectangle{
            id:lastNameRectId
            width:lastNameLabelId.implicitWidth+20
            height:lastNameLabelId.implicitHeight+20
            color: "beige"

            Text{
                id: lastNameLabelId
                anchors.centerIn: parent
                text: "LastName: "
            }
        }

        Rectangle{
            id:lastNameTextRectId
            color: "beige"
            width:lastNameTextId.width+20
            height: lastNameTextId.height+20

            TextInput{
                id:lastNameTextId
                anchors.centerIn: parent
                focus:true
                text:"Type in your Last name"
                onEditingFinished: {
                    console.log("The first name changed to : "+text)
                }
            }
        }
    }
}
