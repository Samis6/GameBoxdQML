import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects


Window {
    width: 432
    height: 768
    visible: true
    title: qsTr("Página de resultados de pesquisa")


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



      //Titulo da sessão
        Rectangle{
            id: reviews
            color:"#262626";
            height: 60;
            opacity: 0.9;
            width: parent.width;
            anchors.top: parent.top;
            anchors.topMargin: 5;

            Image {
                id: lupa
                source: "Icons/search.png"
                height: 22;
                width: height;
                anchors.left: logfield.right;
                anchors.leftMargin: 10;
                anchors.verticalCenter: parent.verticalCenter;
            }

            TextField {
                id: logfield
                placeholderText: qsTr(" O que você procura")
                font.family: "Squada One"
                font.weight: Font.Thin;
                font.pointSize: 16
                width: 320;
                height: 40;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.top: parent.top;
                anchors.margins: 10;
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                background: Rectangle {
                    implicitWidth: 300
                    implicitHeight: 30
                    opacity: 0.7;
                    color: "white";
                    border.color: "white";
                    radius: 2;
                }
            }

        }


    //Lista trendings 1
    Rectangle{
        id: lista1
        color: "#47090E"
        radius: 2.5;
        opacity: 0.8;
        anchors.top: reviews.bottom;
        anchors.left: parent.left;
        height: parent.height;
        width: parent.width;


        Text {
        id: titulodalista1
        text: qsTr("Resultados da pesquisa: A")
        font.family: "Squada One"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Thin;
        font.pointSize: 13
        color: "#f2f2f2"
        //anchors.horizontalCenter: parent.horizontalCenter;
        anchors.margins: 10;
        //anchors.leftMargin: 20;
        anchors.left: gridresultados.left;
        anchors.top: parent.top;

         }

        Grid{
                            id:gridresultados
                            columns: 3;
                            columnSpacing: 18;
                            rowSpacing: 15;
                            verticalItemAlignment: Grid.AlignVCenter;
                            horizontalItemAlignment: Grid.AlignLeft;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.top: titulodalista1.bottom;
                            anchors.margins: 20;
                            anchors.topMargin: 14;

                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }

                            Image {
                                id: jogo11
                                source: "Game/jogo2.png"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo1
                                text: qsTr("As cartas Controversas")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo11.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }

                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo12
                                source: "Game/jogo1.jpg"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo2
                                text: qsTr("A WAR")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo12.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }

                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo13
                                source: "Game/jogo3.png"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo3
                                text: qsTr("A UNO")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo13.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }

                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo14
                                source: "Game/jogo4.jpg"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo4
                                text: qsTr("TACO, GATO, CA..")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo14.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }







                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo21
                                source: "Game/Bloodborne.jpg"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo21
                                text: qsTr("A Bloodborne")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo21.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }

                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo22
                                source: "Game/Fallout 3.jpg"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo22
                                text: qsTr("A Fallout")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo22.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }

                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo23
                                source: "Game/Diablo II.png"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo23
                                text: qsTr("Diablo II")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo23.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }

                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo24
                                source: "Game/Mass Effect 2.png"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo24
                                text: qsTr("Mass Effect")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo24.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }



                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo32
                                source: "Game/Deus Ex.jpg"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo32
                                text: qsTr("Adeus Ex")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo32.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }

                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo33
                                source: "Game/Planescape Torment.jpg"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo33
                                text: qsTr("Planescape Torment")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo33.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }


                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }


                            Image {
                                id: jogo42
                                source: "Game/The Elder Scrolls V Skyrim.jpg"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo42
                                text: qsTr("Skyrim V")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo42.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            }
                            Rectangle{
                                height: 150;
                                width: 110;
                                color: "#262626";
                                Image {
                                    height: 75;
                                    fillMode: Image.PreserveAspectFit
                                    anchors.bottom: parent.bottom;
                                    anchors.bottomMargin: -21;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                    source: "Icons/starss.png"
                                }



                            Image {
                                id: jogo422
                                source: "Game/Star Wars Knights of the Old Republic.jpg"
                                height: 85;
                                width: height;
                                anchors.top: parent.top;
                                anchors.topMargin: 10;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
                            Text {
                                id: titulodojogo422
                                text: qsTr("Star Wars")
                                font.family: "Bahnschrift Condensed"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Thin;
                                font.pointSize: 9
                                color: "#f2f2f2"
                                anchors.margins: 10;
                                anchors.top: jogo422.bottom;
                                anchors.horizontalCenter: parent.horizontalCenter;
                            }
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
