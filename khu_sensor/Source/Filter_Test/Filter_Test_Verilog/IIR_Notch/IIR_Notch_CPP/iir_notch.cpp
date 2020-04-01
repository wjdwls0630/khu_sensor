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

    this->m_Signal = nullptr;
}

iir_notch::~iir_notch(){
    delete [] this->m_ACoef;
    delete [] this->m_BCoef;
    delete [] this->m_Input;
    delete [] this->m_Output;

    if(this->m_Signal != nullptr) {
        delete this->m_Signal;
    }
}

int iir_notch::pass_Notch(DSLinkedList<float> &t_Signal) {
    if(this->m_Signal == nullptr){
        this->m_Signal = new DSLinkedList<float>;
    } else {
        this->m_Signal->MakeEmpty();
    }

    float temp = 0.0;
    unsigned int code;
    DoublyIterator<float> s_iter(t_Signal);
    this->m_Signal->MakeEmpty(); // initiailize
    while (!s_iter.NextIsTail()){
        temp = this->Notch_Process(s_iter.Next());
        this->m_Signal->Add(temp);
    }
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

int iir_notch::write_Passed_Signal(const std::string &t_FileName) {
    if(t_FileName != ""){
        // create file
        this->m_OutFile_1.open(t_FileName, std::ios::out);
        std::string temp_file_name = t_FileName; // for removing .txt string
        for (int i = 0; i < 4; ++i) {
            temp_file_name.pop_back();
        }
        this->m_OutFile_2.open(temp_file_name, std::ios::out); // for stimulus on verilog test bench

        // write Signal graph
        if(!this->m_OutFile_1.is_open()){
            std::cerr<<"Can't open the file !"<<'\t'<<t_FileName<<'\n';
            return -1;
        } else if(!this->m_OutFile_2.is_open()){
            std::cerr<<"Can't open the file !"<<'\t'<<temp_file_name<<'\n';
            return -1;
        } else {
            if(this->m_Signal != nullptr) {
                float temp = 0.0; // signal value
                unsigned int code = 0; // for float hex code
                DoublyIterator<float> s_iter(*this->m_Signal);
                while (!s_iter.NextIsTail()){
                    temp = s_iter.Next();
                    // get the IEEE-754 form of code
                    code = *(int*)&temp;
                    if(temp == 0.0){
                        this->m_OutFile_1 << temp <<' '<<"0x00000000"<<'\n';
                    } else{
                        this->m_OutFile_1 << temp <<' '<<"0x"<<std::hex<<code<<'\n';
                    }
                    this->m_OutFile_1.unsetf(std::ios::hex);
                    this->m_OutFile_2 << code << '\n';
                }
            } else {
                std::cerr << "Signal is Empty !" << '\n';
                return 0;
            }
        }
        this->m_OutFile_1.close();
        this->m_OutFile_2.close();
    } else {
        std::cerr << "Can't open the file which has not a filename !" << '\n';
        return -1;
    }
    return 1;
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
    std::cout<<"IIR_Notch - ACoef : "<<'\t';
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
    std::cout<<"IIR_Notch - BCoef : "<<'\t';
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
    std::cout<<"IIR_Notch - Input : "<<'\t';
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
    std::cout<<"IIR_Notch - Output : "<<'\t';
    for (int i = 0; i < NCOEF_NOTCH+1; ++i) {
        std::cout<<*(this->m_Output+i)<<'\t';
    }
    std::cout<<'\n';
    return ;
}

int iir_notch::write_Coefficient(const std::string &t_FileName) {
    this->m_OutFile_3.open(t_FileName, std::ios::out);
    if (!this->m_OutFile_3.is_open()) {
        std::cerr << "Can't open the file !" << '\t' << t_FileName << '\n';
        return -1;
    } else {
        this->m_OutFile_3 << "Sampling_Frequency : " << 250 << '\n'; // Sampling Frequency(Fix) Part Header
        this->m_OutFile_3 << "Low_Cut-off_Frequency : " << 60 << '\n'; // Cut-off Frequency(Fix) Part Header
        this->m_OutFile_3 << "Sampling_Count : " << this->m_Signal->GetLength() << '\n'; // Sampling Count Part Header
        this->m_OutFile_3 << '\n';

        unsigned int code;
        this->m_OutFile_3 << "LPF_ACoef[0:6]\n";
        for (int i = 0; i < NCOEF_NOTCH + 1; ++i) {
            code = *(int *) (&*(this->m_ACoef + i));
            if (*(this->m_ACoef + i) == 0.0) {
                this->m_OutFile_3 << *(this->m_ACoef + i) << ' ' << code << ' ' << "0x00000000" << '\n';
            } else {
                this->m_OutFile_3 << *(this->m_ACoef + i) << ' ' << code << ' ' << "0x" << std::hex << code << '\n';
            }
            this->m_OutFile_3.unsetf(std::ios::hex);
        }
        this->m_OutFile_3 << '\n';

        this->m_OutFile_3 << "LPF_BCoef[0:6]\n";
        for (int i = 0; i < NCOEF_NOTCH + 1; ++i) {
            code = *(int *) (&*(this->m_BCoef + i));
            if (*(this->m_BCoef + i) == 0.0) {
                this->m_OutFile_3 << *(this->m_BCoef + i) << ' ' << code << ' ' << "0x00000000" << '\n';
            } else {
                this->m_OutFile_3 << *(this->m_BCoef + i) << ' ' << code << ' ' << "0x" << std::hex << code << '\n';
            }
            this->m_OutFile_3.unsetf(std::ios::hex);
        }
    }
    this->m_OutFile_3.close();
    return 1;
}













