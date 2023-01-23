import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects


Window {
    width: 432
    height: 768
    visible: true
    title: qsTr("ProfileScreen")


    //Background do app
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


           }



    //Primeira sessão referente ao jogo
    Image {
        id: fotouser
        source: "Images/Contato.png"
        height: 125;
        width: height;
        anchors.margins: 20;
        anchors.top: parent.top;
        anchors.left: parent.left;
    }


    Rectangle{
        id: infosprincipais
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: parent.top;
        anchors.left: fotouser.right;
        anchors.margins: 20;
        height: 150;
        width: 230;


        Text {
            id: nomedojogo
            text: qsTr("Nirvana Viard")
            font.family: "Squada One"
            font.weight: Font.Thin;
            font.pointSize: 14
            anchors.margins: 10;
            anchors.leftMargin: 0;
            width: 180;
            color: "#f2f2f2"
            anchors.left: divi.left;
            anchors.top: parent.top;

             }

        Rectangle{id:divi;anchors.top:nomedojogo.bottom; anchors.horizontalCenter: parent.horizontalCenter; anchors.topMargin: 10; color: "#f2f2f2"; height: 1; width: 190;}


        Text {
            id: infodojogo
            text: qsTr("Eu me considero uma ótima jogadora, \nmas nem me coloque perto de um \nRPG")
            font.family: "Bahnschrift"
            font.weight: Font.Medium;
            font.pointSize: 9
            anchors.margins: 10;
            anchors.leftMargin: 0;
            width: 180;
            color: "#f2f2f2"
            anchors.left: divi.left;
            anchors.top: divi.top;

             }

        Image {
            id: emblemas
            source: "Images/maisde6jogos.png"
            height: 35;
            width: height;
            anchors.margins: 20;
            anchors.bottom: parent.bottom;
            anchors.left: parent.left;
        }
        Image {
            id: emblemas2
            source: "Images/apostadora.png"
            height: 35;
            width: height;
            anchors.margins: 20;
            anchors.bottom: parent.bottom;
            anchors.left: emblemas.right;
        }


    }


    //Sessão com mais informações sobre horas jogadas e botões seguir e adicionar.
    Rectangle{
        id: outrasinfos
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: infosprincipais.bottom;
        anchors.left: parent.left;
        anchors.topMargin: 20;
        height: 130;
        width: parent.width;



        Rectangle{id:divi2;anchors.top:parent.top; anchors.horizontalCenter: parent.horizontalCenter; color: "#f2f2f2"; height: 1; width: parent.width;}


        Text {
            id: hrsjogadas
            text: qsTr("⏱️  Mais de 4.398 horas jogadas")
            font.family: "Squada One"
            font.weight: Font.Thin;
            font.pointSize: 14
            anchors.margins: 23;
            width: 180;
            color: "#f2f2f2"
            anchors.left: parent.left;
            anchors.top: parent.top;

             }


        Grid{
                            columns: 2;
                            columnSpacing: 25;
                            rowSpacing: 8;
                            verticalItemAlignment: Grid.AlignVCenter;
                            horizontalItemAlignment: Grid.AlignHCenter;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.top: hrsjogadas.bottom;
                            anchors.margins: 20;

                    Button {
                    id: lermais
                    text: qsTr("+ Seguir")
                    font.family: "Squada One"
                    font.pointSize: 18
                    hoverEnabled: false;

                    contentItem: Text {
                        text: lermais.text
                        font: lermais.font
                        opacity: enabled ? 1.0 : 0.3
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                                      }

                    background: Rectangle {
                        implicitWidth: 350/2;
                        implicitHeight: 40;
                        //opacity: enabled ? 0 : 1
                        color: lermais.down ? "#262626" : "#D9666F"
                        radius: 2

                                           }
                            }

                    Button {
                    id: tutorial
                    text: qsTr("  🤝  Adicionar")
                    font.family: "Squada One"
                    font.pointSize: 18
                    hoverEnabled: false;

                    contentItem: Text {
                        text: tutorial.text
                        font: tutorial.font
                        opacity: enabled ? 1.0 : 0.3
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                                      }

                    background: Rectangle {
                        implicitWidth: 350/2;
                        implicitHeight: 40;
                        //opacity: enabled ? 0 : 1
                        color: tutorial.down ? "#262626" : "#D9666F"
                        radius: 2
                                           }
                            }
                        }


    }


    //Jogos favoritos
    Rectangle{
        id: jogosfavoritos
        color: "#262626"
        radius: 2.5;
        //opacity: 0.8;
        anchors.top: outrasinfos.bottom;
        anchors.left: parent.left;
        //anchors.topMargin: 20;
        height: 100;
        width: parent.width;



        Rectangle{id:divi3;anchors.top:parent.top; anchors.horizontalCenter: parent.horizontalCenter; color: "#f2f2f2"; height: 1; width: parent.width;}


        Text {
            id: wherebuy
            text: qsTr("Jogos favoritos: ")
            font.family: "Squada One"
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Thin;
            font.pointSize: 14
            anchors.leftMargin: 20;
            //width: 180;
            color: "#f2f2f2"
            anchors.left: parent.left;
            anchors.verticalCenter: parent.verticalCenter;

             }

        Image {
            id: americanas
            source: "Game/jogo1.jpg"
            anchors.right: parent.right;
            anchors.verticalCenter: parent.verticalCenter;
            anchors.margins: 10;
            anchors.rightMargin: 20;
            height: 50;
            width: height;
        }
        Image {
            id: magalu
            source: "Game/jogo2.png"
            anchors.margins: 10;
            height: 50;
            width: height;
            anchors.right: americanas.left;
            anchors.verticalCenter: parent.verticalCenter;

        }
        Image {
            id: amazon
            source: "Game/jogo3.png"
            anchors.margins: 10;
            height: 50;
            width: height;
            anchors.right: magalu.left;
            anchors.verticalCenter: parent.verticalCenter;

        }
        Image {
            id: mercadolivre
            source: "Game/jogo4.jpg"
            anchors.margins: 10;
            height: 50;
            width: height;
            anchors.right: amazon.left;
            anchors.verticalCenter: parent.verticalCenter;

        }
    }


    //Listas do usuário
        Text {
        id: reviews
        text: qsTr("Listas do jogador")
        font.family: "Squada One"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Thin;
        font.pointSize: 16
        color: "#f2f2f2"
        anchors.topMargin: 15;
        anchors.margins: 5;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: jogosfavoritos.bottom;

         }


    //Lista1 do usuário
    Rectangle{
        id: lista1
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: reviews.bottom;
        anchors.left: parent.left;
        anchors.topMargin: 20;
        height: 135;
        width: parent.width;


        Text {
        id: titulodalista
        text: qsTr("Quero jogar de novo")
        font.family: "Squada One"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Thin;
        font.pointSize: 13
        color: "#f2f2f2"
        anchors.left: parent.left;
        anchors.margins: 10;
        anchors.leftMargin: 20;
        anchors.top: parent.top;

         }

        Grid{
                            columns: 6;
                            columnSpacing: 10;
                            rowSpacing: 8;
                            verticalItemAlignment: Grid.AlignVCenter;
                            horizontalItemAlignment: Grid.AlignLeft;
                            anchors.left: parent.left;
                            anchors.top: titulodalista.bottom;
                            anchors.margins: 20;
                            anchors.topMargin: 10;

                            Image {
                                id: americanas2
                                source: "Game/jogo2.png"
                                height: 80;
                                width: height;
                            }
                            Image {
                                id: magalu2
                                source: "Game/jogo3.png"
                                height: 80;
                                width: height;


                            }
                            Image {
                                id: amazon2
                                source: "Game/jogo1.jpg"
                                height: 80;
                                width: height;


                            }
                            Image {
                                id: mercadolivre2
                                source: "Game/jogo4.jpg"
                                height: 80;
                                width: height;
                            }
                            Image {
                                id: mercadolivre3
                                source: "Game/jogo5.jpg"
                                height: 80;
                                width: height;
                            }





        }

    }

    //Lista2
    Rectangle{
        id: lista2
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: lista1.bottom;
        anchors.left: parent.left;
        anchors.topMargin: 5;
        height: 150;
        width: parent.width;

        //Lista1 do usuário
        Text {
        id: titulodalista2
        text: qsTr("Me lembre de jogar mais tarde")
        font.family: "Squada One"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Thin;
        font.pointSize: 13
        color: "#f2f2f2"
        anchors.left: parent.left;
        anchors.margins: 10;
        anchors.leftMargin: 20;
        anchors.top: parent.top;

         }

        Grid{
                                    columns: 6;
                                    columnSpacing: 10;
                                    rowSpacing: 8;
                                    verticalItemAlignment: Grid.AlignVCenter;
                                    horizontalItemAlignment: Grid.AlignLeft;
                                    anchors.left: parent.left;
                                    anchors.top: titulodalista2.bottom;
                                    anchors.margins: 20;
                                    anchors.topMargin: 10;

                                    Image {
                                        id: jogo1
                                        source: "Game/jogo3.png"
                                        height: 80;
                                        width: height;
                                    }
                                    Image {
                                        id: jogo2
                                        source: "Game/jogo2.png"
                                        height: 80;
                                        width: height;


                                    }
                                    Image {
                                        id: jogo3
                                        source: "Game/jogo5.jpg"
                                        height: 80;
                                        width: height;


                                    }
                                    Image {
                                        id: jogo4
                                        source: "Game/jogo1.jpg"
                                        height: 80;
                                        width: height;
                                    }
                                    Image {
                                        id: jogo5
                                        source: "Game/jogo4.jpg"
                                        height: 80;
                                        width: height;
                                    }





                }





        }



    //Daqui em diante o footer
    Rectangle{
        id: footer;
        height: 80;
        width: parent.width;
        //opacity: 0.4;
        color: "#2c2f33";
        anchors.bottom: parent.bottom;
        anchors.horizontalCenter: parent.horizontalCenter;
        }

    Button {
        id: addbutton

        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.verticalCenter: footer.verticalCenter;
        hoverEnabled: false;

        background: Rectangle {
            implicitWidth: 65
            implicitHeight: 65
            border.color: "black"
            border.width: 1
            radius: width/2
            color: addbutton.down ? "#262626" : "#D9666F"


            Image {
                id: newgameicon
                source: "Icons/plus.png"
                height: 20; width: 25;
                anchors.centerIn: parent;

            }
        }





}

    Button {
        id: homebtn

        anchors.left: profilebtn.right;
        anchors.verticalCenter: footer.verticalCenter;
        hoverEnabled: false;
        anchors.margins: 10;

        background: Rectangle {
            implicitWidth: 65
            implicitHeight: footer.height;
            color: homebtn.down ? "#D9666F" : "transparent"



            Image {
                id: homeicon
                source: "Icons/botao-de-inicio.png"
                height: 25; width: 25;
                anchors.centerIn: parent;

            }
        }

        }

    Button {
        id: profilebtn

        anchors.left: footer.left;
        anchors.verticalCenter: footer.verticalCenter;
        hoverEnabled: false;
        anchors.margins: 10;

        background: Rectangle {
            implicitWidth: 65
            implicitHeight: footer.height;
            color: profilebtn.down ? "#D9666F" : "transparent"



            Image {
                id: profileicon
                source: "Icons/users.png"
                height: 25; width: 25;
                anchors.centerIn: parent;

            }
        }

        }

    Button {
        id: searchbtn

        anchors.right: listbtn.left;
        anchors.verticalCenter: footer.verticalCenter;
        hoverEnabled: false;
        anchors.margins: 10;

        background: Rectangle {
            implicitWidth: 65
            implicitHeight: footer.height;
            color: searchbtn.down ? "#D9666F" : "transparent"



            Image {
                id: searchicon
                source: "Icons/search.png"
                height: 25; width: 25;
                anchors.centerIn: parent;

            }
        }

        }

    Button {
        id: listbtn

        anchors.right: footer.right;
        anchors.verticalCenter: footer.verticalCenter;
        hoverEnabled: false;
        anchors.margins: 10;

        background: Rectangle {
            implicitWidth: 65
            implicitHeight: footer.height;
            color: listbtn.down ? "#D9666F" : "transparent"



            Image {
                id: listicon
                source: "Icons/list.png"
                height: 25; width: 25;
                anchors.centerIn: parent;

            }
        }

        }
    //Os elementos do footer acabam aqui ^



}
