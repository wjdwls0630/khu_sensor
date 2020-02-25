#include "mpr121.h"

MPR121::MPR121(){}
MPR121::~MPR121(){}

QByteArray MPR121::decode_MPR_Reg(MPR::REG t_Reg){
    QByteArray Reg_Hex;
    if(t_Reg == MPR::REG::MHDR){ Reg_Hex.append(QByteArray::fromHex("2B")); }
    if(t_Reg == MPR::REG::NHDAR){ Reg_Hex.append(QByteArray::fromHex("2C")); }
    if(t_Reg == MPR::REG::NCLR){ Reg_Hex.append(QByteArray::fromHex("2D")); }
    if(t_Reg == MPR::REG::FDLR){ Reg_Hex.append(QByteArray::fromHex("2E")); }
    if(t_Reg == MPR::REG::MHDF){ Reg_Hex.append(QByteArray::fromHex("2F")); }
    if(t_Reg == MPR::REG::NHDAF){ Reg_Hex.append(QByteArray::fromHex("30")); }
    if(t_Reg == MPR::REG::NCLF){ Reg_Hex.append(QByteArray::fromHex("31")); }
    if(t_Reg == MPR::REG::FDLF){ Reg_Hex.append(QByteArray::fromHex("32")); }
    if(t_Reg == MPR::REG::NHDAT){ Reg_Hex.append(QByteArray::fromHex("33")); }
    if(t_Reg == MPR::REG::NCLT){ Reg_Hex.append(QByteArray::fromHex("34")); }
    if(t_Reg == MPR::REG::FDLT){ Reg_Hex.append(QByteArray::fromHex("35")); }
    if(t_Reg == MPR::REG::DEBOUNCE){ Reg_Hex.append(QByteArray::fromHex("5B")); }
    if(t_Reg == MPR::REG::CDC_CONFIG){ Reg_Hex.append(QByteArray::fromHex("5C")); }
    if(t_Reg == MPR::REG::CDT_CONFIG){ Reg_Hex.append(QByteArray::fromHex("5D")); }

    return Reg_Hex;
}

MPR::REG MPR121::decode_MPR_Reg_Hex(const QString &t_Data_Str){
    MPR::REG Reg;
    if(t_Data_Str == "2b"){ Reg = MPR::REG::MHDR; }
    if(t_Data_Str == "2c"){ Reg = MPR::REG::NHDAR; }
    if(t_Data_Str == "2d"){ Reg = MPR::REG::NCLR; }
    if(t_Data_Str == "2e"){ Reg = MPR::REG::FDLR; }
    if(t_Data_Str == "2f"){ Reg = MPR::REG::MHDF; }
    if(t_Data_Str == "30"){ Reg = MPR::REG::NHDAF; }
    if(t_Data_Str == "31"){ Reg = MPR::REG::NCLF; }
    if(t_Data_Str == "32"){ Reg = MPR::REG::FDLF; }
    if(t_Data_Str == "33"){ Reg = MPR::REG::NHDAT; }
    if(t_Data_Str == "34"){ Reg = MPR::REG::NCLT; }
    if(t_Data_Str == "35"){ Reg = MPR::REG::FDLT; }
    if(t_Data_Str == "5b"){ Reg = MPR::REG::DEBOUNCE; }
    if(t_Data_Str == "5c"){ Reg = MPR::REG::CDC_CONFIG; }
    if(t_Data_Str == "5d"){ Reg = MPR::REG::CDT_CONFIG; }

    return Reg;
}

QByteArray MPR121::get_Read_Reg_Code(MPR::REG t_Reg_Data){
    QString MPR_Read_Reg_Str = "m"; // 0x6D
    QByteArray Out_Code;

    Out_Code.append(MPR_Read_Reg_Str);
    Out_Code.append(this->decode_MPR_Reg(t_Reg_Data));
    return Out_Code;
}

QByteArray MPR121::get_Read_Reg_Code_Int(int counter){
    QString MPR_Read_Reg_Str = "m"; // 0x6D
    QByteArray Out_Code;

    Out_Code.append(MPR_Read_Reg_Str);
    if(counter == 0){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::MHDR));
    } else if (counter == 1){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::NHDAR));
    } else if (counter == 2){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::NCLR));
    } else if (counter == 3){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::FDLR));
    } else if (counter == 4){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::MHDF));
    } else if (counter == 5){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::NHDAF));
    } else if (counter == 6){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::NCLF));
    } else if (counter == 7){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::FDLF));
    } else if (counter == 8){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::NHDAT));
    } else if (counter == 9){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::NCLT));
    } else if (counter == 10){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::FDLT));
    } else if (counter == 11){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::DEBOUNCE));
    } else if (counter == 12){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::CDC_CONFIG));
    } else if (counter == 13){
        Out_Code.append(this->decode_MPR_Reg(MPR::REG::CDT_CONFIG));
    } else {
        Out_Code.clear();
    }
    return Out_Code;
}

QByteArray MPR121::get_Finish_Code(){
    QByteArray Out_Code;
    QString MPR_Finish_Str = "f"; // 0x46
    Out_Code.append(MPR_Finish_Str);
    return Out_Code;
}
