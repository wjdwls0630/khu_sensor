#ifndef MPR121_H
#define MPR121_H

#include <QString>

#define UART_SG_MPR_DATA 'M' // 0x4D

class MPR121{
private:

public:
    MPR121();
    virtual ~MPR121();
    //decode CMD, REG
    //QByteArray decode_ADS_Cmd(ADS::CMD t_Cmd);
    //QByteArray decode_ADS_Reg(ADS::REG t_Reg);
    //ADS::REG decode_ADS_Reg_Hex(const QString &t_Data_Str);

    //get code to send (cmd, reg)
    //QByteArray get_Send_Cmd_Code(ADS::CMD t_Cmd);
    //QByteArray get_Write_Reg_Code(ADS::REG t_Reg_Addr, QByteArray t_Reg_Data);
    //QByteArray get_Read_Reg_Code(ADS::REG t_Reg_Addr);
    //QByteArray get_RDATAC_Code();
    QByteArray get_Finish_Code();
};

#endif // MPR121_H
