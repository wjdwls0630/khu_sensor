//
// Created by ParkJungJin on 2020-03-24.
//

#include "../../Signal/Signal_CPP/signal_generator.hpp"
#include "iir_lpf.hpp"

int main()
{
    // Test passing lpf

    // make signal

    signal_generator sg(nullptr, 0);

    sg.read_Signal("../../../Data/Signal/Signal");

    // passed lpf
    iir_lpf lpf;
    DSLinkedList<float> *temp = nullptr;
    temp = new DSLinkedList<float>;
    * temp = *sg.transmit();
    lpf.pass_LPF(*(sg.transmit()));
    lpf.write_Passed_Signal("../../../Data/IIR_LPF/IIR_LPF_Passed_Signal_CPP.txt");
    // write coefficient
    lpf.write_Coefficient("../../../Data/IIR_LPF/IIR_LPF_Coefficient.txt");
    return 1;
}


