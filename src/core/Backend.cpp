/****************************************************************************
* Tano - An Open IP TV Player
* Copyright (C) 2012 Tadej Novak <tadej@tano.si>
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

#include "Config.h"
#include "core/Backend.h"

#if WITH_EDITOR_VLCQT
    #include <vlc-qt/Common.h>
    #include <vlc-qt/Instance.h>
#endif

QStringList Tano::Backend::args()
{
    QStringList args;
#if WITH_EDITOR_VLCQT
    args = VlcCommon::args();
#endif

    return args;
}

QString Tano::Backend::versionCore()
{
    QString version = "/";
#if WITH_EDITOR_VLCQT
    version = VlcInstance::version();
#endif

    return version;
}

QString Tano::Backend::versionLibrary()
{
    QString version = "/";
#if WITH_EDITOR_VLCQT
    version = VlcInstance::libVersion();
#endif

    return version;
}