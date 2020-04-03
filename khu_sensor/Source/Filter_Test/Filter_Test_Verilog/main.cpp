//
// Created by ParkJungJin on 2020-04-03.
//
#include "Signal/Signal_CPP/signal.hpp"
#include "IIR_LPF/IIR_LPF_CPP/iir_lpf.hpp"
#include "IIR_Notch/IIR_Notch_CPP/iir_notch.hpp"
#include "IIR_HPF/IIR_HPF_CPP/iir_hpf.hpp"

int main()
{
    // make signal
    // decide frequency
    DSLinkedList<int>* frequency = nullptr;
    frequency = new DSLinkedList<int>;
    /*
    * Reference/ADS1292/ADS1292.pdf p.7 DR BITS OF CONFIG1 REGISTER 001 (250SPS)
    * –3-dB BANDWIDTH (Hz) 65.5 Hz
    */
    // initialize frequency

    frequency->MakeEmpty();
    frequency->Add(64);
    frequency->Add(63);
    frequency->Add(46);
    frequency->Add(23);
    frequency->Add(36);
    frequency->Add(4);
    frequency->Add(2);
    frequency->Add(8);
    frequency->Add(15);
    frequency->Add(30);
    frequency->Add(50);
    frequency->Add(59);
    frequency->Add(65);
    frequency->Add(61);
    frequency->Add(60);

    signal sg(frequency, 116);
    /*
     * Reference/ADS1292/ADS1292.pdf p.7 DR BITS OF CONFIG1 REGISTER 001 (250SPS)
     * SNR = 117.8
     */
    sg.make_Signal();
    sg.write_Signal("../Data/ADS1292_Filter/Signal.txt");

    // passed lpf
    iir_lpf lpf;
    DSLinkedList<float> *temp = nullptr;
    temp = new DSLinkedList<float>;
    * temp = *sg.transmit();
    lpf.pass_LPF(* temp);
    lpf.write_Passed_Signal("../Data/ADS1292_Filter/IIR_LPF_Passed_Signal_CPP.txt");
    // write coefficient
    lpf.write_Coefficient("../Data/ADS1292_Filter/IIR_LPF_Coefficient.txt");
    delete temp;
    temp = nullptr;
    // passed notch

    iir_notch notch;

    temp = new DSLinkedList<float>;
    * temp = *lpf.transmit();
    notch.pass_Notch(* temp);
    notch.write_Passed_Signal("../Data/ADS1292_Filter/IIR_Notch_Passed_Signal_CPP.txt");
    // write coefficient
    notch.write_Coefficient("../Data/ADS1292_Filter/IIR_Notch_Coefficient.txt");
    delete temp;
    temp = nullptr;

    // passed hpf
    iir_hpf hpf;
    temp = new DSLinkedList<float>;
    * temp = *notch.transmit();
    hpf.pass_HPF(* temp);
    hpf.write_Passed_Signal("../Data/ADS1292_Filter/IIR_HPF_Passed_Signal_CPP.txt");
    // write coefficient
    hpf.write_Coefficient("../Data/ADS1292_Filter/IIR_HPF_Coefficient.txt");
    delete temp;
    temp = nullptr;

    return 1;
}


