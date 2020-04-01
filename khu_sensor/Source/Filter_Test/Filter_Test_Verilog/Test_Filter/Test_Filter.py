#!/usr/bin/env python

from chips.api.api import *
import subprocess
import numpy
from Signal.Signal import Signal
import os
# Parameter Type and Return Type annotations are unsupported in Python 2
"""
filter_type
1: LPF
2: Notch
3: HPF
"""


class TestFilter(object):
    def __init__(self, filter_type=1, test_title=None, input_file_cpp=None, output_file_cpp=None,
                 verilog_compile_list=None):
        # test title
        self.test_title = test_title

        # file to write or read
        self.input_file_cpp = input_file_cpp  # data_file is *.txt
        self.output_file_cpp = output_file_cpp  # data_file is *.txt
        self.output_file_verilog = ""  # data_file is no *.txt (by Stimulus/file_writer.v)
        self.verilog_compile_list = verilog_compile_list  # verilog files to being compiled by icarus-verilog

        # signal
        self.input_cpp = Signal()
        self.output_cpp = Signal()
        self.output_verilog = Signal()

        # filter type
        self.filter_type = filter_type

        # determine cut-off frequency
        self.sampling_frequency = 250.0  # sampling frequency 250Hz
        if filter_type == 1:
            # LPF
            self.cut_off_frequency = 10
        elif filter_type == 2:
            # Notch
            self.cut_off_frequency = 60  # notch mid frequency 60Hz
        else:
            # HPF
            self.cut_off_frequency = 5

    def run_test(self):
        if self.compile() != 1:
            print(self.test_title+" is failed by error !")
            return -1

        # TODO output file name in test_bench_tb
        # TODO change all times doing other test?
        try:
            subprocess.check_call("./Stimulus/test_bench_tb")
        except subprocess.CalledProcessError as subErr:
            # handle errors in the called executable
            print ("SubProcessor Error occurred: " + "That command didn't work, try again")
            exit(-1)
        except OSError as OSErr:
            print ("TestFilter.run_test()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            exit(-1)

        subprocess.call("./Stimulus/test_bench_tb", shell=True)

        self.input_cpp.set_data_from_file(data_file=self.input_file_cpp, signal_int_form=False)
        self.output_cpp.set_data_from_file(data_file=self.output_file_cpp, signal_int_form=False)
        self.output_verilog.set_data_from_file(data_file=self.output_file_verilog, signal_int_form=True)
        print(self.test_title+" is finished successfully !")
        return 1

    def compile(self):
        print (os.getcwd())
        if self.verilog_compile_list is not None:
            try:
                subprocess.call("iverilog -o ./Stimulus/test_bench_tb " + self.verilog_compile_list, shell=True)
                #  subprocess.check_call("iverilog -o " + self.verilog_compile_list)
            except subprocess.CalledProcessError as subErr:
                # handle errors in the called executable
                print ("SubProcessor Error occurred: " + "That command didn't work, try again")
                exit(-1)
            except OSError as OSErr:
                print ("TestFilter.compile()")
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
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", directory_address+self.test_title+"_Output_Compare.txt")
            exit(-1)

        index =0
        error_rate = 0.0
        error_rate_list = numpy.array([], dtype=float)

        compare_file.write("    \t\tOutput_CPP\tOutput_Verilog\n")
        for in_cpp, out_cpp, out_verilog in zip(self.input_cpp.signal_hex, self.output_cpp.signal_hex, self.output_verilog.signal_hex):
            matched = self.match(out_cpp, out_verilog)
            compare_file.write("float     \t")
            compare_file.write(str(self.output_cpp.signal[index])+'\t')
            compare_file.write(str(self.output_verilog.signal[index])+'\n')
            compare_file.write("int       \t")
            compare_file.write(str(self.output_cpp.signal_hex[index])+'\t')
            compare_file.write(str(self.output_verilog.signal_hex[index])+'\n')
            compare_file.write("hex       \t")
            compare_file.write(self.output_cpp.signal_hex_str[index][:-1]+'\t')
            compare_file.write(self.output_verilog.signal_hex_str[index][:-1]+'\n')
            compare_file.write("Error rate\t")
            if not matched :
                compare_file.write("not matched\t")
            else :
                compare_file.write("matched\t")
            error_rate = (abs(float(out_cpp-out_verilog))/float(out_cpp))*100
            error_rate_list = numpy.append(error_rate_list, error_rate)
            compare_file.write(str(error_rate)+"%\n\n")

            """
            if not matched:
                print("Fail ... cpp : {}\tverilog : {}".format(hex(out_cpp).rstrip("L"), hex(in_cpp).rstrip("L")))

                # input
                print("input_cpp")
                print(self.input_cpp.signal[index], hex(in_cpp).rstrip("L"))
                print("sign : ", ((in_cpp & 0x80000000) >> 31))
                print("exponent : ", ((in_cpp & 0x7f800000) >> 23) - 127)
                print("mantissa : ", in_cpp & 0x7fffff)
                print("\n")

                # output cpp
                print("output_cpp")
                print(self.output_cpp.signal[index], hex(out_cpp).rstrip("L"))
                print("sign : ", ((out_cpp & 0x80000000) >> 31))
                print("exponent : ", ((out_cpp & 0x7f800000) >> 23) - 127)
                print("mantissa : ", out_cpp & 0x7fffff)
                print("\n")

                # output verilog
                print("output_verilog")
                print(self.output_verilog.signal[index], hex(in_cpp).rstrip("L"))
                print("sign : ", ((out_verilog & 0x80000000) >> 31))
                print("exponent : ", ((out_verilog & 0x7f800000) >> 23) - 127)
                print("mantissa : ", out_verilog & 0x7fffff)
                print("\n")

                return 0
            """
            index += 1

        compare_file.write("Average Error rate : "+str(numpy.mean(error_rate_list)+'\n'))
        compare_file.close()
        return 1

    def show_input_cpp_graph(self, img_file=None, save_img=True):
        fig = self.input_cpp.get_graph()
        fig.suptitle(self.test_title+"\nInput Signal C++(Time Domain)")
        ax_list = fig.get_axes()
        ax_list[1].axvline(x=self.sampling_frequency/2, color='b', linestyle='--')
        ax_list[1].annotate('Nyquist rate'+"\n"+r'$\frac{f_s}{2}$'+"={}Hz".format(self.sampling_frequency/2),
                        xy=(self.sampling_frequency/2, 0.2), color='b', xycoords='data',
                        xytext=(self.sampling_frequency/2+20, 0.2), textcoords='data', arrowprops=dict(arrowstyle="->", color='b'))
        # fig.show()
        if save_img:
            fig.savefig(img_file)
        return 1

    def show_output_cpp_graph(self, img_file=None, save_img=True):
        fig = self.output_cpp.get_graph()
        fig.suptitle(self.test_title+"\nOutput Signal C++(Time Domain)")
        ax_list = fig.get_axes()
        ax_list[1].axvline(x=self.cut_off_frequency, color='g', linestyle='--')
        ax_list[1].annotate(r'$f_c$={}Hz'.format(self.cut_off_frequency),
                            xy=(self.cut_off_frequency, 0.2), color='g', xycoords='data',
                            xytext=(self.cut_off_frequency+20, 0.2), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
        ax_list[1].axvline(x=self.sampling_frequency/2, color='b', linestyle='--')
        ax_list[1].annotate('Nyquist rate'+"\n"+r'$\frac{f_s}{2}$'+"={}Hz".format(self.sampling_frequency/2),
                            xy=(self.sampling_frequency/2, 0.2), color='b', xycoords='data',
                            xytext=(self.sampling_frequency/2+20, 0.2), textcoords='data', arrowprops=dict(arrowstyle="->", color='b'))
        # fig.show()
        if save_img:
            fig.savefig(img_file)
        return 1

    def show_output_verilog_graph(self, img_file=None, save_img=True):
        fig = self.output_verilog.get_graph()
        fig.suptitle(self.test_title+"\nOutput Signal Verilog(Time Domain)")
        ax_list = fig.get_axes()
        ax_list[1].axvline(x=self.cut_off_frequency, color='g', linestyle='--')
        ax_list[1].annotate(r'$f_c$={}Hz'.format(self.cut_off_frequency),
                            xy=(self.cut_off_frequency, 0.2), color='g', xycoords='data',
                            xytext=(self.cut_off_frequency+20, 0.2), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
        ax_list[1].axvline(x=self.sampling_frequency/2, color='b', linestyle='--')
        ax_list[1].annotate('Nyquist rate'+"\n"+r'$\frac{f_s}{2}$'+"={}Hz".format(self.sampling_frequency/2),
                            xy=(self.sampling_frequency/2, 0.2), color='b', xycoords='data',
                            xytext=(self.sampling_frequency/2+20, 0.2), textcoords='data', arrowprops=dict(arrowstyle="->", color='b'))
        # fig.show()
        if save_img:
            fig.savefig(img_file)
        return 1

    def set_input_file_cpp(self, input_file_cpp):
        self.input_file_cpp = input_file_cpp

    def set_output_file_cpp(self, output_file_cpp):
        self.output_file_cpp = output_file_cpp

    def set_output_file_verilog(self, output_file_verilog):
        self.output_file_verilog = output_file_verilog

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