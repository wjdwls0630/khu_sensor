#ifndef ADS1292_H
#define ADS1292_H

#include <QString>
namespace ADS {
    enum CMD {WAKEUP, STANDBY, RESET, START, STOP, OFFSETCAL, RDATAC, SDATAC, RDATA};
    enum REG {ID, CONFIG1, CONFIG2, LOFF, CH1SET, CH2SET, RLD_SENS, LOFF_SENS, LOFF_STAT, RESP1, RESP2, GPIO};
}

#define UART_SG_ADS_DATA 0xAA // 0x41
#define UART_SG_ADS_READ_REG 'a' // 0x61
#define ECGBIT_V 2.42/(pow(2,23)-1)/6

class ADS1292{
private:
    ADS::CMD m_Cmd;
    ADS::REG m_Reg;
public:
    ADS1292();
    virtual ~ADS1292();
    //decode REG
    QByteArray decode_ADS_Reg(ADS::REG t_Reg);
    ADS::REG decode_ADS_Reg_Hex(const QString &t_Data_Str);

    //get code to send (reg)
    QByteArray get_Read_Reg_Code(ADS::REG t_Reg_Addr);
    QByteArray get_Read_Reg_Code_Int(int counter);
    QByteArray get_Finish_Code();

};

#endif // ADS1292_H
