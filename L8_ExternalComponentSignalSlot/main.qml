import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("External Components with Signals and Slots")

    Notifier{
        id: notifierId
        rectColor: "yellowgreen"
        target:receiverId
    }

    Receiver{
        id: receiverId
        rectColor: "dodgerblue"
        anchors.right: parent.right
    }

//    Method1: Using the onCompleted
//    Component.onCompleted: {
//        notifierId.notify.connect(receiverId.receiveInfo)  /*connect signal to slot*/
//    }
}
