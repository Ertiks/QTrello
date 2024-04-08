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
                    placeholderText: qsTr("Email")
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
            id: confirm_password_input
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "#575151"
            radius: 12
            RowLayout{
                id: textField_confirm_password_layout
                anchors.fill: parent
                TextField {
                    id: textField_confirm_password
                    color: "#ffffff"
                    placeholderTextColor: "#ffffff"
                    placeholderText: qsTr("Confirm passsword")
                    echoMode: TextInput.Password
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    Layout.preferredWidth: confirm_password_input.width / 2
                    Layout.preferredHeight: confirm_password_input.height / 2
                    scale: 2
                    font.weight: Font.Normal
                    font.family: "Raleway"
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignHCenter
                }
            }
        }
        Rectangle {
            id: dumb_infos_input
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "transparent"

            RowLayout{
                id: dumb_infos_layout
                anchors.fill: parent
                spacing: 32

                Rectangle{
                    id: feet_size_input
                    Layout.preferredWidth: dumb_infos_input.width / 2 - dumb_infos_layout.spacing / 2
                    Layout.preferredHeight: 100
                    Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                    color: "#575151"
                    radius: 12

                    RowLayout{
                        id:feet_size_layout
                        anchors.fill: parent

                        TextField{
                           id: feet_size_textField
                           color: "#ffffff"
                           placeholderTextColor: "#ffffff"
                           placeholderText: qsTr("Feet size")
                           horizontalAlignment: Text.AlignLeft
                           verticalAlignment: Text.AlignVCenter
                           Layout.preferredWidth: feet_size_input.width / 2
                           Layout.preferredHeight: feet_size_input.height / 2
                           scale: 2
                           font.weight: Font.Normal
                           font.family: "Raleway"
                           font.pixelSize: 18
                           Layout.alignment: Qt.AlignHCenter | Qt.AlignHCenter
                        }
                    }
                }

                Rectangle{
                    id: favorite_food_input
                    Layout.preferredWidth: dumb_infos_input.width / 2 - dumb_infos_layout.spacing / 2
                    Layout.preferredHeight: 100
                    Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                    color: "#575151"
                    radius: 12

                    RowLayout{
                        id: favorite_food_layout
                        anchors.fill: parent

                        TextField{
                            id: favorite_food_textField
                            color: "#ffffff"
                            placeholderTextColor: "#ffffff"
                            placeholderText: qsTr("Favorite food")
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            Layout.preferredWidth: favorite_food_input.width / 2
                            Layout.preferredHeight: favorite_food_input.height / 2
                            scale: 2
                            font.weight: Font.Normal
                            font.family: "Raleway"
                            font.pixelSize: 18
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignHCenter
                        }
                    }
                }
            }
        }
        Rectangle {
            id: privacy_input
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "transparent"

            RowLayout{
                id: privacy_layout
                anchors.fill: parent
                CheckBox{
                    id: privacy_checkBox
                    Layout.preferredWidth: privacy_input.width / 2
                    Layout.preferredHeight: privacy_input.height / 2
                    scale: 2
                    text: qsTr("I agree with privacy and policy")
                    font.weight: Font.Normal
                    font.family: "Raleway"
                    font.pixelSize: 18
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignHCenter
                }
            }
        }
        Rectangle{
            id: register_input
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "#fdb062"
            radius: 12
            // layer.effect: DropShadowEffect{
            //     id: register_button_shadow
            // }

            RowLayout{
                id: register_layout
                anchors.fill: parent

                Button{
                    id: register_button
                    flat: true
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    RowLayout{
                        id: register_label_layout
                        anchors.fill: parent

                        Text {
                            id: register_button_label
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

