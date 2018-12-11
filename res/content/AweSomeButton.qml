import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item{
    property string  icon
    property var awesome
    property color iconColor:"black"
    property color descColor:"black"
    property int iconSize: 42
    property int descSize: 42

    property alias describe: control.text
    Button{
        id:control
        visible: !(icon === "")
        font.family: awesome.family
        contentItem: Item {
            implicitWidth: row.implicitWidth
            implicitHeight: row.implicitHeight
            RowLayout {
                id:row
                anchors.centerIn: parent
                spacing: 15
                Text {
                    color: iconColor
                    font.pointSize: iconSize
                    font.family: awesome.family
                    renderType: Text.NativeRendering
                    text: awesome.loaded ? icon : ""
                }
                Text {
                    color: descColor
                    font.pointSize:  descSize
                    renderType: Text.NativeRendering
                    text: describe
                    visible: !(describe === "")
                    Layout.alignment: Qt.AlignBottom
                }
            }
        }
    }
}
