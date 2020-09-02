from chips.api.api import *
import subprocess
import numpy
from random import randint, seed
from Signal.Signal import Signal
# Parameter Type and Return Type annotations are unsupported in Python 2
"""
arithmetic_type 
1: adder
2: multiplier
"""


class TestArithmetic(object):
    def __init__(self, arithmetic_type=1, test_title=None, cpp_execute_file=None, verilog_compile_list=None,
                 input_a_file_cpp=None, input_b_file_cpp=None, output_file_cpp=None,):
        # test title
        self.test_title = test_title

        # for running test
        self.cpp_execute_file = cpp_execute_file
        self.verilog_compile_list = verilog_compile_list  # verilog files to being compiled by icarus-verilog

        # file to write or read
        self.input_a_file_cpp = input_a_file_cpp  # data_file is *.txt
        self.input_b_file_cpp = input_b_file_cpp  # data_file is *.txt
        self.output_file_cpp = output_file_cpp  # data_file is *.txt
        self.output_file_verilog = ""  # data_file is no *.txt (by Stimulus/file_writer.v)

        # signal
        self.input_a_cpp = Signal()
        self.input_b_cpp = Signal()
        self.output_cpp = Signal()
        self.output_verilog = Signal()

        # converter type
        self.arithmetic_type = arithmetic_type

    def run_test(self):
        if self.compile() != 1:
            print(self.test_title+" is failed by error !")
            return -1
        else:
            if self.run_cpp_test() is 1 and self.run_verilog_test() is 1:
                return 1
            else:
                print(self.test_title+" is failed by error !")
                return -1

    def run_cpp_test(self):
        # cpp test
        try:
            test = subprocess.Popen(self.cpp_execute_file, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
        except subprocess.CalledProcessError as subErr:
            # handle errors in the called executable
            print ("SubProcessor Error occurred !")
            exit(-1)
        except OSError as OSErr:
            print ("TestArithmetic.run_cpp_test()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            exit(-1)

        try:
            if self.arithmetic_type == 1:
                input_a_cpp_file = open("../Data/Float_Adder/Input_A_CPP", 'w')
            elif self.arithmetic_type == 2:
                input_a_cpp_file = open("../Data/Float_Multiplier/Input_A_CPP", 'w')
        except OSError as OSErr:
            print ("TestArithmetic.run_cpp_test()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", input_a_cpp_file)
            exit(-1)
        try:
            if self.arithmetic_type == 1:
                input_b_cpp_file = open("../Data/Float_Adder/Input_B_CPP", 'w')
            elif self.arithmetic_type == 2:
                input_b_cpp_file = open("../Data/Float_Multiplier/Input_B_CPP", 'w')
        except OSError as OSErr:
            print ("TestArithmetic.run_cpp_test()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", input_b_cpp_file)
            exit(-1)

        input_a_cpp_list = numpy.array([], dtype=int)
        input_b_cpp_list = numpy.array([], dtype=int)
        output_z_cpp_list = numpy.array([], dtype=int)

        for i in range(0, 5, 1):
            input_a, input_b = self.get_sample_input_data_set(i)
            for i in range(0, len(input_a), 1):
                a = input_a[i]
                b = input_b[1]
                test.stdin.write(str(a)+"\n")
                test.stdin.write(str(b)+"\n")
                input_a_cpp_file.write(str(a) + "\n")
                input_b_cpp_file.write(str(b) + "\n")
                input_a_cpp_list = numpy.append(input_a_cpp_list, a)
                input_b_cpp_list = numpy.append(input_b_cpp_list, b)
                output_z_cpp_list = numpy.append(output_z_cpp_list, int(test.stdout.readline()))

        test.terminate()
        input_a_cpp_file.close()  # make for stimulus of verilog file
        input_b_cpp_file.close()  # make for stimulus of verilog file

        # setting input and output
        self.input_a_cpp.set_data_from_array(input_a_cpp_list, signal_int_form=True)
        self.input_b_cpp.set_data_from_array(input_b_cpp_list, signal_int_form=True)
        self.output_cpp.set_data_from_array(output_z_cpp_list, signal_int_form=True)

        # write data from cpp
        self.write_input_a_cpp_data()
        self.write_input_b_cpp_data()
        self.write_output_cpp_data()

        return 1

    def run_verilog_test(self):

        # TODO output file name in test_bench_tb
        # TODO change all times doing other test?
        try:
            subprocess.check_call("./Stimulus/test_bench_tb")
        except subprocess.CalledProcessError as subErr:
            # handle errors in the called executable
            print ("SubProcessor Error occurred: " + "That command didn't work, try again")
            exit(-1)
        except OSError as OSErr:
            print ("TestArithmetic.run_verilog_test()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            exit(-1)

        subprocess.call("./Stimulus/test_bench_tb", shell=True)
        self.output_verilog.set_data_from_file(data_file=self.output_file_verilog, signal_int_form=True)
        print(self.test_title+" is finished successfully !")
        return 1

    def compile(self):
        if self.verilog_compile_list is not None:
            try:
                subprocess.call("iverilog -o ./Stimulus/test_bench_tb " + self.verilog_compile_list, shell=True)
                #  subprocess.check_call("iverilog -o " + self.verilog_compile_list)
            except subprocess.CalledProcessError as subErr:
                # handle errors in the called executable
                print ("SubProcessor Error occurred: " + "That command didn't work, try again")
                exit(-1)
            except OSError as OSErr:
                print ("TestArithmetic.compile()")
                print ("OSError > ", OSErr.errno)
                print ("OSError > ", OSErr.strerror)
                print ("OSError > ", OSErr.filename)
                exit(-1)

            return 1
        else:
            print("verilog compile list is empty !")
            return -1

    def compare_output(self, directory_address):
        try:
            compare_file = open(directory_address+self.test_title+"_Output_Compare.txt", 'w')
        except OSError as OSErr:
            print ("TestArithmetic.compare_output()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", directory_address+self.test_title+"_Output_Compare.txt")
            exit(-1)

        index = 0
        error_rate = 0.0
        error_rate_list = numpy.array([], dtype=float)

        compare_file.write("    \t\tOutput_CPP\tOutput_Verilog\n")
        for in_a_cpp, in_b_cpp, out_cpp, out_verilog in zip(self.input_a_cpp.signal_hex, self.input_b_cpp.signal_hex ,self.output_cpp.signal_hex, self.output_verilog.signal_hex):
            compare_file.write("input_a float \t")
            compare_file.write(str(self.input_a_cpp.signal[index])+'\n')
            compare_file.write("input_b float \t")
            compare_file.write(str(self.input_b_cpp.signal[index])+'\n')
            matched = self.match(out_cpp, out_verilog)
            compare_file.write("output float  \t")
            compare_file.write(str(self.output_cpp.signal[index])+'\t')
            compare_file.write(str(self.output_verilog.signal[index])+'\n')
            compare_file.write("unsigned int  \t")
            compare_file.write(str(self.output_cpp.signal_hex[index])+'\t')
            compare_file.write(str(self.output_verilog.signal_hex[index])+'\n')
            compare_file.write("signed int    \t")
            compare_file.write(str(self.output_cpp.signal_signed_int[index])+'\t')
            compare_file.write(str(self.output_verilog.signal_signed_int[index])+'\n')
            compare_file.write("hex       \t")
            compare_file.write(self.output_cpp.signal_hex_str[index][:-1]+'\t')
            compare_file.write(self.output_verilog.signal_hex_str[index][:-1]+'\n')
            compare_file.write("Error rate\t")
            if not matched:
                compare_file.write("not matched\t")
            else:
                compare_file.write("matched\t")

            if not numpy.isnan(self.output_cpp.signal[index]) and not numpy.isnan(self.output_verilog.signal[index]):
                if out_cpp == 0.0:
                    error_rate = 0.0
                else:
                    error_rate = (abs(float(out_cpp-out_verilog))/float(out_cpp))*100
            else:
                error_rate = 0.0

            error_rate_list = numpy.append(error_rate_list, error_rate)
            compare_file.write(str(error_rate)+"%\n\n")
            index += 1
        # TODO fix?
        error_rate_list = numpy.delete(error_rate_list, 0)
        compare_file.write("Average Error rate : "+numpy.str(numpy.mean(error_rate_list, axis=0))+"%\n")
        compare_file.close()
        return 1

    def get_sample_input_data_set(self, data_set_num=1):

        if data_set_num == 0:
            #  regression tests
            input_a = [0xba57711a, 0xbf9b1e94, 0x34082401, 0x5e8ef81, 0x5c75da81, 0x2b017]
            input_b = [0xee1818c5, 0xc038ed3a, 0xb328cd45, 0x114f3db, 0x2f642a39, 0xff3807ab]

        elif data_set_num == 1:
            #  corner cases
            from itertools import permutations
            input_a = [i[0] for i in permutations([0x80000000, 0x00000000, 0x7f800000, 0xff800000, 0x7fc00000, 0xffc00000], 2)]
            input_b = [i[1] for i in permutations([0x80000000, 0x00000000, 0x7f800000, 0xff800000, 0x7fc00000, 0xffc00000], 2)]

        elif data_set_num == 2:
            input_a = []
            input_b = []
            for i in xrange(1000):
                seed(i)
                input_a.append(randint(0, 1<<32))
                input_b.append(0x80000000)

        elif data_set_num == 3:
            input_a = []
            input_b = []
            for i in xrange(1000):
                seed(1000+i)
                input_a.append(randint(0, 1<<32))
                input_b.append(0x80000000)

        else:
            input_a = []
            input_b = []
            for i in xrange(1000):
                seed(2000+(2*i+1))
                input_a.append(randint(0, 1<<32))
                seed(2000+2*i)
                input_b.append(randint(0, 1<<32))

        return input_a, input_b

    def write_input_a_cpp_data(self):
        try:
            if self.arithmetic_type == 1:
                input_a_cpp_file = open("../Data/Float_Adder/Input_A_CPP.txt", 'w')
            elif self.arithmetic_type == 2:
                input_a_cpp_file = open("../Data/Float_Multiplier/Input_A_CPP.txt", 'w')
        except OSError as OSErr:
            print ("TestArithmetic.write_input_a_cpp_data()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", input_a_cpp_file)
            exit(-1)

        with input_a_cpp_file:
            for i in range(0, len(self.input_a_cpp.signal)):
                input_a_cpp_file.write(str(self.input_a_cpp.signal[i])+' ')
                input_a_cpp_file.write(str(self.input_a_cpp.signal_hex_str[i]))

        return 1

    def write_input_b_cpp_data(self):
        try:
            if self.arithmetic_type == 1:
                input_b_cpp_file = open("../Data/Float_Adder/Input_B_CPP.txt", 'w')
            elif self.arithmetic_type == 2:
                input_b_cpp_file = open("../Data/Float_Multiplier/Input_B_CPP.txt", 'w')
        except OSError as OSErr:
            print ("TestArithmetic.write_input_b_cpp_data()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", input_b_cpp_file)
            exit(-1)

        with input_b_cpp_file:
            for i in range(0, len(self.input_b_cpp.signal)):
                input_b_cpp_file.write(str(self.input_b_cpp.signal[i])+' ')
                input_b_cpp_file.write(str(self.input_b_cpp.signal_hex_str[i]))

        return 1

    def write_output_cpp_data(self):
        try:
            if self.arithmetic_type == 1:
                output_z_cpp_file = open("../Data/Float_Adder/Output_Z_CPP.txt", 'w')
            elif self.arithmetic_type == 2:
                output_z_cpp_file = open("../Data/Float_Multiplier/Output_Z_CPP.txt", 'w')
        except OSError as OSErr:
            print ("TestArithmetic.write_output_cpp_data()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", output_z_cpp_file)
            exit(-1)

        with output_z_cpp_file:
            for i in range(0, len(self.output_cpp.signal)):
                output_z_cpp_file.write(str(self.output_cpp.signal_hex[i])+' ')
                output_z_cpp_file.write(str(self.output_cpp.signal_hex_str[i]))

        return 1

    def set_input_a_file_cpp(self, input_file_cpp):
        self.input_a_file_cpp = input_file_cpp

    def set_input_b_file_cpp(self, input_file_cpp):
        self.input_b_file_cpp = input_file_cpp

    def set_output_file_cpp(self, output_file_cpp):
        self.output_file_cpp = output_file_cpp

    def set_output_file_verilog(self, output_file_verilog):
        self.output_file_verilog = output_file_verilog

    def set_cpp_execute_file(self, cpp_execute_file):
        self.cpp_execute_file = cpp_execute_file

    def set_verilog_compile_list(self, verilog_compile_list):
        self.verilog_compile_list = verilog_compile_list

    def get_mantissa(self, x):
        return 0x7fffff & x

    def get_exponent(self, x):
        return ((x & 0x7f800000) >> 23) - 127

    def get_sign(self, x):
        return (x & 0x80000000) >> 31

    def is_nan(self, x):
        return self.get_exponent(x) == 128 and self.get_mantissa(x) != 0

    def is_inf(self, x):
        return self.get_exponent(x) == 128 and self.get_mantissa(x) == 0

    def is_pos_inf(self, x):
        return self.is_inf(x) and not self.get_sign(x)

    def is_neg_inf(self, x):
        return self.is_inf(x) and self.get_sign(x)

    def match(self, x, y):
        return (
                (self.is_pos_inf(x) and self.is_pos_inf(y)) or
                (self.is_neg_inf(x) and self.is_neg_inf(y)) or
                (self.is_nan(x) and self.is_nan(y)) or
                (x == y)
        )