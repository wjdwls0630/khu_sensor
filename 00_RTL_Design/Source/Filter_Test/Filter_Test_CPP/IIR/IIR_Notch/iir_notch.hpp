//
// Created by ParkJungJin on 2020-03-24.
//

#ifndef FILTER_TEST_CPP_IIR_NOTCH_HPP
#define FILTER_TEST_CPP_IIR_NOTCH_HPP

#include <iostream>
#include <fstream>

#include "../../Data_Structure/DoublySortedLinkedList.hpp"
#include "../../Data_Structure/DoublyIterator.hpp"

#define NCOEF_NOTCH 5

// mid 10Hz, Sampling Frequency : 250Hz
class iir_notch {

private:
    float *m_ACoef;
    float *m_BCoef;
    float *m_Input; // input samples
    float *m_Output; // output samples
    DSLinkedList<float>* m_Signal; // passed signal
    std::ofstream m_OutFile; // write m_Signal graph
public:
    iir_notch();

    virtual ~iir_notch();

    int pass_Notch(DSLinkedList<float>& t_Signal, const std::string &t_FileName = "../Data/IIR/IIR_Notch/Notch_Passed_Signal_1.txt");

    float Notch_Process(const float &t_Sample);

    DSLinkedList<float>* transmit() const;

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

    friend std::ofstream &operator<<(std::ofstream &fs, const iir_notch &notch);
};




#endif //FILTER_TEST_CPP_NOTCH_LPF_HPP
