/****************************************************************************
* Tano - An Open IP TV Player
* Copyright (C) 2014 Tadej Novak <tadej@tano.si>
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <http://www.gnu.org/licenses/>.
*****************************************************************************/

import QtQuick 2.0

Rectangle {
    id: scrollbar
    width: handleSize
    visible: flickable.visibleArea.heightRatio < 1.0
    anchors {
        top: flickable.top
        left: flickable.right
        bottom: flickable.bottom
    }

    color: "#20ffffff"

    property Flickable flickable    : null;
    property int       handleSize   : 5;

    Binding {
        target: handle
        property: "y"
        value: flickable.contentY * clicker.drag.maximumY / (flickable.contentHeight - flickable.height)
        when: !clicker.drag.active
    }

    Binding {
        target: flickable
        property: "contentY"
        value: handle.y * (flickable.contentHeight - flickable.height) / clicker.drag.maximumY
        when: clicker.drag.active || clicker.pressed
    }

    Item {
        id: groove
        clip: true
        anchors.fill: parent

        MouseArea {
            id: clicker
            drag {
                target: handle
                minimumY: 0
                maximumY: groove.height - handle.height
                axis: Drag.YAxis
            }
            anchors.fill: parent
            onClicked: { flickable.contentY = mouse.y / groove.height * (flickable.contentHeight - flickable.height) }
        }

        Item {
            id: handle
            height: Math.max(20, (flickable.visibleArea.heightRatio * groove.height))
            anchors {
                left: parent.left
                right: parent.right
            }

            Rectangle {
                id: backHandle
                color: "black"
                opacity: flickable.moving ? 0.65 : 0.35
                anchors.fill: parent

                Behavior on opacity { NumberAnimation { duration: 150; } }
            }
        }
    }
}
