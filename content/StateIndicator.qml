import QtQuick 1.1

Image {
    id: container
    source: "images/available.png"

    states: [
        State {
            name: "available"
            PropertyChanges {
                target: container
                source: "images/available.png"
            }
        },
        State {
            name: "unavailable"
            PropertyChanges {
                target: container
                source: "images/unavailable.png"
            }
        },
        State {
            name: "busy"
            PropertyChanges {
                target: container
                source: "images/busy.png"
            }
        }
    ]
}
