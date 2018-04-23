import QtQuick 2.9
import QtQuick.Window 2.2


Window {
    width: 480
    height: 460
    visible: true
    color: "#faf8ef"
    title: qsTr("2048 - the true one")

    TextInput {
        id: textInput
        x: 55
        y: 37
        width: 107
        height: 50
        color: "#9d9481"
        text: qsTr("2048")
        font.bold: true
        font.capitalization: Font.AllUppercase
        font.pixelSize: 51
    }

    Rectangle {
        id: rectangle
        x: 375
        y: 167
        width: 87
        height: 87
        radius: 80
        color: "#8f7a66"

        TextEdit {
            id: textEdit
            x: 22
            y: 28
            width: 65
            height: 65
            color: "#f3f5f4"
            text: qsTr("New")
            font.pixelSize: 24

        }
        MouseArea
        {
            anchors.leftMargin: -8
            anchors.topMargin: -6
            anchors.rightMargin: -8
            anchors.bottomMargin: -6
            anchors.fill: parent
            onClicked: {
                vueObjetCpp.newGame();

            }
        }
    }



    Rectangle {
        id: rectangle1
        x: 21
        y: 112
        width: 338
        height: 331
        radius: 15
        color: "#bbada0"
    }


    Grid {
        transformOrigin: Item.TopLeft
        anchors.rightMargin: 135
        anchors.bottomMargin: 26
        anchors.leftMargin: 34
        anchors.topMargin: 123
        anchors.fill: parent
        rows: 4
        columns: 4
        spacing: 10
        Repeater {
            id: repeater
            model: 16
            delegate: Rectangle{
                radius: 10
                width: 70
                height: 70
                function getColor()
                {
                    var Color = "#FFFFFF"
                    var ColorText ="#FFFFFF"

                    if(vueObjetCpp.gridQML[index]===2)
                    {
                        Color = "#EEE4DA"
                        ColorText="#776E65"
                    }
                    if(vueObjetCpp.gridQML[index]===4)
                    {
                        Color = "#EDE0C8"
                        ColorText="#776E65"
                    }
                    if(vueObjetCpp.gridQML[index]===8)
                    {
                        Color = "#F2B179"
                        ColorText="#FFFFFF"
                    }
                    if(vueObjetCpp.gridQML[index]===16)
                    {
                        Color = "#F59563"
                        ColorText="#FFFFFF"
                    }
                    if(vueObjetCpp.gridQML[index]===32)
                    {
                        Color = "#F67C5F"
                        ColorText="#FFFFFF"
                    }
                    if(vueObjetCpp.gridQML[index]===64)
                    {
                        Color = "#F65E3B"
                        ColorText="#FFFFFF"
                    }
                    if(vueObjetCpp.gridQML[index]===128)
                    {
                        Color = "#EDCF72"
                        ColorText="#FFFFFF"
                    }
                    if(vueObjetCpp.gridQML[index]===256)
                    {
                        Color = "#EDCC61"
                        ColorText="#FFFFFF"
                    }
                    if(vueObjetCpp.gridQML[index]===512)
                    {
                        Color = "#EDC850"
                        ColorText="#FFFFFF"
                    }
                    if(vueObjetCpp.gridQML[index]===1024)
                    {
                        Color = "#EDC53F"
                        ColorText="#FFFFFF"
                    }
                    if(vueObjetCpp.gridQML[index] > 2047)
                    {
                        Color = "#ECC954"
                        ColorText="#FFFFFF"
                    }
                    return [Color,ColorText]
                }
                color: getColor()[0]

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    color: getColor()[1]
                    text:vueObjetCpp.gridQML[index]
                    font.pointSize: (vueObjetCpp.gridQML[index]>700) ? 14:20

                    font.bold: true
                }
                Keys.onPressed: {
                    switch (event.key) {
                    case Qt.Key_Right:
                        vueObjetCpp.fusionRight(true);
                        break;
                    case Qt.Key_Left:
                        vueObjetCpp.fusionLeft(true);
                        break;
                    case Qt.Key_Up:
                        vueObjetCpp.fusionUp(true);
                        break;
                    case Qt.Key_Down:
                        vueObjetCpp.fusionDown(true);
                        break;
                    }
                }
                focus:true
            }
        }
    }
    TextEdit {
        id: textEdit1
        x: 21
        y: 222
        width: 308
        height: 94
        text: qsTr("You loose")
        font.bold: true
        font.pixelSize: 70
        opacity: (vueObjetCpp.alive == true) ? 0 : 1
    }

    Rectangle {
        id: rectangle2
        x: 375
        y: 289
        width: 87
        height: 87
        color: "#8f7a66"
        radius: 80
        TextEdit {
            id: textEdit2
            x: 11
            y: 29
            width: 65
            height: 30
            color: "#f3f5f4"
            text: vueObjetCpp.score
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 24
        }

        MouseArea {
            anchors.bottomMargin: -6
            anchors.topMargin: -6
            anchors.fill: parent
            anchors.leftMargin: -5
            anchors.rightMargin: -11
        }
    }
}

