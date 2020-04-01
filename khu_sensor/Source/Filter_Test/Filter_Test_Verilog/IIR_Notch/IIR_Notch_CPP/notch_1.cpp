//
// Created by ParkJungJin on 2020-03-29.
//

#include "../../Signal/Signal_CPP/signal_generator.hpp"
#include "iir_notch.hpp"

int main()
{
    // Test passing lpf

    // make signal

    signal_generator sg(nullptr, 0);

    sg.read_Signal("../../../Data/Signal/Signal");

    // passed notch
    iir_notch notch;
    DSLinkedList<float> *temp = nullptr;
    temp = new DSLinkedList<float>;
    * temp = *sg.transmit();
    notch.pass_Notch(*(sg.transmit()));
    notch.write_Passed_Signal("../../../Data/IIR_Notch/IIR_Notch_Passed_Signal_CPP.txt");
    // write coefficient
    notch.write_Coefficient("../../../Data/IIR_Notch/IIR_Notch_Coefficient.txt");
    return 1;
}
