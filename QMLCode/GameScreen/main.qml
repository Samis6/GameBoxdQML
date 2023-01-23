import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects


Window {
    width: 432
    height: 768
    visible: true
    title: qsTr("GameScreen")


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
        id: fotodojogo
        source: "Game/jogo1.jpg"
        height: 125;
        width: height;
        anchors.margins: 20;
        anchors.centerIn: moldura;
    }

    Image {
        id: moldura
        source: "Game/Ativo2.png"
        height: 150;
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
        anchors.left: moldura.right;
        anchors.margins: 20;
        height: 150;
        width: 230;


        Text {
            id: nomedojogo
            text: qsTr("War - jogo de guerra")
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
            text: qsTr("War é um jogo de tabuleiro de guerra\ne estratégia, lançado no Brasil pela\n empresa Grow em 1971, baseado no \njogo americano 'Risco'. O jogo ocupa \na 13.381ª posição no ranking do \nBoard Game Geek, o site \nespecializado em jogos de tabuleiro.")
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
    }


    //Sessão com mais informações sobre o jogo, rating, tutoriais, empresa e etc.
    Rectangle{
        id: outrasinfos
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: infosprincipais.bottom;
        anchors.left: parent.left;
        anchors.topMargin: 20;
        height: 235;
        width: parent.width;



        Rectangle{id:divi2;anchors.top:parent.top; anchors.horizontalCenter: parent.horizontalCenter; color: "#f2f2f2"; height: 1; width: parent.width;}

        Image {
            id: stars
            source: "Icons/star.png"
            height: 25;
            width: height;
            anchors.margins: 20;
            anchors.left: parent.left;
            anchors.top: parent.top;

        }

        Text {
            id: ratings
            text: qsTr("4.3/5")
            font.family: "Squada One"
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Thin;
            font.pointSize: 14
            width: 180;
            color: "#f2f2f2"
            anchors.leftMargin: 10;
            anchors.margins: 25;
            anchors.left: stars.right;
            anchors.top: parent.top;

             }


        Text {
            id: empresadojogo
            text: qsTr("Jogo desenvolvido pela:\nGrow")
            font.family: "Squada One"
            horizontalAlignment: Text.AlignRight
            font.weight: Font.Thin;
            font.pointSize: 14
            width: 180;
            color: "#f2f2f2"
            anchors.margins: 20;
            anchors.right: divi2.right;
            anchors.top: parent.top;

             }

        Text {
            id: tituloregra
            text: qsTr("Regras")
            font.family: "Squada One"
            font.weight: Font.Thin;
            font.pointSize: 14
            anchors.topMargin: 0;
            anchors.margins: 20;
            width: 180;
            color: "#f2f2f2"
            anchors.left: parent.left;
            anchors.top: empresadojogo.bottom;

             }


        Text {
            id: infodojogo2
            text: qsTr("O jogo é disputado em um mapa do mundo dividido em 6 regiões (Europa, \nÁsia, África, América do Norte, América do Sul e Oceania). Cada jogador \nrecebe uma carta com uma determinado missão e, ganha quem a \ncompletar primeiro.")
            font.family: "Bahnschrift"
            font.weight: Font.Medium;
            font.pointSize: 9
            anchors.margins: 20;
            width: 180;
            color: "#f2f2f2"
            anchors.left: parent.left;
            anchors.top: tituloregra.bottom;
            lineHeight: 1.2;

             }

        Grid{
                            columns: 2;
                            columnSpacing: 25;
                            rowSpacing: 8;
                            verticalItemAlignment: Grid.AlignVCenter;
                            horizontalItemAlignment: Grid.AlignHCenter;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.top: infodojogo2.bottom;
                            anchors.margins: 20;

                    Button {
                    id: lermais
                    text: qsTr("Ler mais")
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
                    text: qsTr("Ver tutorial")
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


    //Sessão para direcionar à compra
    Rectangle{
        id: ondecomprar
        color: "#262626"
        radius: 2.5;
        //opacity: 0.8;
        anchors.top: outrasinfos.bottom;
        anchors.left: parent.left;
        //anchors.topMargin: 20;
        height: 70;
        width: parent.width;



        Rectangle{id:divi3;anchors.top:parent.top; anchors.horizontalCenter: parent.horizontalCenter; color: "#f2f2f2"; height: 1; width: parent.width;}



        Text {
            id: wherebuy
            text: qsTr("Onde comprar: ")
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
            source: "Game/americanas.png"
            anchors.right: parent.right;
            anchors.verticalCenter: parent.verticalCenter;
            anchors.margins: 20;
            height: 30;
            width: height;
        }
        Image {
            id: magalu
            source: "Game/magalu.png"
            anchors.margins: 20;
            height: 30;
            width: height;
            anchors.right: americanas.left;
            anchors.verticalCenter: parent.verticalCenter;

        }
        Image {
            id: amazon
            source: "Game/amazon.jpeg"
            anchors.margins: 20;
            height: 30;
            width: height;
            anchors.right: magalu.left;
            anchors.verticalCenter: parent.verticalCenter;

        }
        Image {
            id: mercadolivre
            source: "Game/mercadolivre.png"
            anchors.margins: 20;
            height: 30;
            width: height;
            anchors.right: amazon.left;
            anchors.verticalCenter: parent.verticalCenter;

        }
    }


    //Sessão com info sobre quantidade de jogadores e link para luderias proximas que o possuem
    Rectangle{
        id: ondejogar
        color: "#262626"
        radius: 2.5;
        //opacity: 0.8;
        anchors.top: ondecomprar.bottom;
        anchors.left: parent.left;
        //anchors.topMargin: 20;
        height: 70;
        width: parent.width;



        Rectangle{id:divi4;anchors.top:parent.top; anchors.horizontalCenter: parent.horizontalCenter; color: "#f2f2f2"; height: 1; width: parent.width;}



        Text {
            id: whereplay
            text: qsTr("Onde posso jogar")
            font.family: "Squada One"
            horizontalAlignment: Text.AlignRight
            font.weight: Font.Thin;
            font.pointSize: 14
            anchors.rightMargin: 20;
            color: "#f2f2f2"
            anchors.right: parent.right;
            anchors.verticalCenter: parent.verticalCenter;

             }

        Image {
            id: mapicon
            source: "Icons/mapa.png"
            anchors.right: whereplay.left;
            anchors.verticalCenter: parent.verticalCenter;
            anchors.margins: 15;
            height: 25;
            width: height;
        }

        Text {
            id: quantijog
            text: qsTr("Indicado para 4+ players")
            font.family: "Squada One"
            font.weight: Font.Thin;
            font.pointSize: 14
            anchors.margins: 20;
            width: 180;
            color: "#f2f2f2"
            anchors.left: parent.left;
            anchors.top: divi4.bottom;

             }

    }

    //Reviews e comentarios
    Text {
        id: reviews
        text: qsTr("Reviews")
        font.family: "Squada One"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Thin;
        font.pointSize: 16
        color: "#f2f2f2"
        anchors.leftMargin: 20;
        anchors.margins: 15;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: ondejogar.bottom;

         }

    Rectangle{
        id: comenta
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: reviews.bottom;
        anchors.left: parent.left;
        anchors.topMargin: 20;
        height: 235;
        width: parent.width;




        Image {
            id: fotodocoment
            source: "Images/Contato.png"
            height: 35;
            width: height;
            anchors.margins: 20;
            anchors.left: parent.left;
            anchors.top: parent.top;

        }

        Text {
            id: nomeusuario
            text: qsTr("Nirvana Viard")
            font.family: "Squada One"
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Thin;
            font.pointSize: 14
            width: 180;
            color: "#f2f2f2"
            anchors.leftMargin: 10;
            anchors.margins: 25;
            anchors.left: fotodocoment.right;
            anchors.verticalCenter: fotodocoment.verticalCenter;

             }


        Image {
            id: estrelasdadas
            source: "Icons/starss.png"
            height: 80;
            fillMode: Image.PreserveAspectFit
            //height: width;
            anchors.topMargin: -5;
            anchors.margins: 15;
            anchors.right: parent.right;
            anchors.top: parent.top;

             }


        Text {
            id: comentario
            text: qsTr("O jogo é perfeito, maravilhoso, nunca joguei nada igual na minha\nvida.")
            font.family: "Bahnschrift"
            font.weight: Font.Medium;
            font.pointSize: 9
            anchors.margins: 20;
            anchors.leftMargin: 0;
            width: 180;
            color: "#f2f2f2"
            anchors.left: nomeusuario.left;
            anchors.top: nomeusuario.bottom;
            lineHeight: 1.2;

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


    //Janela para adicionar o jogo em suas listas
    /*
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
            text: qsTr("+ Meus favoritos")
            font.family: "Squada One"
            font.pointSize: 16

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
                implicitHeight: 40;
                opacity: enabled ? 0 : 1
                radius: 2
            }
        }

                Button {
            id: createbtn
            text: qsTr("+ Jogar outro dia")
            font.family: "Squada One"
            font.pointSize: 16

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
                implicitHeight: 40;
                opacity: enabled ? 0 : 1
                radius: 2
            }
        }

                TextField {
                    id: logfield
                    placeholderText: qsTr(" Uma nova lista|...")
                    font.family: "Squada One"
                    font.weight: Font.Thin;
                    font.pointSize: 16
                    width: 350;
                    horizontalAlignment: Text.AlignHCenter

                    background: Rectangle {
                        implicitWidth: 350
                        implicitHeight: 30
                        color: "white";
                        border.color: "white";
                        radius: 2;
                    }
                }
                Button {
            id: createlist
            text: qsTr("Criar lista")
            font.family: "Squada One"
            font.pointSize: 16

            contentItem: Text {
                text: createlist.text
                font: createlist.font
                opacity: enabled ? 1.0 : 0.3
                color: createlist.down ? "#D91a2a" : "#262626"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                              }

            background: Rectangle {
                implicitWidth: 350;
                implicitHeight: 40;
                opacity: enabled ? 0 : 1
                radius: 2
            }
        }


                }
            }
            */




}
