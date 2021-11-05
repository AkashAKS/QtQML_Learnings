import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("FocusScope Demo")

    Column {
        MButton{
            focus: true
        }

        MButton{
            color: "green"
        }

    }
}
