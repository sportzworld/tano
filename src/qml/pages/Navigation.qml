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

import QtQuick 2.1

import "../fonts/IcoMoon/icomoon.js" as IconFont

import "../common/buttons"

FocusScope {
    height: 80
    property alias index: view.currentIndex

    Rectangle {
        color: "#20C696"
        anchors.fill: parent
    }

    ListView {
        id: view
        orientation: Qt.Horizontal
        boundsBehavior: Flickable.StopAtBounds
        anchors {
            fill: parent
            margins: 16
        }
        focus: true

        model: NavigationModel { }

        /*KeyNavigation.up: osdPlaylist
        KeyNavigation.down: osdPlaylist*/

        spacing: 8
        delegate: NavigationButton {
            icon: IconFont.Icon[model.icon]
        }
    }
}
