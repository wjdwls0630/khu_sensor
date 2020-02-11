#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow), settingWindow(new SettingDialog)
{
    ui->setupUi(this);
    setWindowTitle(tr("Khu_Sensor"));

    //UART Setting
    this->m_SerialPort = new QSerialPort(this);
    connect(this->m_SerialPort, SIGNAL(readyRead()), this, SLOT(read_Serial_Port_Data()));

}
MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_runPB_clicked(){

}

void MainWindow::on_connectPB_clicked(){
    if (ui->connectPB->text()=="Connect"){

        // have not connected

        //Serial port Setting
        UART temp = this->settingWindow->getUART();
        this->m_SerialPort->setPortName(temp.getName());
        this->m_SerialPort->setBaudRate(temp.getBaudRate());
        this->m_SerialPort->setDataBits(temp.getDataBits());
        this->m_SerialPort->setParity(temp.getParity());
        this->m_SerialPort->setStopBits(temp.getStopBits());
        this->m_SerialPort->setFlowControl(temp.getFlowControl());

        //open Serial Port
        if(this->m_SerialPort->open(QIODevice::ReadWrite)){
            // serial port is opened
            ui->connectPB->setToolTip("Click to Disconnect UART");
            ui->connectPB->setText("Disconnect");
            ui->connectPB->setEnabled(true); // make not to stay clicked state
            //Debug, check its property
            QSerialPortInfo port_info_debug(*this->m_SerialPort);
            qDebug()<<"Serial Port is connected!";
            qDebug()<<"Name :"<<port_info_debug.portName();
        } else {
            // serial port is not opened
            QMessageBox::critical(this, tr("Error"), this->m_SerialPort->errorString());
            qDebug()<<"Serial Port Connection is failed!";
        }
    }
    else // connected already
    {
        QMessageBox msgBox;
        msgBox.setText("Disconnect serial port");
        msgBox.setInformativeText("Are you sure?");
        msgBox.setStandardButtons(QMessageBox::Yes | QMessageBox::Cancel);
        msgBox.setDefaultButton(QMessageBox::Cancel);
        int ret = msgBox.exec();
        switch (ret) {
          case QMessageBox::Yes:
            // Yes was clicked--> disconnect
            if (this->m_SerialPort->isOpen()){
                this->m_SerialPort->close();
            }
            //console->setEnabled(false);
            ui->connectPB->setText("Connect");
            ui->connectPB->setToolTip("Click to connect UART.");
            ui->connectPB->setEnabled(true);
            qDebug()<<"Serial Port is disconnected!";
            break;
          case QMessageBox::Cancel:
            // Cancel was clicked
            break;
          default:
            // should never be reached
            break;
        }
    }
}

void MainWindow::on_settingPB_clicked(){
    this->settingWindow->show();
}

void MainWindow::on_exitPB_clicked(){
    QMessageBox msgBox;
    msgBox.setText("Exit program.");
    msgBox.setInformativeText("Do you want to leave?");
    msgBox.setStandardButtons(QMessageBox::Yes | QMessageBox::Cancel);
    msgBox.setDefaultButton(QMessageBox::Cancel);
    int ret = msgBox.exec();
    switch (ret) {
      case QMessageBox::Yes:
          // Yes was clicked
        QApplication::quit();
          break;
      case QMessageBox::Cancel:
          // Cancel was clicked
          break;
      default:
          // should never be reached
          break;
    }
}

void MainWindow::read_Serial_Port_Data(){
    QByteArray data_out = this->m_SerialPort->readAll(); // use another function
    QString data_out_str;
    data_out_str = data_out.toHex(' ');
    qDebug()<<"Data Length : "<<data_out.length();
    qDebug()<<"Data: "<<data_out_str;

}
