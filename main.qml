import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 200
        height: 270
        anchors.top: parent.top
        anchors.topMargin: 10
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        RangeSlider {
            id: rangeSlider
            anchors.horizontalCenter: parent.horizontalCenter
            first.value: 0.25
            second.value: 0.75
        }

        Dial {
            id: dial
            width: 80
            height: 80
            anchors.horizontalCenter: parent.horizontalCenter
        }

        DelayButton {
            id: delayButton
            text: qsTr("Delay Button")
            anchors.horizontalCenter: parent.horizontalCenter
        }

        SpinBox {
            id: spinBox
            anchors.horizontalCenter: parent.horizontalCenter
        }

    }

    Tumbler {
        id: tumbler
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: column.right
        anchors.leftMargin: 0
        model: 10
    }


    PathView {
        id: pathView
        width: 250
        height: 130
        anchors.top: column.bottom
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        path: Path {
            startY: 113
            startX: 117

            PathCubic {
                x: 120
                y: 25
                control2X: 317.333
                control1X: 293.333
                control2Y: 47.333
                control1Y: 80.333
            }

            PathCubic {
                x: 117
                y: 113
                control2X: -9.333
                control1X: 32.667
                control2Y: 87.333
                control1Y: 44.333
            }
        }
        delegate: Column {
            Rectangle {
                width: 40
                height: 40
                color: colorCode
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                x: 5
                text: name
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
            spacing: 5
        }
    }

    Text {
        id: name
        text: "QML Page"
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
        font.pointSize: 14
        font.bold: true
    }


}

/*##^##
Designer {
    D{i:20;anchors_x:274;anchors_y:150}
}
##^##*/
