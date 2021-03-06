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

import "../../fonts/IcoMoon/icomoon.js" as IconFont

import "../../common/buttons"

FocusScope {
    property alias model: view.model
    property bool isRight: false

    id: scope
    width: (TanoUi.osdRowHeight + 2) * view.model.count

    /*onActiveFocusChanged: {

    }*/

    ListView {
        id: view
        interactive: false
        orientation: Qt.Horizontal
        anchors.fill: parent

        KeyNavigation.up: osdPlaylist
        KeyNavigation.down: osdPlaylist

        delegate: OverlayDarkButton {
            icon: IconFont.Icon[model.icon]
            iconColor: model.color
            isLast: scope.isRight ? (model.index === 0) : (model.index === view.model.count - 1)
            isRight: scope.isRight
        }
    }
}
