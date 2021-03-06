/****************************************************************************
* Tano - An Open IP TV Player
* Copyright (C) 2013 Tadej Novak <tadej@tano.si>
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

#ifndef TANO_PASSWORDDIALOG_H_
#define TANO_PASSWORDDIALOG_H_

#include <QDialog>

#include "WidgetsSharedExport.h"

namespace Ui {
    class PasswordDialog;
}

class TANO_WIDGETS_EXPORT PasswordDialog : public QDialog
{
Q_OBJECT

public:
    explicit PasswordDialog(QWidget *parent = 0);
    ~PasswordDialog();

protected:
    void changeEvent(QEvent *e);

private slots:
    void validatePassword();
    void validatePasswordError(int error);
    void validatePasswordOk(const QString &response);
    
private:
    Ui::PasswordDialog *ui;

    QString _password;
};

#endif // TANO_PASSWORDDIALOG_H_
