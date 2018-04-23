import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    width: 480
    height: 460
    visible: true
    color: "#d97373"
    title: qsTr("2048 4ever")



    Text {
        id: text1
        x: 37
        y: 18
        width: 100
        height: 50
        text :vueObjetCpp.gridQML[0]+" _ "+vueObjetCpp.gridQML[1]+" _ "+vueObjetCpp.gridQML[2]+" _ "+vueObjetCpp.gridQML[3]

    }

    Grid {
        transformOrigin: Item.TopLeft
        anchors.rightMargin: 84
        anchors.bottomMargin: 21
        anchors.leftMargin: 44
        anchors.topMargin: 79
        anchors.fill: parent
        rows: 4
        columns: 4
        spacing: 10
        Repeater {
            id: repeater
            model: 16
            delegate: Rectangle{
                radius: 10
                width: 80
                height: 80
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    text: vueObjetCpp.gridQML[index]
                    font.pointSize: 50
                }
                Keys.onPressed: {
                  switch (event.key) {
                    case Qt.Key_Right:
                      vueObjetCpp.fusionRight(false);
                      break;
                    case Qt.Key_Left:
                      vueObjetCpp.fusionLeft(false);
                      break;
                    case Qt.Key_Up:
                      vueObjetCpp.fusionUp(false);
                      break;
                    case Qt.Key_Down:
                        vueObjetCpp.fusionDown(false);
                        break;
                  }
                }
                focus:true
            }
        }
    }

}

