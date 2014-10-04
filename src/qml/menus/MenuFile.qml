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
import QtQuick.Controls 1.2

Menu {
    title: qsTr("File")

    MenuItem { text: qsTr("Open File") }
    MenuItem { text: qsTr("Open URL") }

    MenuSeparator { }

    MenuItem { text: qsTr("Full schedules") }
    MenuItem { text: qsTr("Current show info") }

    MenuSeparator { }

    MenuItem { text: qsTr("Exit") }
}