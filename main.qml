import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import "res/content"


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    FontAwesome{
        id: awesome
        resource: "qrc:/res/ttf/fontawesome-webfont.ttf"
    }

    AweSomeButton{
        anchors.centerIn: parent
        iconColor:"red"
        awesome: awesome
        icon:awesome.icons.fa_align_center
        describe:"ss"
    }

}
