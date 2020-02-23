#include "mpr121.h"

MPR121::MPR121(){}
MPR121::~MPR121(){}

QByteArray MPR121::get_Finish_Code(){
    QByteArray Out_Code;
    QString MPR_Finish_Str = "f"; // 0x46
    Out_Code.append(MPR_Finish_Str);
    return Out_Code;
}
