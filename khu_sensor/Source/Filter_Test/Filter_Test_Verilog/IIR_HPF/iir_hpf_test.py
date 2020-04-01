#!/usr/bin/env python
"""@package docstring
@brief	iir_hpf verilog test
@details get signal plot in time domain and frequency domain
"""
if __name__ == "__main__":
    from Test_Filter.Test_Filter import TestFilter
    from sys import exit
    lpf_test = TestFilter(filter_type=3, test_title="IIR_HPF_Test")
    lpf_test.set_input_file_cpp("../Data/Signal/Signal.txt")
    lpf_test.set_output_file_cpp("../Data/IIR_HPF/IIR_HPF_Passed_Signal_CPP.txt")
    lpf_test.set_output_file_verilog("../Data/IIR_HPF/IIR_HPF_Passed_Signal_Verilog")

    lpf_test.set_verilog_compile_list("./Stimulus/file_reader.v ./Stimulus/file_writer.v "
                                      "./Stimulus/test_bench.v ./Stimulus/test_bench_tb.v "
                                      "./Source/float_adder.v ./Source/float_multiplier.v "
                                      "./Source/iir_hpf.v")

    if lpf_test.run_test() == 1:
        lpf_test.show_input_cpp_graph("../Data/IIR_HPF/IIR_HPF_Test_Input_CPP.png")
        lpf_test.show_output_cpp_graph("../Data/IIR_HPF/IIR_HPF_Test_Output_CPP.png")
        lpf_test.show_output_verilog_graph("../Data/IIR_HPF/IIR_HPF_Test_Output_Verilog.png")
    else:
        exit(-1)