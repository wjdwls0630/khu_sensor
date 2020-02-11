#ifndef ADS1292_H
#define ADS1292_H

#include <QString>
namespace ADS {
    enum CMD {WAKEUP, STANDBY, RESET, START, STOP, OFFSETCAL, RDATAC, SDATAC, RDATA};
    enum REG {ID, CONFIG1, CONFIG2, LOFF, CH1SET, CH2SET, RLD_SENS, LOFF_SENS, LOFF_STAT, RESP1, RESP2, GPIO};
}

class ADS1292{
private:
    ADS::CMD m_Cmd;
    ADS::REG m_Reg;
public:
    ADS1292();
    virtual ~ADS1292();
    //decode CMD, REG
    QByteArray decode_ADS_Cmd(ADS::CMD t_Cmd);
    QByteArray decode_ADS_Reg(ADS::REG t_Reg);

    //get code to send (cmd, reg)
    QByteArray get_Send_Cmd_Code(ADS::CMD t_Cmd);
    QByteArray get_Write_Reg_Code(ADS::REG t_Reg_Start, int t_Num, QByteArray t_Value_List);
    QByteArray get_Read_Reg_Code(ADS::REG t_Reg_Start, int t_Num);
    QByteArray get_RDATAC_Code();
    //QByteArray get_RDATA_Code();

};

#endif // ADS1292_H
