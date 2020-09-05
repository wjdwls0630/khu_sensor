#include "uart.h"

UART::UART(QString t_Name, QString t_BaudRate, QString t_DataBits, QString t_Parity, QString t_StopBits, QString t_FlowControl, bool t_LocalEchoEnabled){
    this->setName(t_Name);
    this->setBaudRate(t_BaudRate);
    this->setDataBits(t_DataBits);
    this->setParity(t_Parity);
    this->setStopBits(t_StopBits);
    this->setFlowControl(t_FlowControl);
    this->setLocalEchoEnabled(t_LocalEchoEnabled);
}

UART::~UART(){}

QString UART::getName() const { return this->m_Name; }

QSerialPort::BaudRate UART::getBaudRate() const { return this->m_BaudRate; }

QString UART::getBaudRateStr() const{
    if(this->m_BaudRate == QSerialPort::Baud9600){
        return "9600";
    } else if(this->m_BaudRate == QSerialPort::Baud19200){
        return "19200";
    } else if(this->m_BaudRate == QSerialPort::Baud38400){
        return "38400";
    } else if(this->m_BaudRate == QSerialPort::Baud115200){
        return "115200";
    }
    return "";
}

QSerialPort::DataBits UART::getDataBits() const { return this->m_DataBits; }

QString UART::getDataBitsStr() const{
    if(this->m_DataBits == QSerialPort::Data5){
        return "5";
    } else if(this->m_DataBits == QSerialPort::Data6){
        return "6";
    } else if(this->m_DataBits == QSerialPort::Data7){
        return "7";
    } else if(this->m_DataBits == QSerialPort::Data8){
        return "8";
    }
    return "";
}

QSerialPort::Parity UART::getParity() const { return this->m_Parity; }

QString UART::getParityStr() const{
    if(this->m_Parity == QSerialPort::NoParity){
        return "None";
    } else if(this->m_Parity == QSerialPort::EvenParity){
        return "Even";
    } else if(this->m_Parity == QSerialPort::OddParity){
        return "Odd";
    } else if(this->m_Parity == QSerialPort::MarkParity){
        return "Mark";
    } else if(this->m_Parity == QSerialPort::SpaceParity){
        return "Space";
    }
    return "";
}

QSerialPort::StopBits UART::getStopBits() const{ return this->m_StopBits; }

QString UART::getStopBitsStr() const{
    if(this->m_StopBits == QSerialPort::OneStop){
        return "1";
    } else if(this->m_StopBits == QSerialPort::TwoStop){
        return "2";
    }
    return "";
}

QSerialPort::FlowControl UART::getFlowControl() const{ return this->m_FlowControl; }

QString UART::getFlowControlStr() const{
    if(this->m_FlowControl == QSerialPort::NoFlowControl){
        return "None";
    } else if(this->m_FlowControl == QSerialPort::HardwareControl){
        return "RTS/CTS";
    } else if(this->m_FlowControl == QSerialPort::SoftwareControl){
        return "XON/XOFF";
    }

    return "";
}

bool UART::getLocalEchoEnabled() const { return this->m_LocalEchoEnabled; }

void UART::setName(QString t_Name){ this->m_Name = t_Name; }

void UART::setBaudRate(QString t_BaudRate){
    if(t_BaudRate == "9600"){
        this->m_BaudRate = QSerialPort::Baud9600;
    } else if(t_BaudRate == "19200"){
        this->m_BaudRate = QSerialPort::Baud19200;
    } else if(t_BaudRate == "38400"){
        this->m_BaudRate = QSerialPort::Baud38400;
    } else if(t_BaudRate == "115200"){
        this->m_BaudRate = QSerialPort::Baud115200;
    }
}

void UART::setDataBits(QString t_DataBits){
    if(t_DataBits == "5"){
        this->m_DataBits = QSerialPort::Data5;
    } else if(t_DataBits == "6"){
        this->m_DataBits = QSerialPort::Data6;
    } else if(t_DataBits == "7"){
        this->m_DataBits = QSerialPort::Data7;
    } else if(t_DataBits == "8"){
        this->m_DataBits = QSerialPort::Data8;
    }
}

void UART::setParity(QString t_Parity){
    if(t_Parity == "None"){
        this->m_Parity = QSerialPort::NoParity;
    } else if(t_Parity == "Even"){
        this->m_Parity = QSerialPort::EvenParity;
    } else if(t_Parity == "Odd"){
        this->m_Parity = QSerialPort::OddParity;
    } else if(t_Parity == "Mark"){
        this->m_Parity = QSerialPort::MarkParity;
    } else if(t_Parity == "Space"){
        this->m_Parity = QSerialPort::SpaceParity;
    }
}

void UART::setStopBits(QString t_StopBits){
    if(t_StopBits == "1"){
        this->m_StopBits = QSerialPort::OneStop;
    } else if(t_StopBits == "1.5"){
        this->m_StopBits = QSerialPort::OneAndHalfStop;
    } else if(t_StopBits == "2"){
        this->m_StopBits = QSerialPort::TwoStop;
    }
}

void UART::setFlowControl(QString t_FlowControl){
    if(t_FlowControl == "None"){
        this->m_FlowControl = QSerialPort::NoFlowControl;
    } else if(t_FlowControl == "RTS/CTS"){
        this->m_FlowControl = QSerialPort::HardwareControl;
    } else if(t_FlowControl == "XON/XOFF"){
        this->m_FlowControl = QSerialPort::SoftwareControl;
    }
}

void UART::setLocalEchoEnabled(bool t_Enabled){
    if(t_Enabled == true) {this->m_LocalEchoEnabled = true; }
    else {this->m_LocalEchoEnabled = false; }
}

UART& UART::operator = (const UART &t_UART){
    if(this!=&t_UART){
        this->m_BaudRate = t_UART.m_BaudRate;
        this->m_DataBits = t_UART.m_DataBits;
        this->m_Parity = t_UART.m_Parity;
        this->m_StopBits = t_UART.m_StopBits;
        this->m_FlowControl = t_UART.m_FlowControl;
        this->m_LocalEchoEnabled = t_UART.m_LocalEchoEnabled;
    }
    return *this;
}
