#!/usr/bin/env python
"""@package docstring
@brief	iir_notch verilog test
@details get signal plot in time domain and frequency domain
"""
if __name__ == "__main__":
    from Test_Filter.Test_Filter import TestFilter
    from sys import exit

    notch_test = TestFilter(filter_type=2, test_title="IIR_Notch_Test")
    notch_test.set_input_file_cpp("../Data/Signal/Signal.txt")
    notch_test.set_output_file_cpp("../Data/IIR_Notch/IIR_Notch_Passed_Signal_CPP.txt")
    notch_test.set_output_file_verilog("../Data/IIR_Notch/IIR_Notch_Passed_Signal_Verilog")

    notch_test.set_verilog_compile_list("./Stimulus/file_reader.v ./Stimulus/file_writer.v "
                                      "./Stimulus/test_bench.v ./Stimulus/test_bench_tb.v "
                                      "./Source/float_adder.v ./Source/float_multiplier.v "
                                      "./Source/iir_notch.v")

    if notch_test.run_test() == 1:
        notch_test.show_input_cpp_graph("../Data/IIR_Notch/IIR_Notch_Test_Input_CPP.png")
        notch_test.show_output_cpp_graph("../Data/IIR_Notch/IIR_Notch_Test_Output_CPP.png")
        notch_test.show_output_verilog_graph("../Data/IIR_Notch/IIR_Notch_Test_Output_Verilog.png")
        notch_test.compare_output("../Data/IIR_Notch/")
    else:
        exit(-1)