/*
    Este código fué creado por @nextsigner
    E-Mail: nextsigner@gmail.com
*/

import QtQuick 2.12
import QtQuick.Controls 2.0
import Qt.labs.settings 1.0
import unik.UnikQProcess 1.0
ApplicationWindow{
    id:app
    visibility:"Maximized"
    color: '#333'
    property int fs: app.width*0.02
    Settings{
        id:appSettings
        category: 'UnikTtsExample'
        property int engine
        property int voice
        property int volume
        property int rate
        property int pitch
    }
    Item{
        id:xApp
        width:parent.width-48
        height: parent.height
        anchors.centerIn: parent
//        Column{
//            anchors.centerIn: parent
//            spacing: app.fs
//            Text{
//                text:'<b>Unik Android Text2Voice Example</b>'
//                font.pixelSize: app.fs*2
//                color: 'white'
//                anchors.horizontalCenter: parent.horizontalCenter
//            }
//            Item{width: 1; height: app.fs*2}
//            Row{
//                anchors.horizontalCenter: parent.horizontalCenter
//                Text{
//                    id: labelCbEngines
//                    text:'Engines: '
//                    font.pixelSize: app.fs
//                    color: 'white'
//                    anchors.verticalCenter: parent.verticalCenter
//                }
//                ComboBox{
//                    id: cbEngines
//                    width: xApp.width-labelCbEngines.width-48
//                    font.pixelSize: app.fs
//                    height: app.fs*3
//                    model: (''+ttsEngines).split(',')
//                    onCurrentIndexChanged: {
//                        appSettings.engine= currentIndex
//                        //unik.ttsEngineSelected(currentIndex)
//                    }
//                }
//            }
//            Text{
//                text:(ttsCurrentVoice!==''?'Voz Actual: '+ttsCurrentVoice:'Sin voces disponibles. ')+(ttsCurrentVoice!==''?' Voces Disponibles: '+ttsVoices:'')
//                font.pixelSize: app.fs
//                color: 'white'
//            }
//            Row{
//                spacing: app.fs
//                anchors.horizontalCenter: parent.horizontalCenter
//                Text{
//                    text:'Volume: '
//                    font.pixelSize: app.fs
//                    color: 'white'
//                    anchors.verticalCenter: parent.verticalCenter
//                }
//                SpinBox{
//                    id: sbVolume
//                    from: 0
//                    to:100
//                    value: 0
//                    font.pixelSize: app.fs
//                    width: app.fs*10
//                    height: app.fs*3
//                    onValueChanged: {
//                        unik.setTtsVolume(value)
//                        appSettings.volume = value
//                    }
//                }
//                Item{width: app.fs; height: 1}
//                Text{
//                    text:'Rate: '
//                    font.pixelSize: app.fs
//                    color: 'white'
//                    anchors.verticalCenter: parent.verticalCenter
//                }
//                SpinBox{
//                    id: sbRate
//                    from: -10
//                    to:10
//                    value: 0
//                    font.pixelSize: app.fs
//                    width: app.fs*10
//                    height: app.fs*3
//                    onValueChanged: {
//                        unik.setTtsRate(value)
//                        appSettings.rate = value
//                    }
//                }
//                Item{width: app.fs; height: 1}
//                Text{
//                    text:'Pitch: '
//                    font.pixelSize: app.fs
//                    color: 'white'
//                    anchors.verticalCenter: parent.verticalCenter
//                }
//                SpinBox{
//                    id: sbPitch
//                    from: -10
//                    to:10
//                    value: 0
//                    font.pixelSize: app.fs
//                    width: app.fs*10
//                    height: app.fs*3
//                    onValueChanged: {
//                        unik.setTtsPitch(value)
//                        appSettings.pitch = value
//                    }
//                }
//            }

//            Row{
//                anchors.horizontalCenter: parent.horizontalCenter
//                Text{
//                    id: labelCbLocales
//                    text:'Lenguaje: '
//                    font.pixelSize: app.fs
//                    color: 'white'
//                    anchors.verticalCenter: parent.verticalCenter
//                }
//                ComboBox{
//                    id: cbLanguajes
//                    width: xApp.width-labelCbLocales.width-48
//                    font.pixelSize: app.fs
//                    height: app.fs*3
//                    model: (''+ttsLocales).split(',')
//                    onCurrentIndexChanged: {
//                        appSettings.voice= currentIndex
//                        unik.ttsLanguageSelected(currentIndex)
//                    }
//                }
//            }
//            Text{
//                text:'Escribir un texto'
//                font.pixelSize: app.fs
//                color: 'white'
//            }
//            TextField{
//                id: ti
//                font.pixelSize: app.fs
//                width: xApp.width
//                height: app.fs*2
//                onFocusChanged: if(focus)runVoice('Escribir aquí un texto y presionar la tecla Enter')
//                KeyNavigation.tab: btnSpeak
//                Keys.onReturnPressed: {
//                    unik.speak(ti.text)
//                    textSpeaked.text=ti.text
//                }
//                Rectangle{
//                    width: parent.width+app.fs*0.5
//                    height: parent.height+app.fs*0.5
//                    color: 'transparent'
//                    border.width: parent.focus?app.fs*0.5:0
//                    border.color: "#ff8833"
//                    anchors.centerIn: parent
//                }
//            }
//            Button{
//                id:btnSpeak
//                text: 'Hablar'
//                font.pixelSize: app.fs
//                width: app.fs*8
//                height: app.fs*3
//                onFocusChanged: {
//                    if(focus&&ti.text!=='')runVoice('Hacer click en este boton para hablar')
//                    if(focus&&ti.text==='')runVoice('El campo de texto esta vacio, ingrese un texto para poder convertirlo a voz.')
//                }
//                KeyNavigation.tab: row.children[0]
//                onClicked: {
//                    unik.speak(ti.text)
//                    textSpeaked.text=ti.text
//                }
//                Rectangle{
//                    width: parent.width+10
//                    height: parent.height+10
//                    color: 'transparent'
//                    border.width: parent.focus?10:0
//                    border.color: "#ff8833"
//                    anchors.centerIn: parent
//                }
//            }
//            Text{
//                text:'Detectar elemento'
//                font.pixelSize: app.fs
//                color: 'white'
//            }
//            Row{
//                id:row
//                spacing: 10
//                Repeater{
//                    id:rep
//                    model:['red', 'yellow', 'blue', 'brown', 'pink']
//                    property var a: ['rojo', 'amarillo', 'azul', 'marron', 'rosado']
//                    Rectangle{
//                        width: app.fs*4
//                        height: width
//                        color: modelData
//                        border.width: focus?app.fs*0.5:0
//                        border.color: "#ff8833"
//                        objectName: 'rect'+index
//                        KeyNavigation.tab: index===3?row.children[5]: index===4?ti:row.children[index+1]
//                        onFocusChanged: if(focus)runVoice('Sobre el color '+rep.a[index])
//                        MouseArea{
//                            anchors.fill: parent
//                            hoverEnabled: true
//                            onEntered: {
//                                runVoice('Sobre el color '+rep.a[index])
//                                parent.focus=true
//                            }
//                            onClicked: {
//                                runVoice('Sobre el color '+rep.a[index])
//                                parent.focus=true
//                            }
//                        }
//                    }
//                }
//            }
//            Item{
//                width: 1
//                height: app.fs*2
//            }
//            Text{
//                text:'Último texto reproducido'
//                font.pixelSize: app.fs
//                color: 'white'
//            }
//            Rectangle{
//                width: xApp.width
//                height: xApp.height*0.3
//                Text{
//                    id: textSpeaked
//                    font.pixelSize: app.fs
//                    width: parent.width-app.fs
//                    wrapMode: Text.WordWrap
//                    anchors.top: parent.top
//                    anchors.topMargin: app.fs
//                    anchors.left: parent.left
//                    anchors.leftMargin: app.fs
//                }
//            }
//        }
//        Component.onCompleted: ti.focus=true
//    }


//    Shortcut{
//        sequence: 'Esc'
//        onActivated: Qt.quit()
//    }
//    Timer{
//        id: timerSpeak
//        running: false
//        repeat: false
//        interval: 1500
//        property string t: ''
//        onTriggered: {
//            unik.speak(t)
//            textSpeaked.text=t
//        }
//    }
//    Component.onCompleted: {
//        /*console.log('TTS Engines for Android: '+ttsEngines)
//        console.log('TTS Engine Voices: '+ttsVoices)
//        console.log('TTS Engine Locales: '+ttsLocales)
//        //cbEngines.currentIndex = appSettings.engine
//        cbLanguajes.currentIndex = appSettings.voice
//        sbVolume.value = appSettings.volume
//        sbRate.value = appSettings.rate
//        sbPitch.value = appSettings.pitch*/
//    }
//    function runVoice(t){
//        timerSpeak.t=t
//        timerSpeak.restart()
//    }
}
