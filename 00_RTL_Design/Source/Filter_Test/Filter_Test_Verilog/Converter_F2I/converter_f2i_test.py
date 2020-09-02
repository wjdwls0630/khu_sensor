#!/usr/bin/env python
"""@package docstring
@brief	converter_f2i verilog test
@details get data compared to cpp and verilog
"""
if __name__ == "__main__":
    from Test_Converter.Test_Converter import TestConverter
    from sys import exit

    converter_test = TestConverter(converter_type=1, test_title="Converter_F2I_Test",
                                   cpp_execute_file="../cmake-build-debug/Converter_F2I/Converter_F2I_CPP/converter_f2i"
                                   )
    converter_test.set_output_file_verilog("../Data/Converter_F2I/Output_Z_Verilog")
    converter_test.set_cpp_execute_file("../cmake-build-debug/Converter_F2I/Converter_F2I_CPP/converter_f2i")
    converter_test.set_verilog_compile_list("./Stimulus/file_reader.v ./Stimulus/file_writer.v "
                                            "./Stimulus/test_bench.v ./Stimulus/test_bench_tb.v "
                                            "./Source/converter_f2i.v")
    if converter_test.run_test() == 1:
        converter_test.compare_output("../Data/Converter_F2I/")
        exit(1)
    else:
        exit(-1)
