import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects


Window {
    width: 432
    height: 768
    visible: true
    title: qsTr("Home Screen")

    Item {
        id: background
        width: parent.width;
        height: parent.height;

        Rectangle{
            id:backgroundcolor
            width: parent.width;
            height: parent.height
            color: "#14181C"
            opacity: 0.9}

            Image {
            id: backgroundimage
            width: 432
            height: 768
            anchors.centerIn: parent;
            opacity: 0.5;
            source: "Images/bgtest2.png"

        }


            Image {
            id: warrior
            width: 430
            height: 240
            anchors.bottom: parent.bottom;
            opacity: 0.1;
            source: "Images/warrior.png"

        }
    }


    Image {
        id: mylogo
        fillMode: Image.PreserveAspectFit
        height: 150;
        width: 300;
        anchors.bottom: janelaacesso.top;
        anchors.horizontalCenter: parent.horizontalCenter;
        smooth: true;
        source: "Images/logow.png"


         }


    Rectangle{
        id:janelaacesso;
        color: "#cccccc"
        height: 200;
        width: 350;
        anchors.centerIn: parent;
        anchors.horizontalCenter: parent.horizontalCenter;
        radius: 5;

            Grid{
                id:gridbuttons
                columns: 1;
                spacing: 4;
                rowSpacing: 8;
                verticalItemAlignment: Grid.AlignVCenter;
                //HorizontalItemAlignment: Grid.AlignHCenter;
                anchors.centerIn: parent;


                Button {
            id: logbtn
            text: qsTr("Logar")
            font.family: "Squada One"
            font.pointSize: 22

            contentItem: Text {
                text: logbtn.text
                font: logbtn.font
                opacity: enabled ? 1.0 : 0.3
                color: logbtn.down ? "#D91a2a" : "#262626"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                              }

            background: Rectangle {
                implicitWidth: 350;
                implicitHeight: 50;
                opacity: enabled ? 0 : 1
                radius: 2
            }
        }

                Button {
            id: createbtn
            text: qsTr("Cadastrar")
            font.family: "Squada One"
            font.pointSize: 22

            contentItem: Text {
                text: createbtn.text
                font: createbtn.font
                opacity: enabled ? 1.0 : 0.3
                color: createbtn.down ? "#D91a2a" : "#262626"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                              }

            background: Rectangle {
                implicitWidth: 350;
                implicitHeight: 50;
                opacity: enabled ? 0 : 1
                radius: 2
            }
        }

                Button {
            id: acessarsemconta
            text: qsTr("Pular etapa")
            font.family: "Squada One"
                       font.pointSize: 21

                       contentItem: Text {
                           text: acessarsemconta.text
                           font: acessarsemconta.font
                           opacity: enabled ? 1.0 : 0.3
                           color: acessarsemconta.down ? "#D91a2a" : "#262626"
                           horizontalAlignment: Text.AlignHCenter
                           verticalAlignment: Text.AlignVCenter
                                         }

                       background: Rectangle {
                           implicitWidth: 350;
                           implicitHeight: 50;
                           opacity: enabled ? 0 : 1
                           radius: 2
                       }
        }

                }
            }

    Rectangle{
        id: textbox
        width: janelaacesso.width;
        anchors.top: janelaacesso.bottom;
        anchors.margins: 10;
        anchors.horizontalCenter: parent.horizontalCenter;

        Grid {
            columns: 1;
            anchors.horizontalCenter: parent.horizontalCenter;
            horizontalItemAlignment: Grid.AlignHCenter;
            verticalItemAlignment: Grid.AlignVCenter;

            Text {
                text: 'Não é necessária uma conta para acessar o conteúdo básico,\nsomente para inserir novos e armazenar um histórico.'
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 8
                color: "#ffffff"
                  }



               }
            }
        }
