//
// Created by ParkJungJin on 2020-03-24.
//

#ifndef FILTER_TEST_CPP_IIR_NOTCH_HPP
#define FILTER_TEST_CPP_IIR_NOTCH_HPP

#include <iostream>
#include <fstream>

#include "../../Library_CPP/Data_Structure_CPP/DoublySortedLinkedList.hpp"
#include "../../Library_CPP/Data_Structure_CPP/DoublyIterator.hpp"

#define NCOEF_NOTCH 5

// mid 60Hz, Sampling Frequency : 250Hz
class iir_notch {

private:
    float *m_ACoef;
    float *m_BCoef;
    float *m_Input; // input samples
    float *m_Output; // output samples
    DSLinkedList<float>* m_Signal; // passed signal
    std::ofstream m_OutFile_1; // write float and hex m_Signal graph
    std::ofstream m_OutFile_2; // write integer for reading from verilog
    std::ofstream m_OutFile_3; // write coefficient file
public:
    iir_notch();

    virtual ~iir_notch();

    int pass_Notch(DSLinkedList<float>& t_Signal);

    float Notch_Process(const float &t_Sample);

    int write_Passed_Signal(const std::string &t_FileName = "");

    DSLinkedList<float>* transmit() const;

    int reset();

    float *getACoef() const;

    void setACoef(float *t_ACoef);

    void showACoef();

    float *getBCoef() const;

    void setBCoef(float *t_BCoef);

    void showBCoef();

    float *getInput();

    void setInput(float *t_Input);

    void showInput();

    float *getOutput();

    void setOutput(float *t_Output);

    void showOutput();

    int write_Coefficient(const std::string &t_FileName);
};




#endif //FILTER_TEST_CPP_NOTCH_LPF_HPP
