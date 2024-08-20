import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtWebSockets 1.0

Window {
    visible: true
    width: 2001
    height: 1126
    flags: Qt.Window | Qt.WindowCloseButtonHint
    title: qsTr("喉疾明辨-鼻咽喉内窥镜智能检测辅助系统")

    UserLoad{
        id:userLoadPage
        visible: true
    }
    CaseBook{
        id:caseBookPage
        visible: false
    }
}
