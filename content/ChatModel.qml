import QtQuick 1.1

ListModel {
    id: chatModel

    ListElement {who: "me"; timeStamp: "12:00"; message: "loren ipsum dolor sit amet loren ipsum dolor sit amet loren ipsum dolor sit amet loren ipsum dolor sit amet"}
    ListElement {who: "them"; timeStamp: "12:01"; message: "loren ipsum dolor sit amet"}
    ListElement {who: "me"; timeStamp: "12:05"; message: "loren ipsum dolor sit amet"}
    ListElement {who: "them"; timeStamp: "12:18"; message: "loren ipsum dolor sit amet"}
    ListElement {
        who: "me"
        timeStamp: "12:14"
        message: "loren ipsum dolor sit amet"
        attachments: [ListElement {
            filename: "DSC_01377.jpg"
            description: "2048x1152"
            filesize: "626.KB"
            icon: "images/attch_thumb.jpg"
        }]
    }
    ListElement {who: "them"; timeStamp: "12:25"; message: "loren ipsum dolor sit amet"}
}
