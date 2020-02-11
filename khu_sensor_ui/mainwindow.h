#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QMessageBox>
#include <QtSerialPort/QSerialPort>

#include "Setting/settingdialog.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
    SettingDialog *settingWindow;

    //Series Connection
    QSerialPort *m_SerialPort;

private slots:
    // Button Group SLOT
    void on_runPB_clicked();
    void on_connectPB_clicked();
    void on_settingPB_clicked();
    void on_exitPB_clicked();

    // Series Connection SLOT
    void read_Serial_Port_Data();

};

#endif // MAINWINDOW_H
