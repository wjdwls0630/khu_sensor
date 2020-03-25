//
// Created by ParkJungJin on 2020-03-24.
//

#include "iir_notch.hpp"


iir_notch::iir_notch(){
    this->m_ACoef = new float[NCOEF_NOTCH+1]{
            0.90058301430561660000,
            -0.22683676727047436000,
            1.81544980872044200000,
            -0.22683676727047436000,
            0.90058301430561660000
    };

    this->m_BCoef = new float[NCOEF_NOTCH+1]{
            1.00000000000000000000,
            -0.23849243624947844000,
            1.80168874042915350000,
            -0.21430582988195795000,
            0.80794959133320132000
    };

    this->m_Input = new float[NCOEF_NOTCH+1];
    this->m_Output = new float[NCOEF_NOTCH+1];

    this->m_Signal = new DSLinkedList<float>;
}

iir_notch::~iir_notch(){
    delete [] this->m_ACoef;
    delete [] this->m_BCoef;
    delete [] this->m_Input;
    delete [] this->m_Output;

    delete this->m_Signal;
}

int iir_notch::pass_Notch(DSLinkedList<float> &t_Signal, const std::string &t_FileName) {
    this->m_OutFile.open(t_FileName, std::ios::out);
    if(!this->m_OutFile.is_open()){
        std::cerr<<"Can't open the file !"<<'\t'<<t_FileName<<'\n';
        return -1;
    } else {
        this->m_OutFile << "Sampling_Frequency : "<<250<<'\n'; // Sampling Frequency(Fix) Part Header
        this->m_OutFile << "Low_Cut-off_Frequency : "<<60<<'\n'; // Cut-off Frequency(Fix) Part Header
        this->m_OutFile << "Sampling_Count : "<<t_Signal.GetLength()<<'\n'; // Sampling Count Part Header

        this->m_OutFile << "Data : "<<'\n'; // Data Part Header

        float value = 0;
        DoublyIterator<float> s_iter(t_Signal);
        this->m_Signal->MakeEmpty(); // initiailize
        while (!s_iter.NextIsTail()){
            value = this->Notch_Process(s_iter.Next());
            this->m_Signal->Add(value);
            this->m_OutFile<<value<<'\n';
        }

    }
    this->m_OutFile.close();
    return 1;
}

float iir_notch::Notch_Process(const float &t_Sample) {
    for (int i = NCOEF_NOTCH; i > 0 ; i--) {
        this->m_Input[i] = this->m_Input[i-1];
        this->m_Output[i] = this->m_Output[i-1];
    }

    this->m_Input[0] = t_Sample;
    this->m_Output[0] = this->m_ACoef[0] * this->m_Input[0];
    for (int i = 1; i < NCOEF_NOTCH+1 ; i++) {
        this->m_Output[0] += this->m_ACoef[i] * this->m_Input[i] - this->m_BCoef[i] * this->m_Output[i];
    }

    return this->m_Output[0];
}

DSLinkedList<float>* iir_notch::transmit() const {
    return this->m_Signal;
}



float *iir_notch::getACoef() const {
    return this->m_ACoef;
}

void iir_notch::setACoef(float *t_ACoef) {
    this->m_ACoef = t_ACoef;
}

void iir_notch::showACoef() {
    std::cout<<"Notch - ACoef : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        std::cout<<*(this->m_ACoef+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

float *iir_notch::getBCoef() const {
    return this->m_BCoef;
}

void iir_notch::setBCoef(float *t_BCoef) {
    this->m_BCoef = t_BCoef;
}

void iir_notch::showBCoef() {
    std::cout<<"Notch - BCoef : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        std::cout<<*(this->m_BCoef+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

float *iir_notch::getInput() {
    return this->m_Input;
}

void iir_notch::setInput(float *t_Input) {
    this->m_Input = t_Input;
}

void iir_notch::showInput() {
    std::cout<<"Notch - Input : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        std::cout<<*(this->m_Input+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

float *iir_notch::getOutput() {
    return this->m_Output;
}

void iir_notch::setOutput(float *t_Output) {
    this->m_Output = t_Output;
}

void iir_notch::showOutput(){
    std::cout<<"Notch - Output : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        std::cout<<*(this->m_Output+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

std::ofstream &operator<<(std::ofstream &fs, const iir_notch &notch) {

    fs<<"Notch - ACoef : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        fs<<*(notch.m_ACoef+i)<<'\t';
    }
    fs<<'\n';

    fs<<"Notch - BCoef : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        fs<<*(notch.m_BCoef+i)<<'\t';
    }
    fs<<'\n';

    fs<<"Notch - Input : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        fs<<*(notch.m_Input+i)<<'\t';
    }
    fs<<'\n';

    fs<<"Notch - Output : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        fs<<*(notch.m_Output+i)<<'\t';
    }
    fs<<'\n';
    return fs;
}












