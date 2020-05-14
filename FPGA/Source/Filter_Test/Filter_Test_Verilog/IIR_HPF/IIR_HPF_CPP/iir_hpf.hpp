//
// Created by ParkJungJin on 2020-03-24.
//

#ifndef FILTER_TEST_CPP_IIR_HPF_HPP
#define FILTER_TEST_CPP_IIR_HPF_HPP

#include <iostream>
#include <fstream>
#include <cmath>
#include "../../Library_CPP/Data_Structure_CPP/DoublySortedLinkedList.hpp"
#include "../../Library_CPP/Data_Structure_CPP/DoublyIterator.hpp"

#define FILTER_CAP 0.0001
#define SPR 250.0
#define CUTOFF 5.0

class iir_hpf {

private:

    float m_ts;
    float m_tau;
    float m_omega;
    float m_filter_R;
    float m_omega_cal;
    float m_Input;
    float m_Output;
    DSLinkedList<float>* m_Signal; // passed signal
    std::ofstream m_OutFile_1; // write float and hex m_Signal graph
    std::ofstream m_OutFile_2; // write integer for reading from verilog
    std::ofstream m_OutFile_3; // write coefficient file

public:
    iir_hpf();

    virtual ~iir_hpf();

    int pass_HPF(DSLinkedList<float>& t_Signal);

    float HPF_Process(const float &t_Sample);

    int write_Passed_Signal(const std::string &t_FileName = "");

    int reset();

    DSLinkedList<float>* transmit() const;

    float getTs() const;

    void setTs(float t_Ts);

    void showTs();

    float getTau() const;

    void setTau(float t_Tau);

    void showTau();

    float getOmega() const;

    void setOmega(float t_Omega);

    void showOmega();

    float getFilterR() const;

    void setFilterR(float t_FilterR);

    void showFilterR();

    float getOmegaCal() const;

    void setOmegaCal(float t_OmegaCal);

    void showOmegaCal();

    float getInput() const;

    void setInput(float t_Input);

    void showInput();

    float getOutput() const;

    void setOutput(float t_Output);

    void showOutput();

    int write_Coefficient(const std::string &t_FileName);

};


#endif //FILTER_TEST_CPP_IIR_HPF_HPP
