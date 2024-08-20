import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12

Item {
    //登录成功的信号
    signal logSuccess()

    visible: true
    width: 2001
    height: 1126

    x: 0
    y: 0

    Image{
        source: "qrc:/C:/Users/Administrator/Desktop/pic/background.png"
        fillMode: Image.PreserveAspectCrop
    }

    Rectangle {
        x:201
        y:113
        width: 572
        height: 873
        color: "white"
        radius: 5
        border.color: "black"
        border.width: 1


        //spacing: 50 //布局中的每个子控件（如图片、文本框、按钮等）之间会有 10 像素的垂直间隙。
        //anchors.fill: parent
        //anchors.margins: 20
        Image{
                id: iamgemark
                source: "qrc:/C:/Users/Administrator/Desktop/pic/trademark.png"
                //fillMode: Image.PreserveAspectCrop
                width: 400
                height: 49.62
                anchors.top: parent.top
                anchors.topMargin: 100
                anchors.horizontalCenter: parent.horizontalCenter //将图片水平居中于Column
             }

        Text {
            id: loadname
            text: qsTr("喉疾明辨登录系统")
            font.bold: true
            font.pointSize: 40
            style: Text.Raised
            anchors.top:iamgemark.bottom
            anchors.topMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter //将图片水平居中于Column

        }
        Text {
            id: username
            text: qsTr("登录名")
            font.bold: true
            font.pointSize: 10
            //style: Text.Raised
            color: "#808080" // 设置字体颜色为灰色
            anchors.top:loadname.bottom
            anchors.topMargin: 100
            anchors.left: textload.left
            //anchors.horizontalCenter: parent.horizontalCenter //将图片水平居中于Column
        }

        TextField{
            id: textload
            placeholderText: "请输入账号"
            width: 350
            height: 60
            leftPadding: passimage.width + 2 * 20
            background: Rectangle {
                anchors.fill: parent
                border.color: "grey" // 边框颜色
                border.width: 1 // 边框宽度
                Image {
                    id: passimage
                    source: "qrc:/C:/Users/Administrator/Desktop/pic/用户.png"// 图标文件路径
                    width: 20
                    height: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                    fillMode: Image.PreserveAspectFit
                                }
                Rectangle {
                    id:lineRectangle
                    width: 1
                    anchors.left: passimage.right
                    anchors.leftMargin: 10
                    height: passimage.height+5
                    anchors.verticalCenter: parent.verticalCenter
                    color: "lightgrey"
                                }
            }
            anchors.top:username.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: userpassword
            text: qsTr("密码")
            font.bold: true
            font.pointSize: 10
            color: "#505050" // 设置字体颜色为灰色
            //style: Text.Raised
            anchors.top:textload.bottom
            anchors.left: textpass.left
            anchors.topMargin:30
        }
        TextField{
            id: textpass
            placeholderText: "请输入密码"
            width: 350
            height: 60
            leftPadding: usernameimage.width + 2 * 20
            background: Rectangle {
                anchors.fill: parent
                border.color: "grey" // 边框颜色
                border.width: 1 // 边框宽度
                Image {
                    id: usernameimage
                    source: "qrc:/C:/Users/Administrator/Desktop/pic/密码.png"// 图标文件路径
                    width: 20
                    height: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                    fillMode: Image.PreserveAspectFit
                                }
                Rectangle {
                    id:lineRect1angle2
                    width: 1
                    anchors.left: usernameimage.right
                    anchors.leftMargin: 10
                    height: usernameimage.height+5
                    anchors.verticalCenter: parent.verticalCenter
                    color: "lightgrey"
                                }
            }
            anchors.top:userpassword.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button{
            id: loadbtn
            text:"登录"
            width: textpass.width
            height: 50
            background: Rectangle {
                    color: "#000055"  // 绿色背景
                    radius: 5          // 轻微的圆角效果
                    }
            contentItem: Text {
                        text: parent.text
                        color: "#FFFFFF"  // 白色文字
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
            onClicked: {
                //验证账号密码或者是写入数据库
                console.log("登录按钮被点击");
                userLoadPage.visible = false
                caseBookPage.visible = true
            }
            anchors.top:textpass.bottom
            anchors.topMargin: 40
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: forgetpassword
            text: qsTr("忘记密码？")
            font.bold: true
            font.pointSize: 10
            color: "#0169A9" // 设置字体颜色为灰色
            anchors.top:loadbtn.bottom
            anchors.right: loadbtn.right
            anchors.topMargin:50

        }

        CheckBox {
            text: qsTr("记住密码")
            anchors.leftMargin: 0
            font.bold: true
            font.pointSize: 10
            //color: "#0169A9"
            onCheckedChanged: console.log("Checked:", checked)
            anchors.top:loadbtn.bottom
            anchors.left: loadbtn.left
            anchors.topMargin:45

            // 自定义 indicator
            indicator: Rectangle {
                width: 12  // 设置更小的宽度
                height: 12 // 设置更小的高度
                radius: 3  // 可选的圆角
                border.color: parent.checked ? "#0169A9" : "gray"  // 选中时为蓝色，未选中为灰色
                border.width: 2

                Rectangle {
                    visible: parent.checked
                    color: "#0169A9"
                    width: 8
                    height: 8
                    anchors.centerIn: parent
                }
            }
        }
    }

}
