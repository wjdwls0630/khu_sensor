#include "ads1292.h"

ADS1292::ADS1292(){}

ADS1292::~ADS1292(){}

QByteArray ADS1292::decode_ADS_Reg(ADS::REG t_Reg){
    QByteArray Reg_Hex;
    if(t_Reg == ADS::REG::ID){ Reg_Hex.append(QByteArray::fromHex("00")); }
    if(t_Reg == ADS::REG::CONFIG1){ Reg_Hex.append(QByteArray::fromHex("01")); }
    if(t_Reg == ADS::REG::CONFIG2){ Reg_Hex.append(QByteArray::fromHex("02")); }
    if(t_Reg == ADS::REG::LOFF){ Reg_Hex.append(QByteArray::fromHex("03")); }
    if(t_Reg == ADS::REG::CH1SET){ Reg_Hex.append(QByteArray::fromHex("04")); }
    if(t_Reg == ADS::REG::CH2SET){ Reg_Hex.append(QByteArray::fromHex("05")); }
    if(t_Reg == ADS::REG::RLD_SENS){ Reg_Hex.append(QByteArray::fromHex("06")); }
    if(t_Reg == ADS::REG::LOFF_SENS){ Reg_Hex.append(QByteArray::fromHex("07")); }
    if(t_Reg == ADS::REG::LOFF_STAT){ Reg_Hex.append(QByteArray::fromHex("08")); }
    if(t_Reg == ADS::REG::RESP1){ Reg_Hex.append(QByteArray::fromHex("09")); }
    if(t_Reg == ADS::REG::RESP2){ Reg_Hex.append(QByteArray::fromHex("0A")); }
    if(t_Reg == ADS::REG::GPIO){ Reg_Hex.append(QByteArray::fromHex("0B")); }
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
    if(t_Data_Str == "0a"){ Reg = ADS::REG::RESP2; }
    if(t_Data_Str == "0b"){ Reg = ADS::REG::GPIO; }
    return Reg;
}

QByteArray ADS1292::get_Read_Reg_Code(ADS::REG t_Reg_Data){
    QByteArray Out_Code;
    QString ADS_Read_Reg_Str = "a"; // 0x61
    Out_Code.append(ADS_Read_Reg_Str);
    Out_Code.append(this->decode_ADS_Reg(t_Reg_Data));
    return Out_Code;
}

QByteArray ADS1292::get_Read_Reg_Code_Int(int counter){
    QString ADS_Read_Reg_Str = "a"; // 0x61
    QByteArray Out_Code;

    Out_Code.append(ADS_Read_Reg_Str);
    if(counter == 0){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::ID));
    } else if (counter == 1){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::CONFIG1));
    } else if (counter == 2){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::CONFIG2));
    } else if (counter == 3){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::LOFF));
    } else if (counter == 4){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::CH1SET));
    } else if (counter == 5){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::CH2SET));
    } else if (counter == 6){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::RLD_SENS));
    } else if (counter == 7){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::LOFF_SENS));
    } else if (counter == 8){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::LOFF_STAT));
    } else if (counter == 9){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::RESP1));
    } else if (counter == 10){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::RESP2));
    } else if (counter == 11){
        Out_Code.append(this->decode_ADS_Reg(ADS::REG::GPIO));
    } else {
        Out_Code.clear();
    }
    return Out_Code;
}

QByteArray ADS1292::get_Finish_Code(){
    QByteArray Out_Code;
    QString ADS_Finish_Str = "F"; // 0x46
    Out_Code.append(ADS_Finish_Str);
    return Out_Code;
}
