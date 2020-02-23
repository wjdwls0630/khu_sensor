#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow), settingWindow(new SettingDialog)
{
    ui->setupUi(this);
    setWindowTitle(tr("Khu_Sensor"));

    // default setting
    // when uart is disconnected, runPB, syncPB cannot be clicked
    ui->runPB->setEnabled(false);
    ui->mprtb_syncPB->setEnabled(false);
    ui->adstb_syncPB->setEnabled(false);
    ui->tabWidget->setCurrentIndex(0);

    // UART Setting
    this->m_SerialPort = new QSerialPort(this);
    connect(this->m_SerialPort, SIGNAL(readyRead()), this, SLOT(read_Serial_Port_Data()));
    // MPR121
    this->m_MPR121 = new MPR121;

    // MPR box
    this->m_MPR_Pal_OFF = new QPalette;
    this->m_MPR_Pal_ON = new QPalette;
    this->m_MPR_Pal_OFF->setColor(QPalette::Background, Qt::white);
    this->m_MPR_Pal_ON->setColor(QPalette::Background, Qt::green);
    ui->mprCH0widget->setAutoFillBackground(true);
    ui->mprCH0widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH1widget->setAutoFillBackground(true);
    ui->mprCH1widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH2widget->setAutoFillBackground(true);
    ui->mprCH2widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH3widget->setAutoFillBackground(true);
    ui->mprCH3widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH4widget->setAutoFillBackground(true);
    ui->mprCH4widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH5widget->setAutoFillBackground(true);
    ui->mprCH5widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH6widget->setAutoFillBackground(true);
    ui->mprCH6widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH7widget->setAutoFillBackground(true);
    ui->mprCH7widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH8widget->setAutoFillBackground(true);
    ui->mprCH8widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH9widget->setAutoFillBackground(true);
    ui->mprCH9widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH10widget->setAutoFillBackground(true);
    ui->mprCH10widget->setPalette(*this->m_MPR_Pal_OFF);
    ui->mprCH11widget->setAutoFillBackground(true);
    ui->mprCH11widget->setPalette(*this->m_MPR_Pal_OFF);

    // ADS1292
    this->m_ADS1292 = new ADS1292;

    // ADS Chart
    this->m_ADS_Series = new QLineSeries();
    this->m_ADS_Series -> setName("ECG");

    this->m_ADS_Data_List.append(0);
    this->m_ADS_Series->append(0, this->m_ADS_Data_List.at(0));
    // default series
    for (int i = 1; i < 300; i++) {
        this->m_ADS_Data_List.append(0); // TODO need?
        //this->m_ADS_Series->append(i, this->m_ADS_Data_List.at(i));
        this->m_ADS_Series->append(i, 0);
    }


    this->m_ADS_Chart = new QChart();
    this->m_ADS_Chart->addSeries(this->m_ADS_Series);
    this->m_ADS_Chart->legend()->show();
    this->m_ADS_Chart->setTitle("ADS1292");

    QValueAxis *axisX = new QValueAxis;
    axisX->setTickCount(20);
    axisX->setRange(0, 300);
    axisX->setLabelFormat(" ");
    QValueAxis *axisY = new QValueAxis;
    axisY->setTitleText("Voltage (V)");
    axisY->setTickCount(7);
    axisY->setRange(-0.4, 1.2);

    this->m_ADS_ChartView = new QChartView(this->m_ADS_Chart);
    this->m_ADS_ChartView->setRenderHint(QPainter::Antialiasing);
    this->m_ADS_ChartView->chart()->setAxisX(axisX);
    this->m_ADS_ChartView->chart()->setAxisY(axisY);

    ui->adsChartLayout->addWidget(this->m_ADS_ChartView);

}
MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::MPR_Data_Process(QByteArray &t_Data){

    // Create a bit array of the appropriate size
    QBitArray mpr_bits((t_Data.count()-1)*8);

    // Convert from QByteArray to QBitArray
    for(int i=0; i<mpr_bits.count(); i++) {
        for(int b=0; b<8; b++) {
            mpr_bits.setBit( i*8+b, t_Data.at(i+1)&(1<<(7-b)) );
        }
    }
    // mpr data form
    // 16'b0000_ch11~8_ch7~0
    ui->mprCH0widget->setPalette((mpr_bits.at(0))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH1widget->setPalette((mpr_bits.at(1))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH2widget->setPalette((mpr_bits.at(2))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH3widget->setPalette((mpr_bits.at(3))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH4widget->setPalette((mpr_bits.at(4))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH5widget->setPalette((mpr_bits.at(5))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH6widget->setPalette((mpr_bits.at(6))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH7widget->setPalette((mpr_bits.at(7))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH8widget->setPalette((mpr_bits.at(8))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH9widget->setPalette((mpr_bits.at(9))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH10widget->setPalette((mpr_bits.at(10))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    ui->mprCH11widget->setPalette((mpr_bits.at(11))?*this->m_MPR_Pal_ON:*this->m_MPR_Pal_OFF);
    return;
}


void MainWindow::ADS_Reg_Process(QByteArray &t_Data){
    QString t_Data_Str = t_Data.toHex();
    ADS::REG ADS_Reg = this->m_ADS1292->decode_ADS_Reg_Hex(t_Data_Str.mid(1,2));
    QString ADS_Reg_Data_Str = t_Data_Str.right(2);
    if(ADS_Reg == ADS::REG::CONFIG1) ui->adsCONFIG1Label->setText(tr("CONFIG1(0x01): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::CONFIG2) ui->adsCONFIG1Label->setText(tr("CONFIG2(0x02): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::LOFF) ui->adsCONFIG1Label->setText(tr("LOFF(0x03): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::CH1SET) ui->adsCONFIG1Label->setText(tr("CH1SET(0x04): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::CH2SET) ui->adsCONFIG1Label->setText(tr("CH2SET(0x05): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::RLD_SENS) ui->adsCONFIG1Label->setText(tr("RLD_SENS(0x06): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::LOFF_SENS) ui->adsCONFIG1Label->setText(tr("LOFF_SENS(0x07): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::LOFF_STAT) ui->adsCONFIG1Label->setText(tr("LOFF_STAT(0x08): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::RESP1) ui->adsCONFIG1Label->setText(tr("RESP1(0x09): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::RESP2) ui->adsCONFIG1Label->setText(tr("RESP2(0x0A): %1").arg(ADS_Reg_Data_Str));
    if(ADS_Reg == ADS::REG::GPIO) ui->adsCONFIG1Label->setText(tr("GPIO(0x0B): %1").arg(ADS_Reg_Data_Str));
    return ;
}

void MainWindow::ADS_Data_Process(QByteArray &t_Data){
    long ADS_Data;
    bool ADS_Data_ok;
    ADS_Data = t_Data.right(4).toLong(&ADS_Data_ok, 16);
    this->m_ADS_Data_List.removeFirst();
    this->m_ADS_Data_List.append(((double)ADS_Data-1)*ECGBIT_V);

    for(int i = 0; i< this->m_ADS_Data_List.length(); i++){
        this->m_ADS_Series->replace(i, i, this->m_ADS_Data_List.at(i));
    }
    return;
}

void MainWindow::on_runPB_clicked(){
    QString Cmd_Str;
    QByteArray Cmd;
    if(ui->connectPB->text() == "Disconnect") {
        // it can be clicked when uart is connect
        if(ui->runPB->text() == "Run"){
            ui->runPB->setToolTip("Click to Stop Sensors");
            ui->runPB->setText("Stop");
            ui->runPB->setEnabled(true);
            ui->connectPB->setEnabled(false);
            ui->settingPB->setEnabled(false);
 ui->exitPB->setEnabled(false);
            ui->mprtb_syncPB->setEnabled(false);
            ui->adstb_syncPB->setEnabled(false);
            Cmd_Str = "R"; // 0x52
            Cmd = Cmd_Str.toLocal8Bit();
            this->m_SerialPort -> write(Cmd);
            qDebug() << "Run Sensor!";
        } else {
            ui->runPB->setToolTip("Click to Run Sensors");
            ui->runPB->setText("Run");
            ui->runPB->setEnabled(true);
            ui->connectPB->setEnabled(true);
            ui->settingPB->setEnabled(true);
            ui->exitPB->setEnabled(true);
            ui->mprtb_syncPB->setEnabled(true);
            ui->adstb_syncPB->setEnabled(true);
            Cmd_Str = "S"; // 0x53
            Cmd = Cmd_Str.toLocal8Bit();
            this->m_SerialPort -> write(Cmd);
            qDebug() << "Stop Sensor!";
        }
        return ;
    } else return ;
}

void MainWindow::on_connectPB_clicked(){
    if (ui->connectPB->text()=="Connect"){

        // have not connected

        //Serial port Setting
        UART temp = this->settingWindow->getUART();
        this->m_SerialPort->setPortName(temp.getName());
        if(temp.getBaudRateInt() == 961200){
            this->m_SerialPort->setBaudRate(temp.getBaudRateInt());
        } else {
            this->m_SerialPort->setBaudRate(temp.getBaudRate());
        }
        this->m_SerialPort->setDataBits(temp.getDataBits());
        this->m_SerialPort->setParity(temp.getParity());
        this->m_SerialPort->setStopBits(temp.getStopBits());
        this->m_SerialPort->setFlowControl(temp.getFlowControl());

        //open Serial Port
        if(this->m_SerialPort->open(QIODevice::ReadWrite)){
            // serial port is opened
            ui->connectPB->setToolTip("Click to Disconnect UART");
            ui->connectPB->setText("Disconnect");
            ui->runPB->setEnabled(true); // make runPB enable
            // make syncPB enable
            ui->mprtb_syncPB->setEnabled(true);
            ui->adstb_syncPB->setEnabled(true);
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
            // make syncPB disable
            ui->mprtb_syncPB->setEnabled(false);
            ui->adstb_syncPB->setEnabled(false);
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

void MainWindow::on_mprtb_syncPB_clicked(){
    return;
}

void MainWindow::on_adstb_syncPB_clicked(){
    /*
    QByteArray Out_Code = this->m_ADS1292->get_Read_Reg_Code(ADS::REG::CONFIG1);
    this->m_SerialPort->write(Out_Code);
    QByteArray data_out = this->m_SerialPort->readAll();
    QString data_out_str = data_out.toHex(' ');
    qDebug()<<"Data Length : "<<data_out.length();
    qDebug()<<"Data: " << data_out_str;
    this->ADS_Reg_Process(data_out);
    */
    /*
    QByteArray data_out = this->m_SerialPort->read(3);
    QString data_out_str = data_out.toHex(' ');
    qDebug()<<"Data Length : "<<data_out.length();
    qDebug()<<"Data: " << data_out_str;
    */
    /*
    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::CONFIG2));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::LOFF));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::CH1SET));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::CH2SET));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::RLD_SENS));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::LOFF_SENS));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::LOFF_STAT));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::RESP1));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::RESP2));
    QThread::usleep(3);

    this->m_SerialPort->write(this->m_ADS1292->get_Read_Reg_Code(ADS::REG::GPIO));
    QThread::usleep(3);
    */
    return;
}

void MainWindow::read_Serial_Port_Data(){

    QByteArray data_out = this->m_SerialPort->readAll(); // use another function
    //this->sensor_Data_Process(data_out);
    qDebug()<<"length : "<<data_out.length();
    qDebug()<<data_out.toHex(' ');
    if(data_out.at(0) == UART_SG_ADS_DATA) {
        // this->ADS_Data_Process(data_out);
        this->m_SerialPort->write(this->m_ADS1292->get_Finish_Code()); // send data processing is finished
    } else if(data_out.at(0) == UART_SG_MPR_DATA){
        // this->MPR_Data_Process(data_out);
        this->m_SerialPort->write(this->m_MPR121->get_Finish_Code());
    }

    return ;
}
