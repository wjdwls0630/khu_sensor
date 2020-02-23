#ifndef UART_H
#define UART_H

#include <QString>
#include <QtSerialPort/QSerialPort>

class UART{
private:
    QString m_Name; // Port Name
    QSerialPort::BaudRate m_BaudRate;
    qint32 m_BaudRateInt;
    QSerialPort::DataBits m_DataBits;
    QSerialPort::Parity m_Parity;
    QSerialPort::StopBits m_StopBits;
    QSerialPort::FlowControl m_FlowControl;
    bool m_LocalEchoEnabled;
public:
    UART(QString t_Name="", QString t_BaudRate="115200", QString t_DataBits="8", QString t_Parity="None", QString t_StopBits="1", QString t_FlowControl="None", bool t_LocalEchoEnabled = false); //Constructor
    virtual ~UART(); //Destructor

    /*
     * get & set Method
    */

    QString getName() const;
    QSerialPort::BaudRate getBaudRate() const ;
    qint32 getBaudRateInt() const;
    QString getBaudRateStr() const;
    QSerialPort::DataBits getDataBits() const;
    QString getDataBitsStr() const;
    QSerialPort::Parity getParity() const;
    QString getParityStr() const;
    QSerialPort::StopBits getStopBits() const;
    QString getStopBitsStr() const;
    QSerialPort::FlowControl getFlowControl() const;
    QString getFlowControlStr() const;
    bool getLocalEchoEnabled() const;

    void setName(QString t_Name = "");
    void setBaudRate(QString t_BaudRate = "115200");
    void setDataBits(QString t_DataBits = "8");
    void setParity(QString t_Parity = "None");
    void setStopBits(QString t_StopBits = "1");
    void setFlowControl(QString t_FlowControl = "None");
    void setLocalEchoEnabled(bool t_Enabled);

    //operator overload
    UART& operator = (const UART &t_UART);


};

#endif // UART_H
