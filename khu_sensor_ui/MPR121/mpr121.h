#ifndef MPR121_H
#define MPR121_H

#include <QString>

namespace MPR {
    enum REG {MHDR, NHDAR, NCLR, FDLR, MHDF, NHDAF, NCLF, FDLF, NHDAT, NCLT, FDLT, DEBOUNCE, CDC_CONFIG, CDT_CONFIG};
}

#define UART_SG_MPR_DATA 'M' // 0x4D
#define UART_SG_MPR_READ_REG 'm' // 0x6D

class MPR121{
private:
    MPR::REG m_Reg;

public:
    MPR121();
    virtual ~MPR121();
    //decode REG
    QByteArray decode_MPR_Reg(MPR::REG t_Reg);
    MPR::REG decode_MPR_Reg_Hex(const QString &t_Data_Str);

    //get code to send (reg)
    QByteArray get_Read_Reg_Code(MPR::REG t_Reg_Addr);
    QByteArray get_Read_Reg_Code_Int(int counter);
    QByteArray get_Finish_Code();
};

#endif // MPR121_H
