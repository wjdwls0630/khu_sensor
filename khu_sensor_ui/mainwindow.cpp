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

    // button checked
    this->m_runPB_isChecked = false;

    // reading chip register counter
    this->m_mpr_reg_counter = 0;
    this->m_ads_reg_counter = 0;

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

    this->m_ADS_Data_List.append(-0.4);
    this->m_ADS_Series->append(0, this->m_ADS_Data_List.at(0));
    // default series
    for (int i = 1; i < 200; i++) {
        this->m_ADS_Data_List.append(1.2);
        this->m_ADS_Series->append(i, this->m_ADS_Data_List.at(i));
    }


    this->m_ADS_Chart = new QChart();
    this->m_ADS_Chart->addSeries(this->m_ADS_Series);
    this->m_ADS_Chart->legend()->show();
    this->m_ADS_Chart->setTitle("ADS1292");
    this->m_ADS_Chart->createDefaultAxes();
    this->m_ADS_Chart->axisY()->setTitleText("Voltage (V)");
    this->m_ADS_ChartView = new QChartView(this->m_ADS_Chart);
    this->m_ADS_ChartView->setRenderHint(QPainter::Antialiasing);

    ui->adsChartLayout->addWidget(this->m_ADS_ChartView);

}
MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::MPR_Reg_Process(QByteArray &t_Data){
    QString t_Data_Str = t_Data.toHex();
    MPR::REG MPR_Reg = this->m_MPR121->decode_MPR_Reg_Hex(t_Data_Str.left(2));
    QString MPR_Reg_Data_Str = t_Data_Str.right(2);

    if(MPR_Reg == MPR::REG::MHDR) ui->mprMHDRLabel->setText(tr("MHDR(0x2B): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::NHDAR) ui->mprNHDARLabel->setText(tr("NHDAR(0x2C): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::NCLR) ui->mprNCLRLabel->setText(tr("NCLR(0x2D): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::FDLR) ui->mprFDLRLabel->setText(tr("FDLR(0x2E): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::MHDF) ui->mprMHDFLabel->setText(tr("MHDF(0x2F): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::NHDAF) ui->mprNHDAFLabel->setText(tr("NHDAF(0x30): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::NCLF) ui->mprNCLFLabel->setText(tr("NCLF(0x31): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::FDLF) ui->mprFDLFLabel->setText(tr("FDLF(0x32): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::NHDAT) ui->mprNHDATLabel->setText(tr("NHDAT(0x33): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::NCLT) ui->mprNCLTLabel->setText(tr("NCLT(0x34): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::FDLT) ui->mprFDLTLabel->setText(tr("FDLT(0x35): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::DEBOUNCE) ui->mprDEBOUNCELabel->setText(tr("DEBOUNCE(0x5B): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::CDC_CONFIG) ui->mprCDCFLabel->setText(tr("CDCF(0x5C): %1").arg(MPR_Reg_Data_Str));
    if(MPR_Reg == MPR::REG::CDT_CONFIG) ui->mprCDTFLabel->setText(tr("CDTF(0x5D): %1").arg(MPR_Reg_Data_Str));
    return ;
}

void MainWindow::MPR_Data_Process(QByteArray &t_Data){

    // Create a bit array of the appropriate size

    QBitArray mpr_bits((t_Data.count())*8);

    // Convert from QByteArray to QBitArray
    for(int i=0; i<t_Data.count(); i++) {
        for(int b=0; b<8; b++) {
            mpr_bits.setBit(mpr_bits.count()-1-(i*8+b), t_Data.at(i)&(1<<(7-b)) );
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
    ADS::REG ADS_Reg = this->m_ADS1292->decode_ADS_Reg_Hex(t_Data_Str.mid(2,2));
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
    unsigned char data1c, data2c, data3c;
    unsigned long data1l, data2l, data3l;

    data1c = t_Data.at(0);
    data2c = t_Data.at(1);
    data3c = t_Data.at(2);

    if(t_Data.at(0) > 0x7F){
        data1c = ~data1c;
        data2c = ~data2c;
        data3c = ~data3c;

        data1l = ((unsigned int)(data1c<<8)<<8);
        data2l = (unsigned int)(data2c<<8);
        data3l = (unsigned int)(data3c);

        ADS_Data = data1l|data2l|data3l;
        ADS_Data += 1;
        ADS_Data = -ADS_Data;
    } else {
        data1l = ((unsigned int)(data1c<<8)<<8);
        data2l = (unsigned int)(data2c<<8);
        data3l = (unsigned int)(data3c);
        ADS_Data = data1l|data2l|data3l;
    }

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
            this->m_runPB_isChecked = true;
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
            this->m_runPB_isChecked = false;
            Cmd_Str = "S"; // 0x53
            Cmd = Cmd_Str.toLocal8Bit();
            this->m_SerialPort -> write(Cmd);
            this->m_SerialPort -> write(Cmd);
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
    QByteArray Out_Code = this->m_MPR121->get_Read_Reg_Code(MPR::REG::MHDR);
    this->m_SerialPort->write(Out_Code);
    this->m_mpr_reg_counter++;
    return;
}

void MainWindow::on_adstb_syncPB_clicked(){

    QByteArray Out_Code = this->m_ADS1292->get_Read_Reg_Code(ADS::REG::ID);
    qDebug()<<Out_Code.toHex(' ');
    qDebug()<<Out_Code.size();
    this->m_SerialPort->write(Out_Code);
    this->m_ads_reg_counter++;

    return;
}

void MainWindow::read_Serial_Port_Data(){

    QByteArray head = this->m_SerialPort->read(1); // use another function
    QByteArray ADS_Data, MPR_Data;
    qDebug()<<"port length : "<<head.length();
    qDebug()<<head.toHex(' ');
    if(head.at(0) == UART_SG_MPR_READ_REG){
        //this->m_SerialPort->setReadBufferSize(2);

        this->m_SerialPort->waitForReadyRead();
        MPR_Data = this->m_SerialPort->read(1);
        this->m_SerialPort->waitForReadyRead();
        MPR_Data.append(this->m_SerialPort->read(1));
        qDebug()<<"MPR_Data";
        qDebug()<<MPR_Data.toHex(' ');
        this->MPR_Reg_Process(MPR_Data);
        QThread::msleep(1);
        MPR_Data = this->m_MPR121->get_Read_Reg_Code_Int(this->m_mpr_reg_counter);
        this->m_SerialPort->write(MPR_Data);
        if(MPR_Data.isEmpty()){
            this->m_mpr_reg_counter = 0;
        } else {
            this->m_mpr_reg_counter++;
        }

    } else if(head.at(0) == UART_SG_ADS_READ_REG){
        //this->m_SerialPort->setReadBufferSize(2);
        this->m_SerialPort->waitForReadyRead();
        ADS_Data = this->m_SerialPort->readAll();
        qDebug()<<"ADS_Data";
        qDebug()<<ADS_Data.toHex(' ');
        /*
        this->ADS_Reg_Process(data_out);
        ADS_Data = this->m_ADS1292->get_Read_Reg_Code_Int(this->m_ads_reg_counter);
        if(ADS_Data.isEmpty()){
            this->m_ads_reg_counter = 0;
        } else {
            this->m_ads_reg_counter++;
        }
        */
    }
    this->m_SerialPort->setReadBufferSize(1);
    /*
    if(head.toHex() == "aa"){
        //0
        this->m_SerialPort->waitForReadyRead();
        ADS_Data = this->m_SerialPort->read(1);
        //1
        this->m_SerialPort->waitForReadyRead();
        ADS_Data.append(this->m_SerialPort->read(1));
        //2
        this->m_SerialPort->waitForReadyRead();
        ADS_Data.append(this->m_SerialPort->read(1));
        qDebug()<<"ADS_Data";
        qDebug()<<ADS_Data.toHex(' ');
        this->ADS_Data_Process(ADS_Data);
    } else if(head.toHex() == "bb"){
        //0
        this->m_SerialPort->waitForReadyRead();
        MPR_Data = this->m_SerialPort->read(1);
        //1
        this->m_SerialPort->waitForReadyRead();
        MPR_Data.append(this->m_SerialPort->read(1));
        qDebug()<<"MPR_Data";
        qDebug()<<MPR_Data.toHex(' ');
        this->MPR_Data_Process(MPR_Data);
    }

    //qDebug()<<"trash_Data";
    //qDebug()<<this->m_SerialPort->readAll().toHex(' ');
    */

    /*
    if(this->m_runPB_isChecked){
        if(head.at(0) == UART_SG_ADS_DATA){
            ADS_Data = this->m_SerialPort->read(3);
            this->ADS_Data_Process(ADS_Data);
        } else if(head.at(0) == UART_SG_MPR_DATA){
            MPR_Data = this->m_SerialPort->read(2);
            this->MPR_Data_Process(MPR_Data);
        }
        return ;

    } else {
        if(head.at(0) == UART_SG_MPR_READ_REG){
            this->MPR_Reg_Process(data_out);
            MPR_Data = this->m_MPR121->get_Read_Reg_Code_Int(this->m_mpr_reg_counter);
            this->m_SerialPort->write(MPR_Data);
            if(MPR_Data.isEmpty()){
                this->m_mpr_reg_counter = 0;
            } else {
                this->m_mpr_reg_counter++;
            }
        } else if(head.at(0) == UART_SG_ADS_READ_REG){
            this->ADS_Reg_Process(data_out);
            ADS_Data = this->m_ADS1292->get_Read_Reg_Code_Int(this->m_ads_reg_counter);
            if(ADS_Data.isEmpty()){
                this->m_ads_reg_counter = 0;
            } else {
                this->m_ads_reg_counter++;
            }
        }
        return ;
    }
    */



    return ;
}
