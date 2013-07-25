import QtQuick 1.1

Rectangle {
    id: delegate
    width: 200
    height: 80

    color: "#414141"
    radius: 5

    anchors.margins: 10

    Rectangle {
        height: 50
        width: 90
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 10
        }
        border {
            color: "#1c1c1c"
            width: 4
        }
        Image {
            asynchronous: true
            source: icon
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        anchors {
            top: parent.top
            topMargin: 10

            left: parent.left
            leftMargin: 110
        }
        Column {
            Text {
                text: "File Transfer:"
                color: "#ffffff"
                font: {bold: true; weight: Font.Bold}
            }
            Text { text: filename; color: "#ffffff" }
            Text { text: description; color: "#ffffff" }
            Text { text: filesize; color: "#ffffff" }
        }
    }

    MouseArea {
        anchors.fill: delegate
        onClicked: {
            delegate.ListView.view.currentIndex = index
            console.log(index)
        }
    }
}
