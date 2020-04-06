//
// Created by ParkJungJin on 2020-03-24.
//

#include "signal.hpp"

signal::signal(DSLinkedList<int> *t_Frequency, float t_SNR)
: m_Frequency(nullptr), m_Signal(nullptr), m_SNR(t_SNR) {

    //sampling freq must be more 2 times of maximum freq
    //this->m_Fs = 5. * (f_iter.Last()), this->m_Ts = 1. / this->m_Fs; //sampling freq, sampling period
    this->m_Fs = 250.0, this->m_Ts = 1. / this->m_Fs; //sampling freq, sampling period
    this->m_F0 = 1; // Base Frequency
    if (t_Frequency != nullptr) {
        this->m_Frequency = new DSLinkedList<int>;

        *this->m_Frequency = *t_Frequency; // deep copy
        this->m_Frequency->Sort();
        DoublyIterator<int> f_iter(*this->m_Frequency);
        //if frequencies is integer, base freq is GCD of frequencies,
        //if frequencies is not integer, we sholuld get base freq by period, LCM  of period will be base band period
        f_iter.Next(); // move to index 0
        if(this->m_Frequency->GetLength() > 1){
            this->m_F0 = this->gcd(f_iter.Cur(), f_iter.Next());
            while (!f_iter.NextIsTail()) {
                this->m_F0 = this->gcd(this->m_F0, f_iter.Next());
            }
        } else {
            this->m_F0 = f_iter.Cur();
        }
        f_iter.ResetToHead();

        this->m_Sample_Count = (this->m_Fs/this->m_F0) * PERIOD;

        // make noise array
        // standard deviation of noise
        if(this->m_SNR != 0){
            this->m_Noise_stdev = sqrt(1/pow(10, this->m_SNR/10));
        } else {
            this->m_Noise_stdev = 0;
        }
    } else {
        this->m_Signal = nullptr;
        this->m_Frequency = nullptr;
    }
}

signal::~signal() {
    if(this->m_Frequency != nullptr){
        delete this->m_Frequency;
    }

    if(this->m_Signal != nullptr){
        delete this->m_Signal;
    }
}

int signal::make_Signal(){
    if(this->m_Signal == nullptr) {
        this->m_Signal = new DSLinkedList<float>;
    } else {
        this->m_Signal->MakeEmpty(); // initialize signal
    }

    DoublyIterator<int> f_iter(*this->m_Frequency);
    float t = 0.0; // Start Time
    float temp = 0.0; // signal value

    // add_noise
    // AWGN(Additive White Gaussian Noise)
    std::default_random_engine generator;
    std::normal_distribution<float> dist(0.0, this->m_Noise_stdev);

    for (int i = 0; i <= this->m_Sample_Count ; i++, t+=this->m_Ts) {
        while (!f_iter.NextIsTail()){
            temp += sin(2.0*M_PI*f_iter.Next()*t); // TODO changed select sine, cosine, square wave
        }

        if(this->m_SNR != 0){
            temp += dist(generator);
        }

        this->m_Signal->Add(temp);
        f_iter.ResetToHead(); // initialize iterator
        temp = 0.0; // initialize value
    }
    return 1;
}

int signal::write_Signal(const std::string &t_FileName){
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
            if (this->m_Signal != nullptr) {
                float temp; // signal value
                unsigned int code; // for float hex code
                DoublyIterator<float> s_iter(*this->m_Signal);
                while (!s_iter.NextIsTail()) {
                    temp = s_iter.Next();
                    // get the IEEE-754 form of code
                    code = *(int *) &temp;
                    if (temp == 0.0) {
                        this->m_OutFile_1 << temp << ' ' << "0x00000000" << '\n';
                    } else {
                        this->m_OutFile_1 << temp << ' ' << "0x" << std::hex << code << '\n';
                    }
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

int signal::read_Signal(const std::string &t_FileName){
    if(this->m_Signal == nullptr) {
        this->m_Signal = new DSLinkedList<float>;
    } else {
        this->m_Signal->MakeEmpty(); // initialize signal
    }

    if(t_FileName != ""){
        // select file
        this->m_inFile_1.open(t_FileName, std::ios::in);
        if (!this->m_inFile_1.is_open()) {
            std::cerr << "Can't open the file !" << '\t' << t_FileName << '\n';
            return -1;
        } else {
            std::string temp; // reading value
            unsigned int code; // for hex code
            float value; // signal value
            std::size_t pos;
            while(getline(this->m_inFile_1, temp)){
                std::istringstream(temp) >> code;
                value = *(float*)&code;
                this->m_Signal->Add(value);
            }
            this->m_inFile_1.close();
        }
    } else {
        std::cerr << "Can't open the file which has not a filename !" << '\n';
        return -1;
    }
    return 1;
}

int signal::reset(DSLinkedList<int> *t_Frequency, float t_SNR) {
    if (t_Frequency == nullptr) {
        return -1;
    } else {
        if(this->m_Frequency != nullptr){
            delete this->m_Frequency;
        }

        if(this->m_Signal != nullptr){
            delete this->m_Signal;
        }

        this->m_Frequency = new DSLinkedList<int>;
        this->m_Signal = new DSLinkedList<float>; //initialize m_Signal

        *this->m_Frequency = *t_Frequency; // deep copy

        DoublyIterator<int> f_iter(*this->m_Frequency);

        //sampling freq must be more 2 times of maximum freq
        //this->m_Fs = 5. * (f_iter.Last()), this->m_Ts = 1. / this->m_Fs; //sampling freq, sampling period
        this->m_Fs = 250.0, this->m_Ts = 1. / this->m_Fs; //sampling freq, sampling period
        //if frequencies is integer, base freq is GCD of frequencies,
        //if frequencies is not integer, we sholuld get base freq by period, LCM  of period will be base band period
        f_iter.Next(); // move to index 0
        if(this->m_Frequency->GetLength() > 1){
            this->m_F0 = this->gcd(f_iter.Cur(), f_iter.Next());
            while (!f_iter.NextIsTail()) {
                this->m_F0 = this->gcd(this->m_F0, f_iter.Next());
            }
        } else {
            this->m_F0 = f_iter.Cur();
        }

        this->m_Sample_Count = (this->m_Fs/this->m_F0) * PERIOD;

        // make noise array
        // standard deviation of noise
        if(this->m_SNR != 0){
            this->m_Noise_stdev = sqrt(1/pow(10, this->m_SNR/10));
        } else {
            this->m_Noise_stdev = 0;
        }
    }
    return 1;
}

DSLinkedList<int> *signal::getFrequency() const {
    return m_Frequency;
}

void signal::setFrequency(DSLinkedList<int> *t_Frequency) {
    m_Frequency = t_Frequency;
}

DSLinkedList<float>* signal::transmit() const {
    return this->m_Signal;
}

void signal::setSignal(DSLinkedList<float> *t_Signal) {
    m_Signal = t_Signal;
}

float signal::getFs() const {
    return m_Fs;
}

void signal::setFs(float t_Fs) {
    m_Fs = t_Fs;
}

float signal::getTs() const {
    return m_Ts;
}

void signal::setTs(float t_Ts) {
    m_Ts = t_Ts;
}

int signal::getF0() const {
    return m_F0;
}

void signal::setF0(int t_F0) {
    m_F0 = t_F0;
}

int signal::getSampleCount() const {
    return m_Sample_Count;
}

void signal::setSampleCount(int t_SampleCount) {
    m_Sample_Count = t_SampleCount;
}

int signal::getMSnr() const {
    return m_SNR;
}

void signal::setMSnr(int mSnr) {
    m_SNR = mSnr;
}

float signal::getMNoiseStdev() const {
    return m_Noise_stdev;
}

void signal::setMNoiseStdev(float mNoiseStdev) {
    m_Noise_stdev = mNoiseStdev;
}

int signal::gcd(int a, int b){
    while(b!=0){
        int r = a%b;
        a= b;
        b= r;
    }
    return a;
}

int signal::lcm(int a, int b){
    return a * b / this->gcd(a,b);
}






