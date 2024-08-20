import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtWebSockets 1.0

Item {
    WebSocket{
        id : websocket
        url:"ws://localhost:8765"
        onTextMessageReceived: {
            console.log("Received from server:",message)
        }
        onStatusChanged: {
            // console.log("websocket.status:",WebSocket.status);
            // console.log("websocket.status22:", WebSocket.Error);
            if(websocket.status === WebSocket.Closed){
                console.log("websocket is closed");
            }

            if(websocket.status === WebSocket.Error){
                console.log("WebSocket error:", websocket.errorString);
            }

            if(websocket.status === WebSocket.Open){
                console.log("WebSocket is now open.")
                var mymessage =  "here is Qt！"
                websocket.sendTextMessage(mymessage)
            }
        }
    }

    Timer {
            id: messageTimer
            interval: 3000  // 3000毫秒后发送消息，可以根据需要调整这个时间
            repeat: false   // 不重复，只运行一次
            onTriggered: {
                websocket.sendTextMessage("here is Qt！");
                console.log("Message sent after delay")
            }
        }

    Button {
            text: "Connect"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                console.log("点击了连接")
                if (websocket.status === WebSocket.Closed || websocket.status === WebSocket.Error) {
                    websocket.active  = true
                    console.log("WebSocket is already connected")
                } else {
                    websocket.active  = false
                    console.log("WebSocket disconnected")
                }
            }
    }
}
