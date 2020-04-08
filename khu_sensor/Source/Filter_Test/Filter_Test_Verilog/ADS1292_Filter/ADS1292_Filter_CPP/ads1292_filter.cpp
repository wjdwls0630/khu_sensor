//
// Created by ParkJungJin on 2020-04-07.
//

#include "ads1292_filter.hpp"

ads1292_filter::ads1292_filter()
:m_LPF(new iir_lpf), m_Notch(new iir_notch), m_HPF(new iir_hpf), m_Signal(nullptr){}

ads1292_filter::~ads1292_filter() {
    if(this->m_LPF != nullptr) {
        delete this->m_LPF;
    }

    if(this->m_Notch != nullptr) {
        delete this->m_Notch;
    }

    if(this->m_HPF != nullptr) {
        delete this->m_HPF;
    }

    if(this->m_Signal != nullptr) {
        delete this->m_Signal;
    }
}

int ads1292_filter::pass_Filter(DSLinkedList<signed int>& t_Signal){
    if(this->m_Signal == nullptr){
        this->m_Signal = new DSLinkedList<signed int>;
    } else {
        this->m_Signal->MakeEmpty();
    }

    DSLinkedList<float> *temp_f = nullptr;
    temp_f = new DSLinkedList<float>;
    DoublyIterator<signed int> s_iter(t_Signal);

    // convert i2f
    while (!s_iter.NextIsTail()){
        temp_f->Add(float(s_iter.Next()));
    }

    // passed lpf
    this->m_LPF->pass_LPF(*temp_f);
    delete temp_f;
    temp_f = nullptr;

    DSLinkedList<float> *temp_signal = nullptr;
    temp_signal = new DSLinkedList<float>;
    *temp_signal = *this->m_LPF->transmit();

    // passed notch
    this->m_Notch->pass_Notch(*temp_signal);

    delete temp_signal;
    temp_signal = nullptr;
    temp_signal = new DSLinkedList<float>;
    *temp_signal = *this->m_Notch->transmit();

    // passed hpf
    this->m_HPF->pass_HPF(*temp_signal);
    delete temp_signal;
    temp_signal = nullptr;
    temp_signal = new DSLinkedList<float>;
    *temp_signal = *this->m_HPF->transmit();

    DoublyIterator<float> s_iter_1(*temp_signal);
    // convert f2i
    while (!s_iter_1.NextIsTail()){
        this->m_Signal->Add((signed int)s_iter_1.Next());
    }

    delete temp_signal;
    temp_signal = nullptr;

    return 1;


}

//float LPF_Process(const float &t_Sample);

int ads1292_filter::write_Passed_Data(const std::string &t_FileName){
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
                unsigned int code = 0; // for hex code
                DoublyIterator<signed int> s_iter(*this->m_Signal);
                while (!s_iter.NextIsTail()){
                    temp = s_iter.Next();
                    // get the IEEE-754 form of code
                    code = *(int*)&temp;
                    this->m_OutFile_1 << temp << ' ' << "0x" <<std::setfill('0') << std::setw(8) <<std::hex << code << '\n';
                    /*
                    if(temp == 0.0){
                        this->m_OutFile_1 << temp <<' '<<"0x00000000"<<'\n';
                    } else{
                        this->m_OutFile_1 << temp <<' '<<"0x"<<std::hex<<code<<'\n';
                    }
                     */
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

int ads1292_filter::reset(){
    if(this->m_Signal != nullptr){
        delete this->m_Signal;
        this->m_Signal = nullptr;
    }

    this->m_LPF->reset();
    this->m_Notch->reset();
    this->m_HPF->reset();
    return 1;
}

DSLinkedList<signed int>* ads1292_filter::transmit() const{
    return this->m_Signal;
}
