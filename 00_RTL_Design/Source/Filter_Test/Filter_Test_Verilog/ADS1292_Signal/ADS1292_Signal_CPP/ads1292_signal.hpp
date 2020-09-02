//
// Created by ParkJungJin on 2020-04-07.
//

#ifndef FILTER_TEST_VERILOG_ADS1292_SIGNAL_HPP
#define FILTER_TEST_VERILOG_ADS1292_SIGNAL_HPP

#include <iomanip>
#include "../../Signal/Signal_CPP/signal.hpp"

class ads1292_signal: public signal {
private:
    DSLinkedList<signed int>* m_Signal_ADS;
public:
    ads1292_signal(DSLinkedList<int> *t_Frequency = nullptr, float t_SNR = 0.0);

    virtual ~ads1292_signal();

    int make_Signal();
    int write_Signal(const std::string &t_FileName = "");
    DSLinkedList<signed int>* transmit() const;
};


#endif //FILTER_TEST_VERILOG_ADS1292_SIGNAL_HPP
