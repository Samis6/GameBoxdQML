import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects


Window {
    width: 432
    height: 768
    visible: true
    title: qsTr("HomePage")


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



    //Primeira sessão slider com noticias
    Image {
        id: fotonews
        source: "Images/noticias.png"
        width: parent.width;
        fillMode: Image.PreserveAspectFit
        anchors.top: parent.top;
        anchors.horizontalCenter: parent.horizontalCenter;

    }


    Rectangle{
        id: infosprincipais
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.bottom: fotonews.bottom;
        anchors.left: fotonews.left;
        //anchors.margins: 20;
        height: 95;
        width: parent.width;



        Text {
            id: nomedojogo
            text: qsTr("Novo RPG de mesa")
            font.family: "Squada One"
            font.weight: Font.Thin;
            font.pointSize: 14
            anchors.margins: 20;
            anchors.topMargin: 14;
            width: 180;
            color: "#f2f2f2"
            anchors.left: parent.left;
            anchors.top: parent.top;

             }

        Rectangle{id:divi;anchors.top:nomedojogo.bottom; anchors.left: nomedojogo.left;anchors.topMargin: 4; color: "#f2f2f2"; height: 1; width: 190;}


        Text {
            id: infodojogo
            text: qsTr("lançamento do novo jogo Assassin's Creed Valhalla\nversão RPG de mesa")
            font.family: "Bahnschrift"
            font.weight: Font.Medium;
            font.pointSize: 9
            anchors.margins: 20;
            anchors.topMargin: 10;
            width: 180;
            color: "#f2f2f2"
            anchors.left: parent.left;
            anchors.top: divi.bottom;

             }


    }

    Image {
        id: proximo
        source: "Icons/angle-left.png"
        height: 45;
        width: 45;
        anchors.right: parent.right;
        anchors.verticalCenter: fotonews.verticalCenter;
        opacity: 0.7;
        }


    //Reportagem
    Rectangle{
        id: reportag
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: infosprincipais.bottom;
        anchors.left: parent.left;
        anchors.topMargin: 5;
        anchors.bottomMargin: 5;
        height: 120;
        width: parent.width;




        Image {
            id: fotodocoment
            source: "Images/download.png"
            height: 70;
            width: height;
            anchors.margins: 20;
            anchors.left: parent.left;
            anchors.verticalCenter: parent.verticalCenter;

        }

        Text {
            id: nomeusuario
            text: qsTr("É seguro jogar mais de 20 horas por dia?")
            font.family: "Squada One"
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Thin;
            font.pointSize: 14
            width: 180;
            color: "#f2f2f2"
            anchors.leftMargin: 10;
            //anchors.margins: 25;
            anchors.bottomMargin: 10;
            anchors.left: fotodocoment.right;
            anchors.top: fotodocoment.top;

             }



        Text {
            id: reportagemm
            text: qsTr("Estudos mostram que o tempo ideal de tela pode variar de\nacordo com o tipo do jogo e quantidade de pessoas\nenvolvidas, acredita-se que...\n                                                                                 Veja mais")
            font.family: "Bahnschrift"
            font.weight: Font.Medium;
            font.pointSize: 9
            anchors.margins: 10;
            anchors.leftMargin: 0;
            width: 180;
            color: "#f2f2f2"
            anchors.left: nomeusuario.left;
            anchors.top: nomeusuario.bottom;
            lineHeight: 1.2;

             }

  }



    //Titulo da sessão
        Rectangle{
            id: reviews
            color:"#2c2f33";
            height: 60;
            opacity: 0.9;
            width: parent.width;
            anchors.top: reportag.bottom;
            anchors.topMargin: 5;
        Text {

        text: qsTr("Tópicos da semana")
        font.family: "Squada One"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Thin;
        font.pointSize: 16
        color: "#f2f2f2"
        anchors.topMargin: 15;
        anchors.margins: 20;
        anchors.left: parent.left;
        anchors.verticalCenter: parent.verticalCenter;


         }}


    //Lista trendings 1
    Rectangle{
        id: lista1
        color: "#262626"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: reviews.bottom;
        anchors.left: parent.left;
        height: 135;
        width: parent.width;


        Text {
        id: titulodalista
        text: qsTr("Os mais jogados da semana")
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
                            anchors.topMargin: 14;

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
        text: qsTr("Melhores avaliados no Game Awards")
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
                                    anchors.topMargin: 14;

                                    Image {
                                        id: jogo1
                                        source: "Game/Bloodborne.jpg"
                                        height: 80;
                                        width: height;
                                    }
                                    Image {
                                        id: jogo2
                                        source: "Game/Chrono Trigger.png"
                                        height: 80;
                                        width: height;


                                    }
                                    Image {
                                        id: jogo3
                                        source: "Game/Diablo II.png"
                                        height: 80;
                                        width: height;


                                    }
                                    Image {
                                        id: jogo4
                                        source: "Game/Deus Ex.jpg"
                                        height: 80;
                                        width: height;
                                    }
                                    Image {
                                        id: jogo5
                                        source: "Game/Final Fantasy Tactics.jpg"
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
