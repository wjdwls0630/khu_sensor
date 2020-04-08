#!/usr/bin/env python
"""@package docstring
@brief	ads1292_filter verilog test
@details get signal plot in time domain and frequency domain
"""
if __name__ == "__main__":
    from Test_Filter.Test_Filter import TestFilter
    from sys import exit

    # lpf
    ads1292_filter_test = TestFilter(filter_type=4, test_title="ADS1292_Filter_Test")

    ads1292_filter_test.set_input_file_cpp("../Data/ADS1292_Filter/Signal")
    ads1292_filter_test.set_output_file_cpp("../Data/ADS1292_Filter/ADS1292_Filter_Passed_Signal_CPP")
    ads1292_filter_test.set_output_file_verilog("../Data/ADS1292_Filter/ADS1292_Filter_Passed_Signal_Verilog")

    ads1292_filter_test.set_verilog_compile_list("./Stimulus/file_reader.v ./Stimulus/file_writer.v "
                                      "./Stimulus/test_bench.v ./Stimulus/test_bench_tb.v "
                                      "./Source/float_adder.v ./Source/float_multiplier.v "
                                      "./Source/converter_i2f.v ./Source/converter_f2i.v "
                                      "./Source/iir_lpf.v ./Source/iir_notch.v ./Source/iir_hpf.v "
                                      "./Source/ads1292_filter.v")

    if ads1292_filter_test.run_test() == 1:
        ads1292_filter_test.show_input_cpp_graph("../Data/ADS1292_Filter/Filter_Test_Input_CPP.png")
        ads1292_filter_test.show_output_cpp_graph("../Data/ADS1292_Filter/ADS1292_Filter_Test_Output_CPP.png")
        ads1292_filter_test.show_output_verilog_graph("../Data/ADS1292_Filter/ADS1292_Filter_Test_Output_Verilog.png")
        ads1292_filter_test.compare_output("../Data/ADS1292_Filter/")
    else:
        exit(-1)

