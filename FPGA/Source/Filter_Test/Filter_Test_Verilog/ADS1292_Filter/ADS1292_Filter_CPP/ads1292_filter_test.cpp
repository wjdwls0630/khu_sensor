
#include "../../ADS1292_Signal/ADS1292_Signal_CPP/ads1292_signal.hpp"
#include "../../ADS1292_Filter/ADS1292_Filter_CPP/ads1292_filter.hpp"

int main() {
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

    ads1292_signal sg(frequency, 116);
    /*
     * Reference/ADS1292/ADS1292.pdf p.7 DR BITS OF CONFIG1 REGISTER 001 (250SPS)
     * SNR = 117.8
     */
    sg.make_Signal();
    sg.write_Signal("../../../Data/ADS1292_Filter/Signal.txt");

    // passed lpf
    ads1292_filter filter;
    filter.reset();
    DSLinkedList<signed int> *temp = nullptr;
    temp = new DSLinkedList<signed int>;
    * temp = *sg.transmit();
    filter.pass_Filter(*sg.transmit());
    filter.write_Passed_Data("../../../Data/ADS1292_Filter/ADS1292_Filter_Passed_Signal_CPP.txt");


    return 1;
}
