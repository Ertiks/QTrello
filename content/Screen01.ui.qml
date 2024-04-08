/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import DEV_600_Trello
import QtQuick.Layouts 1.15
// import QtGraphicalEffects 1.12
// import QtQuick.Studio.Effects

Rectangle {
    id: login_page
    width: Window.width
    height: Window.height

    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#fdb062"
        }

        GradientStop {
            position: 0.30702
            color: "#e7b4b3"
        }

        GradientStop {
            position: 0.71491
            color: "#e7b4b3"
        }

        GradientStop {
            position: 1
            color: "#3f3b3a"
        }

        orientation: Gradient.Vertical
    }

    Rectangle {
        id: logo
        width: parent.width * 0.6
        height: width * 0.7
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * 0.2
        anchors.topMargin: parent.height * 0.15
        anchors.horizontalCenter: parent.horizontalCenter
        color: "transparent"

        ColumnLayout {
            id: logo_layout
            anchors.fill: parent
            spacing: 16

            Rectangle {
                id: logo_image
                color: "#fdb062"
                Layout.preferredWidth: logo.width * 0.4
                Layout.preferredHeight: logo.width * 0.4
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                radius: 30
                RowLayout{
                    id: logo_image_layout
                    anchors.fill: parent
                    anchors.leftMargin: 40
                    anchors.rightMargin: 40
                    anchors.topMargin: 40
                    anchors.bottomMargin: 40
                    Image {
                        id: image_1
                        source: "assets/image_1.png"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }
                }


            }
            Text {
                id: title
                text: qsTr("WELCOME ON TROLLE")
                font.pixelSize: 65
                font.weight: Font.DemiBold
                font.family: "Raleway"
                Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
            }

        }
    }

    Rectangle {
        id: body
        width: parent.width * 0.6
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * 0.2
        anchors.topMargin: parent.height * 0.4
        anchors.horizontalCenter: parent.horizontalCenter

        SignUpForm{
            id: sign_up_form
            visible: true
        }

        SignInForm{
            id: sign_in_form
            visible: false
        }
    }

    Rectangle {
        id: footer
        width: parent.width * 0.7
        height: parent.height * 0.05
        color: "transparent"
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: parent.width * 0.15
        anchors.bottomMargin: parent.height * 0.1

        RowLayout {
            id: footer_layout
            anchors.fill: parent
            spacing: 45
            Text {
                id: already_have_an_account_label
                color: "#ffffff"
                text: qsTr("Already have an account?")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.weight: Font.Normal
                font.family: "Raleway"
            }
            Button {
                id: sign_in_button
                Layout.preferredWidth: footer.width / 4
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
                checkable: true

                Text {
                    id: sign_in_button_label
                    color: "#fdb062"
                    text: qsTr("Login")
                    anchors.verticalCenter: parent.verticalCenter
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.fillWidth: true
                    font.weight: Font.Normal
                    font.family: "Raleway"
                }
            }
        }
    }

    // Button {
    //     id: button
    //     text: qsTr("Press me")
    //     anchors.verticalCenter: parent.verticalCenter
    //     checkable: true
    //     anchors.horizontalCenter: parent.horizontalCenter

    //     Connections {
    //         target: button
    //         onClicked: animation.start()
    //     }
    // }

    // Text {
    //     id: label
    //     text: qsTr("Hello DEV_600_Trello")
    //     anchors.top: button.bottom
    //     font.family: Constants.font.family
    //     anchors.topMargin: 45
    //     anchors.horizontalCenter: parent.horizontalCenter

    //     SequentialAnimation {
    //         id: animation

    //         ColorAnimation {
    //             id: colorAnimation1
    //             target: login_page
    //             property: "color"
    //             to: "#2294c6"
    //             from: Constants.backgroundColor
    //         }

    //         ColorAnimation {
    //             id: colorAnimation2
    //             target: login_page
    //             property: "color"
    //             to: Constants.backgroundColor
    //             from: "#2294c6"
    //         }
    //     }
    // }
    states: [
        State {
            name: "signIn_signUp_switch"
            when: sign_in_button.checked

            PropertyChanges {
                target: sign_in_button_label
                text: qsTr("Sign up")
            }
            PropertyChanges {
                target: already_have_an_account_label
                text: qsTr("Don't have an account?")
            }
            PropertyChanges {
                target: sign_up_form
                visible: false
            }
            PropertyChanges {
                target: sign_in_form
                visible: true
            }
        }
    ]
}
