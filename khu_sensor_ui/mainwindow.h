#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QMessageBox>
#include <QtSerialPort/QSerialPort>
#include <QtCharts/QLineSeries>
#include <QtCharts/QtCharts>
#include <QtCharts/QChartView>
#include <QThread>


#include "Setting/settingdialog.h"
#include "MPR121/mpr121.h"
#include "ADS1292/ads1292.h"



namespace Ui {
class MainWindow;
}


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();


    void MPR_Reg_Process(QByteArray &t_Data);
    void MPR_Data_Process(QByteArray &t_Data);
    void ADS_Reg_Process(QByteArray &t_Data);
    void ADS_Data_Process(QByteArray &t_Data);
private:
    Ui::MainWindow *ui;
    SettingDialog *settingWindow;

    //Series Connection
    QSerialPort *m_SerialPort;
    // MPR121
    MPR121 *m_MPR121;

    // MPR121 box light
    QPalette *m_MPR_Pal_OFF;
    QPalette *m_MPR_Pal_ON;
    // ADS1292
    ADS1292 *m_ADS1292;

    // ADS1292 chart view
    QLineSeries *m_ADS_Series;
    QChart *m_ADS_Chart;
    QChartView *m_ADS_ChartView;
    QList<double> m_ADS_Data_List;

private slots:
    // Button Group SLOT
    void on_runPB_clicked();
    void on_connectPB_clicked();
    void on_settingPB_clicked();
    void on_exitPB_clicked();

    void on_mprtb_syncPB_clicked();
    void on_adstb_syncPB_clicked();

    // Series Connection SLOT
    void read_Serial_Port_Data();

};

#endif // MAINWINDOW_H
