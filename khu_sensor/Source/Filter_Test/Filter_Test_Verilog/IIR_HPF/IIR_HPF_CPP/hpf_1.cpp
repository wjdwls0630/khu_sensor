//
// Created by ParkJungJin on 2020-03-29.
//

#include "../../Signal/Signal_CPP/signal.hpp"
#include "iir_hpf.hpp"

int main()
{
    // Test passing lpf

    // make signal

    signal sg(nullptr, 0);

    sg.read_Signal("../../../Data/Signal/Signal");

    // passed hpf
    iir_hpf hpf;
    DSLinkedList<float> *temp = nullptr;
    temp = new DSLinkedList<float>;
    * temp = *sg.transmit();
    hpf.pass_HPF(*(sg.transmit()));
    hpf.write_Passed_Signal("../../../Data/IIR_HPF/IIR_HPF_Passed_Signal_CPP.txt");
    // write coefficient
    hpf.write_Coefficient("../../../Data/IIR_HPF/IIR_HPF_Coefficient.txt");
    return 1;
}

