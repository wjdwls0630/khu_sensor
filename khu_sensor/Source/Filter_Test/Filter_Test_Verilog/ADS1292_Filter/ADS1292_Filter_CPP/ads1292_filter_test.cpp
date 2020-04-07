#include <iostream>
#include <iomanip>
#include <bitset>
#include <sstream>

#include "../../Signal/Signal_CPP/signal.hpp"

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
    frequency->Add(4);
    frequency->Add(2);
    frequency->Add(8);
    frequency->Add(15);
    frequency->Add(30);
    frequency->Add(50);
    frequency->Add(60);
    frequency->Add(65);

    class signal sg(frequency, 116);
    /*
     * Reference/ADS1292/ADS1292.pdf p.7 DR BITS OF CONFIG1 REGISTER 001 (250SPS)
     * SNR = 117.8
     */
    sg.make_Signal_24to32_int();
    sg.write_Signal_24to32_int("../../../Data/ADS1292_Filter/Signal.txt");
    return 1;
}
