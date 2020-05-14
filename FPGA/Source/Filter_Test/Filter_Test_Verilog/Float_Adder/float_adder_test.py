#!/usr/bin/env python
"""@package docstring
@brief	float_adder verilog test
@details get data compared to cpp and verilog
"""
if __name__ == "__main__":
    from Test_Arithmetic.Test_Arithmetic import TestArithmetic
    from sys import exit

    arithmetic_test = TestArithmetic(arithmetic_type=1, test_title="Float_Adder_Test",
                                   cpp_execute_file="../cmake-build-debug/Float_Adder/Float_Adder_CPP/float_adder"
                                   )
    arithmetic_test.set_output_file_verilog("../Data/Float_Adder/Output_Z_Verilog")
    arithmetic_test.set_cpp_execute_file("../cmake-build-debug/Float_Adder/Float_Adder_CPP/float_adder")
    arithmetic_test.set_verilog_compile_list("./Stimulus/file_reader_a.v ./Stimulus/file_reader_b.v "
                                            "./Stimulus/file_writer.v "
                                            "./Stimulus/test_bench.v ./Stimulus/test_bench_tb.v "
                                            "./Source/float_adder.v")
    if arithmetic_test.run_test() == 1:
        arithmetic_test.compare_output("../Data/Float_Adder/")
        exit(1)
    else:
        exit(-1)
