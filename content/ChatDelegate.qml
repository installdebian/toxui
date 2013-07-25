import QtQuick 1.1

Item {
    id: delegate
    width: delegate.ListView.view.width
    height: _message.height + 20 + (attachmentList.count * 90)

    Text {
        id: _who
        text: who
        color: who == "me" ? "#000000" : "#1c1c1c"
        font { weight: Font.Bold; pixelSize: 11}
        anchors {
            left: parent.left
            leftMargin: 5
            top: parent.top
            topMargin: 5
        }
    }

    Text {
        id: _message
        text: message
        width: parent.width - 100
        wrapMode: Text.WordWrap
        smooth: true
        font: { family: "Helvetica"; pixelSize: 11 }
        anchors {
            left: parent.left
            leftMargin: 100
            right: parent.right
            rightMargin: 100
            top: parent.top
            topMargin: 5
        }
    }

    Text {
        id: _timeStamp
        text: timeStamp
        color: "#414141"
        font {italic: true; pixelSize: 11}
        anchors {
            right: parent.right
            rightMargin: 9
            top: parent.top
            topMargin: 5
        }
    }

    ListView {
        id: attachmentList
        anchors {
            left: parent.left
            leftMargin: 100
            top: parent.top
            topMargin: _message.height + 20
        }
        delegate: AttachmentDelegate {}
        model: attachments
    }

    Rectangle {
        width: parent.width
        height: 1
        color: "#ccc"
        anchors.bottom: parent.bottom
    }
}
