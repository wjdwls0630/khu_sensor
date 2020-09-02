//
// Created by ParkJungJin on 2020-03-24.
//

#include <fstream>

#include "Data_Structure/DoublySortedLinkedList.hpp"
#include "Signal_Generator/signal_generator.hpp"
#include "IIR/IIR_LPF/iir_lpf.hpp"
#include "IIR/IIR_Notch/iir_notch.hpp"
#include "IIR/IIR_HPF/iir_hpf.hpp"

int main()
{
    iir_lpf lpf;
    iir_notch notch;
    iir_hpf hpf;

    // write coefficient
    std::ofstream out("../Data/IIR/IIR_LPF/IIR_LPF_Coefficient.txt", std::ios::out);
    if (!out) {
        std::cerr << "Cannot open \"../Data/IIR/IIR_LPF/IIR_LPF_Coefficient\" file" << '\n';
        return -1;
    } else{
        out << lpf;
        out.close();
    }

    out.open("../Data/IIR/IIR_Notch/IIR_Notch_Coefficient.txt", std::ios::out);
    if (!out) {
        std::cerr << "Cannot open \"../Data/IIR/IIR_Notch/IIR_Notch_Coefficient.txt\" file" << '\n';
        return -1;
    } else{
        out << notch;
        out.close();
    }

    out.open("../Data/IIR/IIR_HPF/IIR_HPF_Coefficient.txt", std::ios::out);
    if (!out) {
        std::cerr << "Cannot open \"../Data/IIR/IIR_HPF/IIR_HPF_Coefficient.txt\" file" << '\n';
        return -1;
    } else{
        out << hpf;
        out.close();
    }

    // Test each pass filter

    // make signal
    // decide frequency
    DSLinkedList<int>* frequency = nullptr;
    frequency = new DSLinkedList<int>;
    for (int i = 0; i <= 66 ; i++) {
        frequency->Add(i);
    }

    signal_generator sg(frequency, 0);

    sg.make_Signal("../Data/Signal/Signal_1.txt");

    lpf.pass_LPF(*sg.transmit(), "../Data/IIR/IIR_LPF/LPF_Passed_Signal_1.txt");
    notch.pass_Notch(*sg.transmit(), "../Data/IIR/IIR_Notch/Notch_Passed_Signal_1.txt");
    hpf.pass_HPF(*sg.transmit(), "../Data/IIR/IIR_HPF/HPF_Passed_Signal_1.txt");


    /*
    * Reference/ADS1292/ADS1292.pdf p.7 DR BITS OF CONFIG1 REGISTER 001 (250SPS)
    * –3-dB BANDWIDTH (Hz) 65.5 Hz
    */
    // initialize frequency

    frequency->MakeEmpty();
    frequency->Add(64);
    frequency->Add(63);
    frequency->Add(4);
    frequency->Add(2);
    frequency->Add(8);
    frequency->Add(15);
    frequency->Add(30);
    frequency->Add(50);
    frequency->Add(60);
    frequency->Add(65);

    /*
     * Reference/ADS1292/ADS1292.pdf p.7 DR BITS OF CONFIG1 REGISTER 001 (250SPS)
     * SNR = 117.8
     */
    sg.reset(frequency, 116);

    sg.make_Signal("../Data/Signal/Signal_2.txt");

    lpf.pass_LPF(*sg.transmit(), "../Data/IIR/IIR_LPF/LPF_Passed_Signal_2.txt");
    notch.pass_Notch(*lpf.transmit(), "../Data/IIR/IIR_Notch/Notch_Passed_Signal_2.txt");
    hpf.pass_HPF(*notch.transmit(), "../Data/IIR/IIR_HPF/HPF_Passed_Signal_2.txt");
    hpf.pass_HPF(*notch.transmit(), "../Data/IIR/All_Filters_Passed_Signal.txt");



    /*
    float ECG_LPF;
    float ECG_notch;
    float ECG_HPF;
    int32_t ulData;    		//input data
    ECG_LPF = iir_LPF_10Hz_Sample_250Hz((float)ulData);
    ECG_notch = iir_Notch_60Hz_Sample_250Hz(ECG_LPF);
    ECG_HPF = iir_HPF(ECG_notch,_Old_Data, _Old_HFP, 5.0, 250.0);
    _Old_Data = ECG_notch;
    _Old_HFP  = ECG_HPF;
     */
    return 1;
}


