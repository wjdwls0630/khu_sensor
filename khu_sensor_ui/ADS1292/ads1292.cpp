#include "ads1292.h"

ADS1292::ADS1292(){}

ADS1292::~ADS1292(){}

QByteArray ADS1292::decode_ADS_Cmd(ADS::CMD t_Cmd){
    QByteArray Cmd_Hex;
    if (t_Cmd == ADS::CMD::WAKEUP){ Cmd_Hex = "\x02"; }
    if (t_Cmd == ADS::CMD::STANDBY){ Cmd_Hex = "\x04"; }
    if (t_Cmd == ADS::CMD::RESET){ Cmd_Hex = "\x06"; }
    if (t_Cmd == ADS::CMD::START){ Cmd_Hex = "\x08"; }
    if (t_Cmd == ADS::CMD::STOP){ Cmd_Hex = "\x0A"; }
    if (t_Cmd == ADS::CMD::OFFSETCAL){ Cmd_Hex = "\x1A"; }
    if (t_Cmd == ADS::CMD::RDATAC){ Cmd_Hex = "\x10"; }
    if (t_Cmd == ADS::CMD::SDATAC){ Cmd_Hex = "\x11"; }
    if (t_Cmd == ADS::CMD::RDATA){ Cmd_Hex = "\x12"; }
    return Cmd_Hex;
}

QByteArray ADS1292::decode_ADS_Reg(ADS::REG t_Reg){
    QByteArray Reg_Hex;
    if(t_Reg == ADS::REG::ID){ Reg_Hex = "\x00"; }
    if(t_Reg == ADS::REG::CONFIG1){ Reg_Hex = "\x01"; }
    if(t_Reg == ADS::REG::CONFIG2){ Reg_Hex = "\x02"; }
    if(t_Reg == ADS::REG::LOFF){ Reg_Hex = "\x03"; }
    if(t_Reg == ADS::REG::CH1SET){ Reg_Hex = "\x04"; }
    if(t_Reg == ADS::REG::CH2SET){ Reg_Hex = "\x05"; }
    if(t_Reg == ADS::REG::RLD_SENS){ Reg_Hex = "\x06"; }
    if(t_Reg == ADS::REG::LOFF_SENS){ Reg_Hex = "\x07"; }
    if(t_Reg == ADS::REG::LOFF_STAT){ Reg_Hex = "\x08"; }
    if(t_Reg == ADS::REG::RESP1){ Reg_Hex = "\x09"; }
    if(t_Reg == ADS::REG::RESP2){ Reg_Hex = "\x0A"; }
    if(t_Reg == ADS::REG::GPIO){ Reg_Hex = "\x0B"; }
    return Reg_Hex;
}

ADS::REG ADS1292::decode_ADS_Reg_Hex(const QString &t_Data_Str){
    ADS::REG Reg;
    if(t_Data_Str == "00"){ Reg = ADS::REG::ID; }
    if(t_Data_Str == "01"){ Reg = ADS::REG::CONFIG1; }
    if(t_Data_Str == "02"){ Reg = ADS::REG::CONFIG2; }
    if(t_Data_Str == "03"){ Reg = ADS::REG::LOFF; }
    if(t_Data_Str == "04"){ Reg = ADS::REG::CH1SET; }
    if(t_Data_Str == "05"){ Reg = ADS::REG::CH2SET; }
    if(t_Data_Str == "06"){ Reg = ADS::REG::RLD_SENS; }
    if(t_Data_Str == "07"){ Reg = ADS::REG::LOFF_SENS; }
    if(t_Data_Str == "08"){ Reg = ADS::REG::LOFF_STAT; }
    if(t_Data_Str == "09"){ Reg = ADS::REG::RESP1; }
    if(t_Data_Str == "0A"){ Reg = ADS::REG::RESP2; }
    if(t_Data_Str == "0B"){ Reg = ADS::REG::GPIO; }
    return Reg;
}

QByteArray ADS1292::get_Send_Cmd_Code(ADS::CMD t_Cmd){
    // TODO if need to send, make
    QByteArray Out_Code;
    return Out_Code;
}

QByteArray ADS1292::get_Write_Reg_Code(ADS::REG t_Reg_Addr, QByteArray t_Reg_Data){
    // TODO if need to write, make
    QByteArray Out_Code;
    return Out_Code;
}

QByteArray ADS1292::get_Read_Reg_Code(ADS::REG t_Reg_Data){
    QByteArray Out_Code;
    QString ADS_Read_Reg_Str = "a"; // 0x61
    Out_Code.append(ADS_Read_Reg_Str);
    Out_Code.append(this->decode_ADS_Reg(t_Reg_Data));
    return Out_Code;
}

QByteArray ADS1292::get_RDATAC_Code(){
    // TODO if need, make
    QByteArray Out_Code;
    return Out_Code;
}
