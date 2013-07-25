import QtQuick 1.1

ListModel {
    id: contactList

    ListElement {name: "Dev Thinkank"; statusText: "4 users in chat"; color: "red"; chat: 1; _state: "available"}
    ListElement {name: "Frosty Disco"; statusText: "working on my new dragon dildo"; color: "red"; chat: 2; _state: "available"}
    ListElement {name: "KenAshcorp"; statusText: "Dropped the ball harder than your mom"; color: "red"; chat: 3; _state: "unavailable"}
    ListElement {name: "Loli"; statusText: "In Britain, some birds are eating a cow"; color: "red"; chat: 4; _state: "busy"}
    ListElement {name: "Rowedahelicon"; statusText: "What's in a word if the "; color: "red"; chat: 5; _state: "unavailable"}
}
