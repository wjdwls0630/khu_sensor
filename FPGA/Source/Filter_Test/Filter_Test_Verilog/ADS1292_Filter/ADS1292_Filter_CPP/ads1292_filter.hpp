//
// Created by ParkJungJin on 2020-04-07.
//

#ifndef FILTER_TEST_VERILOG_ADS1292_FILTER_HPP
#define FILTER_TEST_VERILOG_ADS1292_FILTER_HPP

#include <iomanip>
#include "../../IIR_LPF/IIR_LPF_CPP/iir_lpf.hpp"
#include "../../IIR_Notch/IIR_Notch_CPP/iir_notch.hpp"
#include "../../IIR_HPF/IIR_HPF_CPP/iir_hpf.hpp"


class ads1292_filter {
private:
    iir_lpf* m_LPF;
    iir_notch* m_Notch;
    iir_hpf* m_HPF;
    DSLinkedList<signed int>* m_Signal; // passed signal
    std::ofstream m_OutFile_1; // write signed int and hex m_Signal graph
    std::ofstream m_OutFile_2; // write integer for reading from verilog
public:
    ads1292_filter();

    virtual ~ads1292_filter();

    int pass_Filter(DSLinkedList<signed int>& t_Signal);

    //float LPF_Process(const float &t_Sample);

    int write_Passed_Data(const std::string &t_FileName = "");

    int reset();

    DSLinkedList<signed int>* transmit() const;
};


#endif //FILTER_TEST_VERILOG_ADS1292_FILTER_HPP
