from chips.api.api import *
import subprocess
import numpy
from random import randint
from Signal.Signal import Signal
# Parameter Type and Return Type annotations are unsupported in Python 2
"""
converter_type 
1: F2I
2: I2F
"""


class TestConverter(object):
    def __init__(self, converter_type=1, test_title=None, cpp_execute_file=None, verilog_compile_list=None,
                 input_file_cpp=None, output_file_cpp=None,):
        # test title
        self.test_title = test_title

        # for running test
        self.cpp_execute_file = cpp_execute_file
        self.verilog_compile_list = verilog_compile_list  # verilog files to being compiled by icarus-verilog

        # file to write or read
        self.input_file_cpp = input_file_cpp  # data_file is *.txt
        self.output_file_cpp = output_file_cpp  # data_file is *.txt
        self.output_file_verilog = ""  # data_file is no *.txt (by Stimulus/file_writer.v)

        # signal
        self.input_cpp = Signal()
        self.output_cpp = Signal()
        self.output_verilog = Signal()

        # converter type
        self.converter_type = converter_type

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
            print ("TestConverter.run_cpp_test()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            exit(-1)

        try:
            if self.converter_type == 1:
                input_a_cpp_file = open("../Data/Converter_F2I/Input_A_CPP", 'w')
            elif self.converter_type == 2:
                input_a_cpp_file = open("../Data/Converter_I2F/Input_A_CPP", 'w')
        except OSError as OSErr:
            print ("TestConverter.run_cpp_test()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", input_a_cpp_file)
            exit(-1)

        input_a_cpp_list = numpy.array([], dtype=int)
        output_z_cpp_list = numpy.array([], dtype=int)

        for i in range(0, 3, 1):
            for a in self.get_sample_input_data_set(i):
                test.stdin.write(str(a)+"\n")
                input_a_cpp_file.write(str(a) + "\n")
                input_a_cpp_list = numpy.append(input_a_cpp_list, a)
                output_z_cpp_list = numpy.append(output_z_cpp_list, int(test.stdout.readline()))
        test.terminate()
        input_a_cpp_file.close() # make for stimulus of verilog file

        # setting input and output
        self.input_cpp.set_data_from_array(input_a_cpp_list, signal_int_form=True)
        self.output_cpp.set_data_from_array(output_z_cpp_list, signal_int_form=True)

        # write data from cpp
        self.write_input_cpp_data()
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
            print ("TestConverter.run_verilog_test()")
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
                print ("TestConverter.compile()")
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
            print ("TestConverter.compare_output()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", directory_address+self.test_title+"_Output_Compare.txt")
            exit(-1)

        index = 0
        error_rate = 0.0
        error_rate_list = numpy.array([], dtype=float)
        round_error = 0.0
        round_error_list = numpy.array([], dtype=float)
        over = False  # float is over int
        compare_file.write("    \t\tOutput_CPP\tOutput_Verilog\n")
        for in_cpp, out_cpp, out_verilog in zip(self.input_cpp.signal_hex, self.output_cpp.signal_hex, self.output_verilog.signal_hex):
            if self.converter_type == 1:
                compare_file.write("input float \t")
                compare_file.write(str(self.input_cpp.signal[index])+'\t')
                if self.input_cpp.signal[index] < -2147483648 or self.input_cpp.signal[index] > 2147483647:
                    over = True
                    compare_file.write("over\n")
                else:
                    over = False
                    compare_file.write("not over\n")

                matched = self.match(out_cpp, out_verilog)
                compare_file.write("signed int  \t")
                compare_file.write(str(self.output_cpp.signal_signed_int[index])+'\t')
                compare_file.write(str(self.output_verilog.signal_signed_int[index])+'\n')
                compare_file.write("unsigned int\t")
                compare_file.write(str(self.output_cpp.signal_hex[index])+'\t')
                compare_file.write(str(self.output_verilog.signal_hex[index])+'\n')

            elif self.converter_type == 2:
                compare_file.write("input int \t")
                compare_file.write(str(self.input_cpp.signal_signed_int[index])+'\n')

                matched = self.match(out_cpp, out_verilog)
                compare_file.write("float       \t")
                compare_file.write(str(self.output_cpp.signal[index])+'\t')
                compare_file.write(str(self.output_verilog.signal[index])+'\n')
                compare_file.write("unsigned int\t")
                compare_file.write(str(self.output_cpp.signal_hex[index])+'\t')
                compare_file.write(str(self.output_verilog.signal_hex[index])+'\n')

            compare_file.write("hex         \t")
            compare_file.write(self.output_cpp.signal_hex_str[index][:-1]+'\t')
            compare_file.write(self.output_verilog.signal_hex_str[index][:-1]+'\n')
            compare_file.write("Error rate\t")
            if not matched:
                compare_file.write("not matched\t")
                if out_cpp == 0:
                    error_rate = 0.0
                else:
                    error_rate = (abs(float(out_cpp-out_verilog))/float(out_cpp))*100
            else:
                compare_file.write("matched\t")
                error_rate = 0.0

            error_rate_list = numpy.append(error_rate_list, error_rate)
            compare_file.write(str(error_rate)+"%\n")

            if self.converter_type == 1:
                if not over:
                    compare_file.write("Round-off error\t")
                    round_error = abs(float(self.input_cpp.signal[index])-float(self.output_verilog.signal_signed_int[index]))
                    if numpy.isnan(round_error):
                        round_error = 0.0

                    round_error_list = numpy.append(round_error_list, round_error)
                    compare_file.write(str(round_error)+"\n\n")
                else:
                    compare_file.write('\n')

            elif self.converter_type == 2:
                compare_file.write("Round-off error\t")
                round_error = abs(float(self.input_cpp.signal_signed_int[index])-float(self.output_verilog.signal[index]))
                if numpy.isnan(round_error):
                    round_error = 0.0

                round_error_list = numpy.append(round_error_list, round_error)
                compare_file.write(str(round_error)+"\n\n")

            index += 1

        compare_file.write("Average Error rate : "+numpy.str(numpy.mean(error_rate_list, axis=0))+"%\n")
        compare_file.write("Average Round-off error : "+numpy.str(numpy.nanmean(round_error_list, axis=0))+"\n")

        compare_file.close()
        return 1

    def get_sample_input_data_set(self, data_set_num=1):
        if data_set_num == 0:
            #  regression tests
            input_a = [0x2f005329, 0x34082401, 0xba57711a, 0xbf9b1e94, 0x5e8ef81, 0x5c75da81, 0x2b017]

        elif data_set_num == 1:
            #  corner cases
            from itertools import permutations
            input_a = [i for i in [0x80000000, 0x00000000, 0x7f800000, 0xff800000, 0x7fc00000, 0xffc00000]]
        else:
            #  seed(0)
            input_a = [randint(0, 1<<32) for i in xrange(1000)]

        return input_a

    def write_input_cpp_data(self):
        try:
            if self.converter_type == 1:
                input_a_cpp_file = open("../Data/Converter_F2I/Input_A_CPP.txt", 'w')
            elif self.converter_type == 2:
                input_a_cpp_file = open("../Data/Converter_I2F/Input_A_CPP.txt", 'w')
        except OSError as OSErr:
            print ("TestConverter.write_input_cpp_data()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", input_a_cpp_file)
            exit(-1)

        with input_a_cpp_file:
            for i in range(0, len(self.input_cpp.signal)):
                if self.converter_type == 1:
                    input_a_cpp_file.write(str(self.input_cpp.signal[i])+' ')
                elif self.converter_type == 2:
                    input_a_cpp_file.write(str(self.input_cpp.signal_signed_int[i])+' ')
                input_a_cpp_file.write(str(self.input_cpp.signal_hex_str[i]))

        return 1

    def write_output_cpp_data(self):
        try:
            if self.converter_type == 1:
                output_z_cpp_file = open("../Data/Converter_F2I/Output_Z_CPP.txt", 'w')
            elif self.converter_type == 2:
                output_z_cpp_file = open("../Data/Converter_I2F/Output_Z_CPP.txt", 'w')
        except OSError as OSErr:
            print ("TestConverter.write_output_cpp_data()")
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

    def set_input_file_cpp(self, input_file_cpp):
        self.input_file_cpp = input_file_cpp

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