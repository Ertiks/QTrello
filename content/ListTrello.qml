import QtQuick 6.2

Rectangle{

    Rectangle{
        id : listTitle
        Text {
            id: listTitleText
            text: qsTr("text")
            font.weight: Font.Normal
            font.family: "Raleway"
            font.pixelSize: 36
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
        anchors.top: parent.bottom
        anchors.left: parent.right
        anchors.right: parent.right

    }
}
