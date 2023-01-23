import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects


Window {
    width: 432
    height: 768
    visible: true
    title: qsTr("Login Screen")

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
                id:gridfield
                columns: 1;
                columnSpacing: 1;
                //spacing: 200;
                rowSpacing: 8;
                verticalItemAlignment: Grid.AlignVCenter;
                horizontalItemAlignment: Grid.AlignHCenter;
                anchors.top: parent.top;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.margins: 35;





                    TextField {
                        id: logfield
                        placeholderText: qsTr(" Login ou Email")
                        font.family: "Squada One"
                        font.weight: Font.Thin;
                        font.pointSize: 16
                        width: 180;

                        background: Rectangle {
                            implicitWidth: 180
                            implicitHeight: 30
                            color: "white";
                            border.color: "white";
                            radius: 2;
                        }
                    }
                    TextField {
                        id: passfield
                        placeholderText: qsTr(" Senha")
                        echoMode: TextInput.Password;
                        font.family: "Squada One"
                        font.weight: Font.Thin;
                        font.pointSize: 16
                        width: 180;

                        background: Rectangle {
                            implicitWidth: 180
                            implicitHeight: 30
                            color: "white";
                            border.color: "white";
                            radius: 2;
                        }
                    }

                    Switch {
                            text: qsTr("Continuar conectado")
                        }



            }

            Grid{
                    columns: 2;
                    columnSpacing: 1;
                    rowSpacing: 8;
                    verticalItemAlignment: Grid.AlignVCenter;
                    horizontalItemAlignment: Grid.AlignHCenter;
                    anchors.bottom: parent.bottom;
                    anchors.bottomMargin: 10;

            Button {
            id: voltar
            text: qsTr("Voltar")
            font.family: "Squada One"
            font.pointSize: 22

            contentItem: Text {
                text: voltar.text
                font: voltar.font
                opacity: enabled ? 1.0 : 0.3
                color: voltar.down ? "#D91a2a" : "#262626"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                              }

            background: Rectangle {
                implicitWidth: 350/2;
                implicitHeight: 50;
                opacity: enabled ? 0 : 1
                radius: 2
                                   }
                    }

            Button {
            id: createfield
            text: qsTr("Logar")
            font.family: "Squada One"
            font.pointSize: 22

            contentItem: Text {
                text: createfield.text
                font: createfield.font
                opacity: enabled ? 1.0 : 0.3
                color: createfield.down ? "#D91a2a" : "#262626"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                              }

            background: Rectangle {
                implicitWidth: 350/2;
                implicitHeight: 50;
                opacity: enabled ? 0 : 1
                radius: 2
                                   }
                    }
                }



                }
            }




