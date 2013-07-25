import QtQuick 1.1
import "content"

Rectangle {
    id: window
    width: 800
    height: 600
    color: "#f1f1f1"

    property int currentChat: 0
    property int contactListWidth: 220
    property int chatInputHeight: 60

    ContactList { id: contactList }
    ChatModel {id: chatModel }

    Row {
        Rectangle {
            width: contactListWidth
            height: window.height
            color: "#1c1c1c"

            ListView {
                focus: true
                id: contacts
                anchors.fill: parent
                model: contactList
                header: currentUserDelegate
                delegate: ContactsDelegate {}
                highlight: Rectangle {color: "#666666"}
                highlightMoveSpeed: 9999
            }
            ScrollBar {
                scrollArea: contacts
                height: contacts.height
                width: 8
                anchors.right: contacts.right
            }
        }

        Column {
            Rectangle {
                id: chatHeader
                width: window.width - contactListWidth
                height: 63

                Rectangle {
                    width: 43
                    height: 43
                    color: "black"
                    anchors {
                        left: parent.left
                        leftMargin: 10
                        verticalCenter: parent.verticalCenter
                    }
                }
                Text {
                    text: "Frosty Disco Thunder Winter Bear"
                    font { family: "Helvetica"; pixelSize: 13; weight: Font.Bold }
                    color: "#1c1c1c"
                    anchors {
                        left: parent.left
                        leftMargin: 63
                        verticalCenter: parent.verticalCenter
                    }
                }

                Text {
                    text: "Working on my new game: Door first"
                    font { family: "Helvetica"; pixelSize: 11 }
                    color: "#1c1c1c"
                    elide: Text.ElideRight
                    anchors {
                        left: parent.left
                        leftMargin: 63
                        top: parent.top
                        topMargin: 40
                    }
                }
                Rectangle {
                    id: camButton
                    color: "#6bc260"
                    width: 52
                    height: 33
                    radius: 5
                    anchors {
                        verticalCenter: parent.verticalCenter
                        right: parent.right
                        rightMargin: 10
                    }
                }

                Rectangle {
                    id: callButton
                    color: "#6bc260"
                    width: 52
                    height: 33
                    radius: 5
                    anchors {
                        verticalCenter: parent.verticalCenter
                        right: parent.right
                        rightMargin: 85
                    }
                }
            }

            ListView {
                id: chat
                width: window.width - contactListWidth
                height: window.height - chatInputHeight - chatHeader.height
                delegate: ChatDelegate {}
                model: chatModel
            }

            Rectangle {
                width: chat.width
                height: chatInputHeight

                Rectangle {
                    border {
                        color: "#c1c1c1"
                        width: 1
                    }
                    radius: 5
                    anchors.fill: parent
                    anchors.margins: 5

                    TextInput {
                        id: chatInput
                        anchors.fill: parent
                        anchors.margins: 5
                        focus: true
                        text: "hello world"
                        color: "#969696"
                        font: { weight: Font.Bold }
                        onAccepted: {
                            chatModel.append({who: "me", timeStamp: "12:24", message: chatInput.text })
                            chatInput.text = ""
                        }
                    }
                }
            }
        }
    }

    Component {
        id: currentUserDelegate
        Item {
            width: contacts.width; height: 63
            Rectangle {
                width: 43
                height: 43
                color: "black"
                anchors {
                    left: parent.left
                    leftMargin: 10
                    verticalCenter: parent.verticalCenter
                }
            }

            Text {
                text: "Chips Handon"
                font { family: "Helvetica"; pixelSize: 13; weight: Font.Bold }
                color: "#f1f1f1"
                anchors {
                    left: parent.left
                    leftMargin: 63
                    verticalCenter: parent.verticalCenter
                }
            }

            Text {
                text: "Trying to crack the code."
                font { family: "Helvetica"; pixelSize: 11 }
                color: "#979797"
                elide: Text.ElideRight
                anchors {
                    left: parent.left
                    leftMargin: 63
                    top: parent.top
                    topMargin: 40
                }
            }

            StateIndicator {
                state: "available"
                anchors {
                    right: parent.right
                    rightMargin: 10
                    verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                width: parent.width
                height: 1
                color: "#666666"
                anchors.bottom: parent.bottom
            }
        }
    }

    ScrollBar {
        scrollArea: chat
        height: chat.height
        width: 8
        anchors.right: window.right
        anchors.top: window.top
        anchors.topMargin: chatHeader.height
    }

    Rectangle {
        x: 220
        height: window.height
        width: 1
        color: "#cccccc"
    }
}

