//
// Created by ParkJungJin on 2020-03-24.
//

#include "iir_lpf.hpp"


iir_lpf::iir_lpf(){
    this->m_ACoef = new float[NCOEF_LPF+1]{
            0.01336978300344553300,
            0.02673956600689106700,
            0.01336978300344553300
    };

    this->m_BCoef = new float[NCOEF_LPF+1]{
            1.00000000000000000000,
            -1.64745998107697660000,
            0.70089678118840248000
    };

    this->m_Input = new float[NCOEF_LPF+1];

    this->m_Output = new float[NCOEF_LPF+1];

    this->m_Signal = new DSLinkedList<float>;

}

iir_lpf::~iir_lpf(){
    delete [] this->m_ACoef;
    delete [] this->m_BCoef;
    delete [] this->m_Input;
    delete [] this->m_Output;
    delete this->m_Signal;
}

int iir_lpf::pass_LPF(DSLinkedList<float>& t_Signal, const std::string &t_FileName){
    this->m_OutFile.open(t_FileName, std::ios::out);
    if(!this->m_OutFile.is_open()){
        std::cerr<<"Can't open the file !"<<'\t'<<t_FileName<<'\n';
        return -1;
    } else {
        this->m_OutFile << "Sampling_Frequency : "<<250<<'\n'; // Sampling Frequency(Fix) Part Header
        this->m_OutFile << "Cut-Off_Frequency : "<<10<<'\n'; // Cut-off Frequency(Fix) Part Header
        this->m_OutFile << "Sampling_Count : "<<t_Signal.GetLength()<<'\n'; // Sampling Count Part Header

        this->m_OutFile << "Data : "<<'\n'; // Data Part Header

        float value = 0;
        DoublyIterator<float> s_iter(t_Signal);
        this->m_Signal->MakeEmpty(); // initiailize
        while (!s_iter.NextIsTail()){
            value = this->LPF_Process(s_iter.Next());
            this->m_Signal->Add(value);
            this->m_OutFile<<value<<'\n';
        }

    }
    this->m_OutFile.close();
    return 1;
}

float iir_lpf::LPF_Process(const float &t_Sample) {
    for (int i = NCOEF_LPF; i > 0 ; i--) {
        this->m_Input[i] = this->m_Input[i-1];
        this->m_Output[i] = this->m_Output[i-1];
    }

    this->m_Input[0] = t_Sample;
    this->m_Output[0] = this->m_ACoef[0] * this->m_Input[0];
    for (int i = 1; i < NCOEF_LPF+1 ; i++) {
        this->m_Output[0] += this->m_ACoef[i] * this->m_Input[i] - this->m_BCoef[i] * this->m_Output[i];
    }

    return this->m_Output[0];
}

DSLinkedList<float>* iir_lpf::transmit() const {
    return this->m_Signal;
}



float *iir_lpf::getACoef() const {
    return this->m_ACoef;
}

void iir_lpf::setACoef(float *t_ACoef) {
    this->m_ACoef = t_ACoef;
}

void iir_lpf::showACoef() {
    std::cout<<"IIR_LPF - ACoef : "<<'\t';
    for (int i = 0; i < NCOEF_LPF+1; ++i) {
        std::cout<<*(this->m_ACoef+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

float *iir_lpf::getBCoef() const {
    return this->m_BCoef;
}

void iir_lpf::setBCoef(float *t_BCoef) {
    this->m_BCoef = t_BCoef;
}

void iir_lpf::showBCoef() {
    std::cout<<"IIR_LPF - BCoef : "<<'\t';
    for (int i = 0; i < NCOEF_LPF+1; ++i) {
        std::cout<<*(this->m_BCoef+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

float *iir_lpf::getInput() {
    return this->m_Input;
}

void iir_lpf::setInput(float *t_Input) {
    this->m_Input = t_Input;
}

void iir_lpf::showInput() {
    std::cout<<"IIR_LPF - Input : "<<'\t';
    for (int i = 0; i < NCOEF_LPF+1; ++i) {
        std::cout<<*(this->m_Input+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

float *iir_lpf::getOutput() {
    return this->m_Output;
}

void iir_lpf::setOutput(float *t_Output) {
    this->m_Output = t_Output;
}

void iir_lpf::showOutput(){
    std::cout<<"IIR_LPF - Output : "<<'\t';
    for (int i = 0; i < NCOEF_LPF+1; ++i) {
        std::cout<<*(this->m_Output+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

std::ofstream &operator<<(std::ofstream &fs, const iir_lpf &lpf) {

    fs<<"LPF_ACoef : ";
    for (int i = 0; i < NCOEF_LPF+1; ++i) {
        fs<<*(lpf.m_ACoef+i)<<' ';
    }
    fs<<'\n';

    fs<<"LPF_BCoef : ";
    for (int i = 0; i < NCOEF_LPF+1; ++i) {
        fs<<*(lpf.m_BCoef+i)<<' ';
    }
    fs<<'\n';

    fs<<"LPF_Input : ";
    for (int i = 0; i < NCOEF_LPF+1; ++i) {
        fs<<*(lpf.m_Input+i)<<' ';
    }
    fs<<'\n';

    fs<<"LPF_Output : ";
    for (int i = 0; i < NCOEF_LPF+1; ++i) {
        fs<<*(lpf.m_Output+i)<<' ';
    }
    fs<<'\n';
    return fs;
}








