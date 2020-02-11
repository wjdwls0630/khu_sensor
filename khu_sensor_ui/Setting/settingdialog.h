#ifndef SETTINGDIALOG_H
#define SETTINGDIALOG_H

#include <QDialog>
#include <QtSerialPort/QSerialPortInfo>
#include <QDebug>
#include "../UART/uart.h"

namespace Ui {
class SettingDialog;
}

class SettingDialog : public QDialog
{
    Q_OBJECT

public:
    explicit SettingDialog(QWidget *parent = 0);
    ~SettingDialog();

    //get method
    UART getUART();

private:
    Ui::SettingDialog *ui;
    // UART - Serial Connection
    UART *m_UART;

private slots:
    //Connect Tab

    void fillPortsParameters();
    void fillPortsInfo();
    void setDefaultConnectSetting();
    void updateConnectSetting();
    void showPortInfo(int index);


    //Common Function
    void setDefaultTab();
    void apply();
};

#endif // SETTINGDIALOG_H
