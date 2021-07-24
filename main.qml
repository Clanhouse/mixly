import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 1280
    height: 720
    id: window
    visible: true
    title: "Mixly"

    MouseArea {
        width: window.width
        height: 500
        id: mosuearea

        Rectangle { // tło
            width: mosuearea.width
            height: mosuearea.height
            color: "#1e1e1e"
        }

        Rectangle { // pasek górny gdzie będzie czas
            width: mosuearea.width
            height: mosuearea.height * 0.05
            color: "#424242"
        }

        Rectangle { // żółta linia
            width: 1
            height: mosuearea.height
            color: "#e2ea00"
            id: line

            MouseArea {
                width: line.width
                height: line.height

                drag {
                    target: line
                    axis: Drag.XAxis
                }
            }

        }

        onClicked: {
            line.x = mouse.x
        }

    }

    // Początek sample widgetu

//    Rectangle {
//        color: "#1e1e1e"
//        width: window.width
//        height: window.height - mosuearea.height
//        id: samples
//        y: mosuearea.height
//        border.width: 5
//        border.color: "red"

//    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
