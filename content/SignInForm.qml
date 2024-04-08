import QtQuick 6.2
import QtQuick.Controls 6.2
import DEV_600_Trello
import QtQuick.Layouts 1.15


Rectangle{
    width: parent.width * 0.6
    color: "transparent"
    anchors.fill: parent

    ColumnLayout {
        id: form_layout
        anchors.fill: parent
        spacing: 32

        Rectangle {
            id: email_input
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "#575151"
            radius: 12
            RowLayout{
                id: textField_email_layout
                anchors.fill: parent
                TextField {
                    id: textField_email
                    color: "#ffffff"
                    placeholderTextColor: "#ffffff"
                    placeholderText: qsTr("Username")
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    Layout.preferredWidth: email_input.width / 2
                    Layout.preferredHeight: email_input.height / 2
                    scale: 2
                    font.weight: Font.Normal
                    font.family: "Raleway"
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignHCenter
                }
            }
        }
        Rectangle {
            id: password_input
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "#575151"
            radius: 12
            RowLayout{
                id: textField_password_layout
                anchors.fill: parent
                TextField {
                    id: textField_password
                    color: "#ffffff"
                    placeholderTextColor: "#ffffff"
                    placeholderText: qsTr("Password")
                    echoMode: TextInput.Password
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    Layout.preferredWidth: password_input.width / 2
                    Layout.preferredHeight: password_input.height / 2
                    scale: 2
                    font.weight: Font.Normal
                    font.family: "Raleway"
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignHCenter
                }
            }
        }
        Rectangle {
            id: stay_connected_input
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "transparent"

            RowLayout{
                id: stay_connected_layout
                anchors.fill: parent
                spacing: 6
                CheckBox{
                    id: stay_connected_checkBox
                    Layout.preferredWidth: stay_connected_input.width / 4
                    Layout.preferredHeight: stay_connected_input.height / 2
                    scale: 2
                    text: qsTr("Remember me")
                    font.weight: Font.Normal
                    font.family: "Raleway"
                    font.pixelSize: 18
                    transformOrigin: Item.Left
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                }
                Button{
                    id: forget_password_button
                    Layout.preferredWidth: stay_connected_input.width / 2 - stay_connected_layout.spacing
                    Layout.fillHeight: true
                    transformOrigin: Item.Left
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                    flat: true

                    Text {
                        id: forget_password_button_label
                        color: "#fdb062"
                        text: qsTr("Forgot password?")
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        font.weight: Font.Normal
                        font.family: "Raleway"
                    }
                }
            }
        }
        Rectangle{
            id: login_input
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "#fdb062"
            radius: 12
            // layer.effect: DropShadowEffect{
            //     id: login_button_shadow
            // }

            RowLayout{
                id: login_layout
                anchors.fill: parent

                Button{
                    id: login_button
                    flat: true
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    RowLayout{
                        id: login_label_layout
                        anchors.fill: parent

                        Text {
                            id: login_button_label
                            text: qsTr("Register")
                            font.weight: Font.Normal
                            font.family: "Raleway"
                            font.pixelSize: 36
                            color: "#ffffff"
                            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                        }
                    }
                }
            }
        }
    }
}

