import QtQuick 1.1

Rectangle {
    id: delegate
    width: delegate.ListView.view.width
    height: 63
    color: "#414141"
    clip: true

    Rectangle {
        height: 43
        width: 43
        color: color
        anchors {
            left: parent.left
            leftMargin: 15
            verticalCenter: parent.verticalCenter
        }
    }

    Text {
        //id: name
        text: name
        color: "#f1f1f1"
        font {
            family: "Helvetica"
            pixelSize: 13
            bold: true
        }
        anchors {
            left: parent.left
            leftMargin: 63
            verticalCenter: parent.verticalCenter
        }
    }
    Text {
        text: statusText
        color: "#979797"
        width: 153
        elide: Text.ElideRight
        anchors {
            left: parent.left
            leftMargin: 63
            top: parent.top
            topMargin: 40
        }
    }

    StateIndicator {
        state: _state
        anchors {
            right: parent.right
            rightMargin: 10
            verticalCenter: parent.verticalCenter
        }
    }

    MouseArea {
        anchors.fill: delegate
        onClicked: {
            delegate.ListView.view.currentIndex = index
            window.currentChat = chat
        }
    }
}
