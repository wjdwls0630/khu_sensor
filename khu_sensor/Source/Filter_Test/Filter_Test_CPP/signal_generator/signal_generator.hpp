//
// Created by ParkJungJin on 2020-03-24.
//

#ifndef FILTER_TEST_CPP_SIGNAL_GENERATOR_HPP
#define FILTER_TEST_CPP_SIGNAL_GENERATOR_HPP

#include <iostream>
#include <fstream>
#include <cmath>
#include <random>
#include "./Data_Structure/AVLTree.hpp"
#include "./Data_Structure/BinaryIterator.hpp"
#include "./Data_Structure/DoublySortedLinkedList.hpp"
#include "./Data_Structure/DoublyIterator.hpp"

# define PERIOD 3

class signal_generator {

private:

    AVLTree<int>* m_Frequency;
    DSLinkedList<float>* m_Signal;
    float m_Fs; // sampling frequency
    float m_Ts; // sampling time
    int m_F0; // Base Frequency
    int m_Sample_Count; // Sampling Count
    float m_SNR; // SNR ratio
    float m_Noise_stdev; // standard deviation of Gaussian noise
    std::ofstream m_OutFile; // write m_Signal graph

public:
    signal_generator(AVLTree<int> *t_Frequency = nullptr, float t_SNR = 0.0);

    virtual ~signal_generator();

    int make_Signal(const std::string &t_FileName = "../../Data/IIR/Signal/Signal_CPP_1.txt");
    int reset(AVLTree<int> *t_Frequency = nullptr, float t_SNR = 0.0);
    AVLTree<int> *getFrequency() const;

    void setFrequency(AVLTree<int> *t_Frequency);

    DSLinkedList<float>* transmit() const;

    void setSignal(DSLinkedList<float> *t_Sine);

    float getFs() const;

    void setFs(float t_Fs);

    float getTs() const;

    void setTs(float t_Ts);

    int getF0() const;

    void setF0(int t_F0);

    int getSampleCount() const;

    void setSampleCount(int t_SampleCount);

    int getMSnr() const;

    void setMSnr(int mSnr);

    float getMNoiseStdev() const;

    void setMNoiseStdev(float mNoiseStdev);

    int gcd(int a, int b); // Greatest common divisor
    int lcm(int a, int b); // Least common Multiple
};


#endif //FILTER_TEST_CPP_SIGNAL_GENERATOR_HPP
