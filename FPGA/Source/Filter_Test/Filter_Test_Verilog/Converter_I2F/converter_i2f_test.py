#!/usr/bin/env python
"""@package docstring
@brief	converter_i2f verilog test
@details get data compared to cpp and verilog
"""
if __name__ == "__main__":
    from Test_Converter.Test_Converter import TestConverter
    from sys import exit

    converter_test = TestConverter(converter_type=2, test_title="Converter_I2F_Test",
                                   cpp_execute_file="../cmake-build-debug/Converter_I2F/Converter_I2F_CPP/converter_i2f"
                                   )
    converter_test.set_output_file_verilog("../Data/Converter_I2F/Output_Z_Verilog")
    converter_test.set_cpp_execute_file("../cmake-build-debug/Converter_I2F/Converter_I2F_CPP/converter_i2f")
    converter_test.set_verilog_compile_list("./Stimulus/file_reader.v ./Stimulus/file_writer.v "
                                            "./Stimulus/test_bench.v ./Stimulus/test_bench_tb.v "
                                            "./Source/converter_i2f.v")
    if converter_test.run_test() == 1:
        converter_test.compare_output("../Data/Converter_I2F/")
        exit(1)
    else:
        exit(-1)
