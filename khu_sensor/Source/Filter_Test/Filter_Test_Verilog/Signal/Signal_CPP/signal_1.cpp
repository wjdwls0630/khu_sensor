//
// Created by ParkJungJin on 2020-03-29.
//

#include <fstream>


#include "signal.hpp"
#include "../../Library_CPP/Data_Structure_CPP/DoublySortedLinkedList.hpp"

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
    frequency->Add(4);
    frequency->Add(2);
    frequency->Add(8);
    frequency->Add(15);
    frequency->Add(30);
    frequency->Add(50);
    frequency->Add(60);
    frequency->Add(65);

    signal sg(frequency, 116);
    /*
     * Reference/ADS1292/ADS1292.pdf p.7 DR BITS OF CONFIG1 REGISTER 001 (250SPS)
     * SNR = 117.8
     */
    sg.make_Signal();
    sg.write_Signal("../../../Data/Signal/Signal.txt");



    return 1;
}


