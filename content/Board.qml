import QtQuick 6.2
import QtQuick.Layouts 1.15
import QtQuick.Controls 6.2
import DEV_600_Trello



Rectangle{
    width: parent.width
    color: "transparent"
    anchors.fill: parent

    Component.onCompleted: {
        // postListOnBoard("Post List");
        getBoard(function(id, name, lists) {
            // textField_email.placeholderText = name;
            console.log("Board Name:", name);
            // boardTitle.text = name

            // Loop through lists and access their names and IDs
            // console.log("Lists:", lists);
        });

        getListsOnBoard(function(lists){
           boardTitle.text = lists[2].name;
        });
    }

    Rectangle {
        id: statusBar
        color: "#4CAF50"
        height: 60

        Text {
            id: boardTitle
            text: qsTr("text")
            font.weight: Font.Normal
            font.family: "Raleway"
            font.pixelSize: 36
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
    }

    function getBoard(callback) {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "https://api.trello.com/1/boards/661296f9371b52ce45ec2b5a?key=4ec8357038dcbae386a5f08960aa7ad3&token=ATTA45d9d93d70929946724bbb622150f6f797f329c7d65fd687335bc8574a3d32585CB3E20C", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    var responseJson = JSON.parse(xhr.responseText);
                    var boardId = responseJson.id;
                    var boardName = responseJson.name;
                    var lists = responseJson.lists; // Access the lists array in the JSON
                    callback(boardId, boardName, lists);
                } else {
                    console.error("Error:", xhr.statusText);
                }
            }
        };
        xhr.send();
    }

    function getListsOnBoard(callback){
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "https://api.trello.com/1/boards/661296f9371b52ce45ec2b5a/lists?key=4ec8357038dcbae386a5f08960aa7ad3&token=ATTA45d9d93d70929946724bbb622150f6f797f329c7d65fd687335bc8574a3d32585CB3E20C", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    var responseJson = JSON.parse(xhr.responseText);

                    callback(responseJson);
                } else {
                    console.error("Error:", xhr.statusText);
                }
            }
        };
        xhr.send();
    }



    function getList() {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "https://api.trello.com/1/lists/6614f309bbffa43f0bb3b54c?key=4ec8357038dcbae386a5f08960aa7ad3&token=ATTA45d9d93d70929946724bbb622150f6f797f329c7d65fd687335bc8574a3d32585CB3E20C", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        console.log(xhr.responseText);
                    } else {
                        console.error("Error:", xhr.statusText);
                    }
                }
            };
            xhr.send();
        }

    function postLabelOnBoard() {
           var xhr = new XMLHttpRequest();
           var url = "https://api.trello.com/1/boards/661296f9371b52ce45ec2b5a/labels?name=fieldTest&color=red&key=4ec8357038dcbae386a5f08960aa7ad3&token=ATTA45d9d93d70929946724bbb622150f6f797f329c7d65fd687335bc8574a3d32585CB3E20C";
           xhr.open("POST", url, true);
           xhr.setRequestHeader("Content-Type", "application/json");

           xhr.onreadystatechange = function () {
               if (xhr.readyState === XMLHttpRequest.DONE) {
                   if (xhr.status === 200) {
                       console.log("Response:", xhr.responseText);
                   } else {
                       console.error("Error:", xhr.statusText);
                   }
               }
           };

           xhr.send();
       }

    function postListOnBoard(listField){
        var xhr = new XMLHttpRequest();
        var url = "https://api.trello.com/1/boards/661296f9371b52ce45ec2b5a/lists?name=" + listField +"&color=red&key=4ec8357038dcbae386a5f08960aa7ad3&token=ATTA45d9d93d70929946724bbb622150f6f797f329c7d65fd687335bc8574a3d32585CB3E20C";
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-Type", "application/json");

        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    console.log("Response:", xhr.responseText);
                } else {
                    console.error("Error:", xhr.statusText);
                }
            }
        };

        xhr.send();
    }


}
