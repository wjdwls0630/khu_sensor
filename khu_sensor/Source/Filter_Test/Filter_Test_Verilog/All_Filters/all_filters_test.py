#!/usr/bin/env python
"""@package docstring
@brief	iir_lpf verilog test
@details get signal plot in time domain and frequency domain
"""
if __name__ == "__main__":
    from Test_Filter.Test_Filter import TestFilter
    from sys import exit

    # lpf
    lpf_test = TestFilter(filter_type=1, test_title="IIR_LPF_Test")

    lpf_test.set_input_file_cpp("../Data/All_Filters/Signal.txt")
    lpf_test.set_output_file_cpp("../Data/All_Filters/IIR_LPF_Passed_Signal_CPP.txt")
    lpf_test.set_output_file_verilog("../Data/All_Filters/IIR_LPF_Passed_Signal_Verilog")

    lpf_test.set_verilog_compile_list("./Stimulus/IIR_LPF/file_reader.v ./Stimulus/IIR_LPF/file_writer.v "
                                      "./Stimulus/IIR_LPF/test_bench.v ./Stimulus/IIR_LPF/test_bench_tb.v "
                                      "./Source/float_adder.v ./Source/float_multiplier.v "
                                      "./Source/iir_lpf.v")

    if lpf_test.run_test(tb="./Stimulus/IIR_LPF/test_bench_tb ") == 1:
        lpf_test.show_input_cpp_graph("../Data/All_Filters/Filter_Test_Input_CPP.png")
        lpf_test.show_output_cpp_graph("../Data/All_Filters/IIR_LPF_Test_Output_CPP.png")
        lpf_test.show_output_verilog_graph("../Data/All_Filters/IIR_LPF_Test_Output_Verilog.png")
        lpf_test.compare_output("../Data/All_Filters/")
    else:
        exit(-1)

    # notch
    notch_test = TestFilter(filter_type=2, test_title="IIR_Notch_Test")

    notch_test.set_input_file_cpp("../Data/All_Filters/IIR_LPF_Passed_Signal_CPP.txt")
    notch_test.set_output_file_cpp("../Data/All_Filters/IIR_Notch_Passed_Signal_CPP.txt")
    notch_test.set_output_file_verilog("../Data/All_Filters/IIR_Notch_Passed_Signal_Verilog")

    notch_test.set_verilog_compile_list("./Stimulus/IIR_Notch/file_reader.v ./Stimulus/IIR_Notch/file_writer.v "
                                      "./Stimulus/IIR_Notch/test_bench.v ./Stimulus/IIR_Notch/test_bench_tb.v "
                                      "./Source/float_adder.v ./Source/float_multiplier.v "
                                      "./Source/iir_notch.v")

    if notch_test.run_test(tb="./Stimulus/IIR_Notch/test_bench_tb ") == 1:
        # notch_test.show_input_cpp_graph("./Data/ADS1292_Filter/Filter_Test_Input_CPP.png")
        notch_test.show_output_cpp_graph("../Data/All_Filters/IIR_Notch_Test_Output_CPP.png")
        notch_test.show_output_verilog_graph("../Data/All_Filters/IIR_Notch_Test_Output_Verilog.png")
        notch_test.compare_output("../Data/All_Filters/")
    else:
        exit(-1)

    # hpf
    hpf_test = TestFilter(filter_type=3, test_title="IIR_HPF_Test")

    hpf_test.set_input_file_cpp("../Data/All_Filters/IIR_Notch_Passed_Signal_CPP.txt")
    hpf_test.set_output_file_cpp("../Data/All_Filters/IIR_HPF_Passed_Signal_CPP.txt")
    hpf_test.set_output_file_verilog("../Data/All_Filters/IIR_HPF_Passed_Signal_Verilog")

    hpf_test.set_verilog_compile_list("./Stimulus/IIR_HPF/file_reader.v ./Stimulus/IIR_HPF/file_writer.v "
                                        "./Stimulus/IIR_HPF/test_bench.v ./Stimulus/IIR_HPF/test_bench_tb.v "
                                        "./Source/float_adder.v ./Source/float_multiplier.v "
                                        "./Source/iir_hpf.v")

    if hpf_test.run_test(tb="./Stimulus/IIR_Notch/test_bench_tb ") == 1:
        # hpf_test.show_input_cpp_graph("./Data/ADS1292_Filter/Filter_Test_Input_CPP.png")
        hpf_test.show_output_cpp_graph("../Data/All_Filters/IIR_HPF_Test_Output_CPP.png")
        hpf_test.show_output_verilog_graph("../Data/All_Filters/IIR_HPF_Test_Output_Verilog.png")
        hpf_test.compare_output("../Data/All_Filters/")
    else:
        exit(-1)