//
// Created by ParkJungJin on 2020-03-24.
//

#include "signal_generator.hpp"

signal_generator::signal_generator(DSLinkedList<int> *t_Frequency, float t_SNR)
: m_Frequency(nullptr), m_Signal(nullptr), m_SNR(t_SNR) {
    if (t_Frequency != nullptr) {
        this->m_Frequency = new DSLinkedList<int>;
        this->m_Signal = new DSLinkedList<float>; //initialize m_Signal

        *this->m_Frequency = *t_Frequency; // deep copy
        this->m_Frequency->Sort();
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

signal_generator::~signal_generator() {
    if(this->m_Frequency != nullptr){
        delete this->m_Frequency;
    }

    if(this->m_Signal != nullptr){
        delete this->m_Signal;
    }
}

int signal_generator::make_Signal(const std::string &t_FileName){
    this->m_OutFile.open(t_FileName, std::ios::out);
    DoublyIterator<int> f_iter(*this->m_Frequency);
    // write Signal graph
    if(!this->m_OutFile.is_open()){
        std::cerr<<"Can't open the file !"<<'\t'<<t_FileName<<'\n';
        return -1;
    } else {
        this->m_OutFile << "Frequency_List : "; // Frequency Part Header
        while (!f_iter.NextIsTail()){
            this->m_OutFile << f_iter.Next() << " ";
        }
        this->m_OutFile << '\n';

        this->m_OutFile << "Sampling_Frequency : "<<this->m_Fs<<'\n'; // Sampling Frequency Part Header

        this->m_OutFile << "Base_Frequency : "<<this->m_F0<<'\n'; // Base Frequency Part Header

        this->m_OutFile << "Sampling_Count : "<<this->m_Sample_Count<<'\n'; // Sampling Count Part Header

        f_iter.ResetToHead(); // initialize iterator

        this->m_OutFile << "Data : "<<'\n'; // Data Part Header
        float t = 0.0; // Start Time
        float temp = 0.0; // signal value

        // add_noise
        // AWGN(Additive White Gaussian Noise)
        std::default_random_engine generator;
        std::normal_distribution<float> dist(0.0, this->m_Noise_stdev);

        for (int i = 0; i <= this->m_Sample_Count ; i++, t+=this->m_Ts) {
            while (!f_iter.NextIsTail()){
                temp += sin(2.0*M_PI*f_iter.Next()*t);
            }

            if(this->m_SNR != 0){
                temp += dist(generator);
            }

            this->m_Signal->Add(temp);
            this->m_OutFile << temp <<'\n';
            f_iter.ResetToHead(); // initialize iterator
            temp = 0.0; // initialize value
        }
    }
    this->m_OutFile.close();
    return 1;
}

int signal_generator::reset(DSLinkedList<int> *t_Frequency, float t_SNR) {
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
}

DSLinkedList<int> *signal_generator::getFrequency() const {
    return m_Frequency;
}

void signal_generator::setFrequency(DSLinkedList<int> *t_Frequency) {
    m_Frequency = t_Frequency;
}

DSLinkedList<float>* signal_generator::transmit() const {
    return this->m_Signal;
}

void signal_generator::setSignal(DSLinkedList<float> *t_Signal) {
    m_Signal = t_Signal;
}

float signal_generator::getFs() const {
    return m_Fs;
}

void signal_generator::setFs(float t_Fs) {
    m_Fs = t_Fs;
}

float signal_generator::getTs() const {
    return m_Ts;
}

void signal_generator::setTs(float t_Ts) {
    m_Ts = t_Ts;
}

int signal_generator::getF0() const {
    return m_F0;
}

void signal_generator::setF0(int t_F0) {
    m_F0 = t_F0;
}

int signal_generator::getSampleCount() const {
    return m_Sample_Count;
}

void signal_generator::setSampleCount(int t_SampleCount) {
    m_Sample_Count = t_SampleCount;
}

int signal_generator::getMSnr() const {
    return m_SNR;
}

void signal_generator::setMSnr(int mSnr) {
    m_SNR = mSnr;
}

float signal_generator::getMNoiseStdev() const {
    return m_Noise_stdev;
}

void signal_generator::setMNoiseStdev(float mNoiseStdev) {
    m_Noise_stdev = mNoiseStdev;
}

int signal_generator::gcd(int a, int b){
    while(b!=0){
        int r = a%b;
        a= b;
        b= r;
    }
    return a;
}

int signal_generator::lcm(int a, int b){
    return a * b / this->gcd(a,b);
}






