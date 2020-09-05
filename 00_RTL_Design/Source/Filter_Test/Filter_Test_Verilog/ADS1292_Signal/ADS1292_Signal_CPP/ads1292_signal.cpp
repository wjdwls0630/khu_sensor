//
// Created by ParkJungJin on 2020-04-07.
//

#include "ads1292_signal.hpp"

ads1292_signal::ads1292_signal(DSLinkedList<int> *t_Frequency, float t_SNR)
: signal(t_Frequency, t_SNR), m_Signal_ADS(nullptr) {}

ads1292_signal::~ads1292_signal() {
    if(this->m_Signal_ADS != nullptr){
        delete this->m_Signal_ADS;
    }
}

int ads1292_signal::make_Signal() {
    if(this->m_Signal_ADS == nullptr) {
        this->m_Signal_ADS = new DSLinkedList<signed int>;
    } else {
        this->m_Signal_ADS->MakeEmpty(); // initialize signal
    }

    if (this->signal::make_Signal() == 1){
        DoublyIterator<float>s_iter(*this->signal::transmit());

        signed int temp_int = 0;
        while (!s_iter.NextIsTail()){
            temp_int = (signed int)s_iter.Next();
            this->m_Signal_ADS->Add(temp_int);
        }
    }

    return 1;
}

int ads1292_signal::write_Signal(const std::string &t_FileName){
    if(t_FileName != "") {
        // create file
        this->m_OutFile_1.open(t_FileName, std::ios::out);
        std::string temp_file_name = t_FileName; // for removing .txt string
        for (int i = 0; i < 4; ++i) {
            temp_file_name.pop_back();
        }
        this->m_OutFile_2.open(temp_file_name, std::ios::out); // for stimulus on verilog test bench
        if (!this->m_OutFile_1.is_open()) {
            std::cerr << "Can't open the file !" << '\t' << t_FileName << '\n';
            return -1;
        } else if (!this->m_OutFile_2.is_open()) {
            std::cerr << "Can't open the file !" << '\t' << temp_file_name << '\n';
            return -1;
        } else {
            if (this->m_Signal_ADS != nullptr) {
                signed int temp; // signal value
                unsigned int code; // for float hex code
                DoublyIterator<signed int> s_iter(*this->m_Signal_ADS);
                while (!s_iter.NextIsTail()) {
                    temp = s_iter.Next();
                    // get the IEEE-754 form of code
                    code = *(int *) &temp;
                    this->m_OutFile_1 << temp << ' ' << "0x" <<std::setfill('0') << std::setw(8) <<std::hex << code << '\n';
                    /*
                    if (temp == 0.0) {

                        this->m_OutFile_1 << temp << ' ' << "0x00000000" << '\n';
                    } else {
                        this->m_OutFile_1 << temp << ' ' << "0x" <<std::setfill('0') << std::setw(9) <<std::hex << code << '\n';
                    }
                     */
                    this->m_OutFile_1.unsetf(std::ios::hex);
                    this->m_OutFile_2 << code << '\n';
                }
                this->m_OutFile_1.close();
                this->m_OutFile_2.close();
            } else {
                std::cerr << "Signal is Empty !" << '\n';
                return 0;
            }
        }
    } else {
        std::cerr << "Can't open the file which has not a filename !" << '\n';
        return -1;
    }
    return 1;
}

DSLinkedList<signed int>* ads1292_signal::transmit() const{
    return this->m_Signal_ADS;
}


