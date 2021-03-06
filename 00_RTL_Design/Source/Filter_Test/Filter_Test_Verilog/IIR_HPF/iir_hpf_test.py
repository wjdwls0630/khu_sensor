#!/usr/bin/env python
"""@package docstring
@brief	iir_hpf verilog test
@details get signal plot in time domain and frequency domain
"""
if __name__ == "__main__":
    from Test_Filter.Test_Filter import TestFilter
    from sys import exit
    hpf_test = TestFilter(filter_type=3, test_title="IIR_HPF_Test")
    hpf_test.set_input_file_cpp("../Data/Signal/Signal.txt")
    hpf_test.set_output_file_cpp("../Data/IIR_HPF/IIR_HPF_Passed_Signal_CPP.txt")
    hpf_test.set_output_file_verilog("../Data/IIR_HPF/IIR_HPF_Passed_Signal_Verilog")

    hpf_test.set_verilog_compile_list("./Stimulus/file_reader.v ./Stimulus/file_writer.v "
                                      "./Stimulus/test_bench.v ./Stimulus/test_bench_tb.v "
                                      "./Source/float_adder.v ./Source/float_multiplier.v "
                                      "./Source/iir_hpf.v")

    if hpf_test.run_test() == 1:
        hpf_test.show_input_cpp_graph("../Data/IIR_HPF/IIR_HPF_Test_Input_CPP.png")
        hpf_test.show_output_cpp_graph("../Data/IIR_HPF/IIR_HPF_Test_Output_CPP.png")
        hpf_test.show_output_verilog_graph("../Data/IIR_HPF/IIR_HPF_Test_Output_Verilog.png")
        hpf_test.compare_output("../Data/IIR_HPF/")
    else:
        exit(-1)