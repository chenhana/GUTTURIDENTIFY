import QtQuick 2.0
import QtQuick.Controls 2.12
import QtMultimedia

//CaseBook编辑文案区域

Item {
    //返回主界面的信号
    signal mainBack()
    width: 2001
    height: 1126

    x: 0
    y: 0


    Image{
        source: "qrc:/C:/Users/Administrator/Desktop/pic/灰黑色.png"
        fillMode: Image.PreserveAspectCrop
    }
    Button{
        x: 0
        y: 0
        width: 50
        height: 49
        Image{
            id: backiamge
            x: 0
            y: 0
            source: "qrc:/C:/Users/Administrator/Desktop/pic/返回.png"
            width: 50
            height: 50
            fillMode: Image.PreserveAspectFit
            onStatusChanged: {
                           if (status === Image.Error) {
                               console.log("Error loading image");
                           }
                       }
               }
        onClicked: {
            //返回主界面
            console.log("返回");
            caseBookPage.visible = false
            userLoadPage.visible = true
        }
    }
//    Rectangle {
//        //        x:10
//        //        y:10
//        //        width: 50
//        //        height: 50
//        //color: "transparent" // 可以暂时设置为透明，以确保Image可见

//    }

    Rectangle {
        id: infoRect
        x: 26
        y: 19
        width: 1945
        height: 76
        color: "#273341"
        radius: 10
    }

    Rectangle {
        id: rectangle1
        x: 26
        y: 306
        width: 1008
        height: 745
        color: "#273341"
        radius: 10
        border.width: 0

        Text {
            id: writingText
            x: 19
            y: 21
            width: 91
            height: 23
            color: "#f7f7f7"
            text: qsTr("报告书写")
            font.family: "Arial"
            font.pixelSize: 25
        }

        Text {
            id: element1
            x: 19
            y: 81
            width: 91
            height: 23
            color: "#f3f2f2"
            text: qsTr("检查所见")
            font.family: "Arial"
            font.pixelSize: 25
        }

        Text {
            id: biopsyText_pos
            x: 19
            y: 166
            width: 91
            height: 23
            color: "#fbfbfb"
            text: qsTr("活检部位")
            font.family: "Arial"
            font.pixelSize: 25
        }

        Text {
            id: element3
            x: 19
            y: 259
            width: 91
            height: 23
            color: "#fbfbfb"
            text: qsTr("诊断结果")
            font.family: "Arial"
            font.pixelSize: 25
        }

        Text {
            id: element4
            x: 19
            y: 404
            width: 91
            height: 23
            color: "#fbfbfb"
            text: qsTr("建议")
            font.family: "Arial"
            font.pixelSize: 25
        }

        Text {
            id: element5
            x: 18
            y: 567
            width: 91
            height: 23
            color: "#fbfbfb"
            text: qsTr("报告日期")
            font.pixelSize: 25
            font.family: "Arial"
        }

        Rectangle{
            x: 149
            y: 59
            width: 841
            height: 74
            color: "#222c38"
            border.width: 1
            border.color: "#b4b4b4"
            TextEdit {
                id: inspectEdit
                x: 3
                y: 3
                width: 838
                height: 67
                color: "#fbfbfb"
                text: qsTr("")
                font.letterSpacing: 1
                font.pixelSize: 20
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.wordSpacing: 1
                font.weight: Font.Normal
            }
        }

        ComboBox {
            id: comboBox2
            x: 477
            y: 166
            width: 156
            height: 40
            opacity: 0.2

        }

        Text {
            id: hpText
            x: 682
            y: 167
            width: 91
            height: 34
            color: "#fbfbfb"
            text: qsTr("HP实验")
            font.pixelSize: 25
            font.family: "Arial"
        }

        ComboBox {
            id: comboBox
            x: 149
            y: 166
            width: 156
            height: 40
            opacity: 0.2
        }

        Text {
            id: element6
            x: 226
            y: 567
            width: 90
            height: 23
            color: "#fbfbfb"
            text: qsTr("检查医生")
            font.pixelSize: 25
            font.family: "Arial"
        }

        Text {
            id: element7
            x: 501
            y: 565
            width: 91
            height: 23
            color: "#fbfbfb"
            text: qsTr("报告医生")
            font.pixelSize: 25
            font.family: "Arial"
        }

        Text {
            id: element8
            x: 763
            y: 564
            width: 91
            height: 23
            color: "#fbfbfb"
            text: qsTr("审核医生")
            font.pixelSize: 25
            font.family: "Arial"
        }

        Text {
            id: templateText
            x: 587
            y: 21
            width: 91
            height: 23
            color: "#fbfbfb"
            text: qsTr("诊断模版")
            font.pixelSize: 25
            font.family: "Arial"
        }

        ComboBox {
            id: comboBox1
            x: 706
            y: 12
            width: 284
            height: 41
            opacity: 0.2
        }


        Rectangle {
            id: rectangle_suggest
            x: 149
            y: 404
            width: 841
            height: 121
            color: "#222c38"
            border.color: "#b4b4b4"
            TextEdit {
                id: textEdit_suggest
                x: 0
                y: 0
                width: 830
                height: 121
                color: "#fbfbfb"
                font.pixelSize: 30
            }
        }


        Text {
            id: biopsyText_num
            x: 334
            y: 166
            width: 91
            height: 23
            color: "#fbfbfb"
            text: qsTr("活检块数")
            font.pixelSize: 25
            font.family: "Arial"
        }

        ComboBox {
            id: comboBox3
            x: 823
            y: 166
            width: 156
            height: 40
            opacity: 0.2
        }


        Rectangle {
            id: rectangle_result
            x: 149
            y: 259
            width: 841
            height: 127
            color: "#222c38"
            border.color: "#b4b4b4"
        }

        Button {
            id: button_print
            x: 378
            y: 639
            width: 286
            height: 77
            text: qsTr("打印预览")
            font.italic: false
            font.bold: true
            font.pointSize: 30
            icon.width: 40
            icon.color: "#fbfbfb"
        }
    }

    Rectangle {
        id: videoEect
        x: 1040
        y: 306
        width: 931
        height: 745
        color: "#273341"
        radius: 10

        MediaPlayer{
            id: mediaPlayer
            // source: "file:///G:/dataset/鼻咽喉部位AI识别录像-3个/111.mp4"
            source: "qrc:/G:/dataset/鼻咽喉部位AI识别录像-3个/111.mp4"
            videoOutput: videoOutput
        }
        VideoOutput {
                id: videoOutput
                anchors.fill: parent
            }
        MouseArea {
                anchors.fill: parent
                property bool isPlaying: false
                onClicked:{
                    togglePlayPause();
                }
                function togglePlayPause(){
                    if(isPlaying){
                        mediaPlayer.pause()
                    }else{
                        mediaPlayer.play()
                    }
                    isPlaying = !isPlaying
                }
        }
    }


    ComboBox {
        id: comboBox4
        x: 363
        y: 866
        width: 124
        height: 35
        opacity: 0.2
    }

    ComboBox {
        id: comboBox5
        x: 636
        y: 866
        width: 124
        height: 35
        opacity: 0.2
    }

    ComboBox {
        id: comboBox6
        x: 897
        y: 866
        width: 119
        height: 35
        opacity: 0.2
    }

    Button {
        id: button_screenshot
        x: 1509
        y: 957
        width: 79
        height: 59
        opacity: 0.5
        text: qsTr("")
        scale: 1
        rotation: 0
        background: Rectangle{
            radius: width / 2
            color: "transparent"
        }
        contentItem: Image{
            anchors.fill: parent
            source: "qrc:/C:/Users/Administrator/Desktop/pic/相机.svg"  // SVG 图片路径
            scale: 1
        }
        onClicked: {
            console.log("触发按钮")
            videoOutput.grabToImage(function(result) {
                console.log("添加图片")
                if (result.status === Image.Grabbed) {
                    var date = new Date();
                    var fileName = "E:/Qt_project/Gutter2/captures/" + date.getTime() + ".png";
                    var fileUrl = "file:///" + fileName.replace(/\\/g, '/'); // 确保使用正斜杠和正确的 file:/// 前缀
                    result.saveToFile(fileUrl); // 保存图像到文件

                    console.log("result.url", fileUrl);
                    imageModel.append({"source":fileUrl}); // 使用 file:// 协议
                    console.log("添加成功");
                } else {
                    console.log("Image grab failed:", result.error);
                }
            })
        }
    }

    ListModel{
        id:imageModel
    }

    Rectangle {
        id: imgRect
        x: 26
        y: 101
        width: 1945
        height: 185
        color: "#273341"
        radius: 10

        ListView {
            id: listView
            anchors.fill: parent
            orientation: ListView.Horizontal
            spacing: 5
            model: imageModel
            delegate: Image {
                source: model.source
                width: 190
                height: 180
                fillMode: Image.PreserveAspectFit
            }
            ScrollBar.horizontal: ScrollBar { }
        }
    }
}
