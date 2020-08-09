//
// Created by ParkJungJin on 2020-03-24.
//

#include "iir_hpf.hpp"

iir_hpf::iir_hpf()
:  m_ts(1.0/SPR), m_filter_R(1.0/(CUTOFF*2*M_PI*FILTER_CAP)) {
    this->m_tau = FILTER_CAP * this->m_filter_R;
    this->m_omega = this->m_tau/(this->m_tau+this->m_ts);
    this->m_omega_cal = SPR/(2*M_PI*CUTOFF+SPR);
    this->m_Signal = new DSLinkedList<float>;
}

iir_hpf::~iir_hpf() { delete this->m_Signal; }

int iir_hpf::pass_HPF(DSLinkedList<float> &t_Signal, const std::string &t_FileName) {
    this->m_OutFile.open(t_FileName, std::ios::out);
    if(!this->m_OutFile.is_open()){
        std::cerr<<"Can't open the file !"<<'\t'<<t_FileName<<'\n';
        return -1;
    } else {
        this->m_OutFile << "Sampling_Frequency : "<<250<<'\n'; // Sampling Frequency(Fix) Part Header
        this->m_OutFile << "Cut-Off_Frequency : "<<5<<'\n'; // Cut-off Frequency(Fix) Part Header
        this->m_OutFile << "Sampling_Count : "<<t_Signal.GetLength()<<'\n'; // Sampling Count Part Header

        this->m_OutFile << "Data : "<<'\n'; // Data Part Header

        float value = 0;
        unsigned int code;
        DoublyIterator<float> s_iter(t_Signal);
        this->m_Signal->MakeEmpty(); // initiailize
        while (!s_iter.NextIsTail()){
            value = this->HPF_Process(s_iter.Next());
            this->m_Signal->Add(value);
            // get the IEEE-754 form of code
            code = *(int*)&value;
            if(value == 0.0){
                this->m_OutFile << value <<' '<<"0x00000000"<<'\n';
            } else{
                this->m_OutFile << value <<' '<<"0x"<< std::setfill ('0') << std::setw(3)<<std::hex<<code<<'\n';
            }
            this->m_OutFile.unsetf(std::ios::hex);
        }

    }
    this->m_OutFile.close();
    return 1;
}

float iir_hpf::HPF_Process(const float &t_Sample) {
    float result;
    result = this->m_omega_cal * this->m_Output + this->m_omega_cal * (t_Sample-this->m_Input);

    // shift
    this->m_Output = result;
    this->m_Input = t_Sample;

    return result;
}

DSLinkedList<float>* iir_hpf::transmit() const {
    return this->m_Signal;
}



float iir_hpf::getTs() const {
    return this->m_ts;
}

void iir_hpf::setTs(float t_Ts) {
    this->m_ts = t_Ts;
}

void iir_hpf::showTs(){
    std::cout<<"IIR_HPF - Ts : \t"<<this->getTs()<<'\n';
}

float iir_hpf::getTau() const {
    return this->m_tau;
}

void iir_hpf::setTau(float t_Tau) {
    this->m_tau = t_Tau;
}

void iir_hpf::showTau(){
    std::cout<<"IIR_HPF - Tau : \t"<<this->getTau()<<'\n';
}

float iir_hpf::getOmega() const {
    return this->m_omega;
}

void iir_hpf::setOmega(float t_Omega) {
    this->m_omega = t_Omega;
}

void iir_hpf::showOmega(){
    std::cout<<"IIR_HPF - Omega : \t"<<this->getOmega()<<'\n';
}

float iir_hpf::getFilterR() const {
    return this->m_filter_R;
}

void iir_hpf::setFilterR(float t_FilterR) {
    this->m_filter_R = t_FilterR;
}

void iir_hpf::showFilterR(){
    std::cout<<"IIR_HPF - FilterR : \t"<<this->getFilterR()<<'\n';
}

float iir_hpf::getOmegaCal() const {
    return this->m_omega_cal;
}

void iir_hpf::setOmegaCal(float t_OmegaCal) {
    this->m_omega_cal = t_OmegaCal;
}

void iir_hpf::showOmegaCal(){
    std::cout<<"IIR_HPF - OmegaCal : \t"<<this->getOmegaCal()<<'\n';
}

float iir_hpf::getInput() const {
    return this->m_Input;
}

void iir_hpf::setInput(float t_Input) {
    this->m_Input = t_Input;
}

void iir_hpf::showInput(){
    std::cout<<"IIR_HPF - Input : \t"<<this->getInput()<<'\n';
}

float iir_hpf::getOutput() const {
    return this->m_Output;
}

void iir_hpf::setOutput(float t_Output) {
    this->m_Output = t_Output;
}

void iir_hpf::showOutput(){
    std::cout<<"IIR_HPF - Output : \t"<<this->getOutput()<<'\n';
}

std::ofstream &operator<<(std::ofstream &fs, const iir_hpf &hpf) {
    fs<<"HPF_Ts : "<<hpf.getTs()<<'\n';
    fs<<"HPF_Tau : "<<hpf.getTau()<<'\n';
    fs<<"HPF_Omega : "<<hpf.getOmega()<<'\n';
    fs<<"HPF_FilterR : "<<hpf.getFilterR()<<'\n';
    fs<<"HPF_OmegaCal : "<<hpf.getOmegaCal()<<'\n';
    fs<<"HPF_Input : "<<hpf.getInput()<<'\n';
    fs<<"HPF_Output : "<<hpf.getOutput()<<'\n';
    return fs;
}






