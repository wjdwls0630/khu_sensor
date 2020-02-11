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

QByteArray ADS1292::get_Send_Cmd_Code(ADS::CMD t_Cmd){
    //Verilog - controller.v CM_ADS_SYSCMD = 8'h63 = 'c'
    QByteArray Command_ADS_Sys;
    QByteArray Cmd_Hex;
    //QByteArray Dummy; //why do dummy need in op code?
    QByteArray Out_Code;

    Command_ADS_Sys = "\x63"; // 'c'
    Cmd_Hex = this->decode_ADS_Cmd(t_Cmd);

    Out_Code.append(Command_ADS_Sys);
    Out_Code.append(Cmd_Hex);
    //Out_Code.append(Dummy);

    return Out_Code;
}

QByteArray ADS1292::get_Write_Reg_Code(ADS::REG t_Reg_Start, int t_Num, QByteArray t_Value_List){
    // ADS1292.pdf p.38 RREG
    // t_Num == number of registers to write

    // error sensing : t_Num is greater than 16, make t_Num = 1
    int t_Num_Set;
    if (t_Num > 16){
        t_Num_Set = 1;
    } else{
        t_Num_Set = t_Num;
    }
    QByteArray Command_ADS_Write; // Verilog - controller.v CM_ADS_WREG = 8'h77 = 'w'
    QByteArray Reg_Start_Hex; // Starting register to write;
    QByteArray Reg_Num_to_Write; // number of register to write;
    QByteArray Out_Code;

    QString Reg_Start_Str = "4"; // First Opcode byte 0100 rrrr (010r(process this bit to 0 rrrr)
    QString t_Num_Str = "0"; // First Opcode byte 0000 nnnn (000n(process this bit to 0 nnnn)(limit less equal than 16 (the number of register to read))

    Command_ADS_Write = "\x77"; //'w'

    QString temp_Reg;
    temp_Reg = this->decode_ADS_Reg(t_Reg_Start).toHex();
    Reg_Start_Str += temp_Reg.at(1);
    Reg_Start_Hex = QByteArray::fromHex(Reg_Start_Str.toUtf8());

    QString temp_Num = QString::number(t_Num_Set-1); //n nnnn is the number of registers to read - 1, eg) if you want to read 1 register, Second opcode should be 0000_0000
    t_Num_Str += temp_Num;
    Reg_Num_to_Write = QByteArray::fromHex(t_Num_Str.toUtf8());


    Out_Code.append(Command_ADS_Write);
    Out_Code.append(Reg_Start_Hex);
    Out_Code.append(Reg_Num_to_Write);
    // error sensing : if t_Num_Set != t_Value_List.length() then follow t_Num_Set
    for (int i = 0; i < t_Num_Set; i++){
        Out_Code.append(t_Value_List.at(i));
    }

    return Out_Code;
}

QByteArray ADS1292::get_Read_Reg_Code(ADS::REG t_Reg_Start, int t_Num){

    // ADS1292.pdf p.38 RREG
    // t_Num == number of registers to read

    // error sensing : t_Num is greater than 16, make t_Num = 1
    int t_Num_Set;
    if (t_Num > 16){
        t_Num_Set = 1;
    } else{
        t_Num_Set = t_Num;
    }

    QByteArray Command_ADS_Read; // Verilog - controller.v CM_ADS_RREG = 8'h72 = 'r'
    QByteArray Reg_Start_Hex; // Starting register to read;
    QByteArray Reg_Num_to_Read; // number of register to read;
    QByteArray Out_Code;

    QString Reg_Start_Str = "2"; // First Opcode byte 0010 rrrr (001r(process this bit to 0 rrrr)
    QString t_Num_Str = "0"; // First Opcode byte 0000 nnnn (000n(process this bit to 0 nnnn)(limit less equal than 16 (the number of register to read))

    Command_ADS_Read = "\x72"; // 'r'

    QString temp_Reg;
    temp_Reg = this->decode_ADS_Reg(t_Reg_Start).toHex();
    Reg_Start_Str += temp_Reg.at(1);
    Reg_Start_Hex = QByteArray::fromHex(Reg_Start_Str.toUtf8());

    QString temp_Num = QString::number(t_Num_Set-1); //n nnnn is the number of registers to read - 1, eg) if you want to read 1 register, Second opcode should be 0000_0000
    t_Num_Str += temp_Num;
    Reg_Num_to_Read = QByteArray::fromHex(t_Num_Str.toUtf8());

    Out_Code.append(Command_ADS_Read);
    Out_Code.append(Reg_Start_Hex);
    Out_Code.append(Reg_Num_to_Read);

    return Out_Code;
}

QByteArray ADS1292::get_RDATAC_Code(){

    // ADS1292.pdf p.36 RDATAC

    QByteArray Command_ADS_RDATAC; // Verilog - controller.v CM_ADS_RREG = 8'h65 = 'e'
    QByteArray Cmd_Hex;
    //QByteArray Dummy; //why do dummy need in op code?
    QByteArray Out_Code;

    Command_ADS_RDATAC = "\x65";
    Cmd_Hex = this->decode_ADS_Cmd(ADS::CMD::RDATAC);

    Out_Code.append(Command_ADS_RDATAC);
    Out_Code.append(Cmd_Hex);
    //Out_Code.append(Dummy);

    return Out_Code;
}
