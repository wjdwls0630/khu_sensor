import numpy
#  import matplotlib  # turn on when you run the code on MacOS
#  matplotlib.use('TkAgg')  # turn on when you run the code on MacOS
from matplotlib import pyplot
from struct import pack
from ctypes import cast, pointer, c_int, c_float, POINTER
from sys import exit


class Signal(object):
    def __init__(self, data_file=None, signal=None, signal_hex_form=False):
        self.data_file = None
        self.signal = numpy.array([], dtype=float)
        self.signal_hex = numpy.array([], dtype=int)
        self.signal_hex_str = numpy.array([])

    def read_signal_float(self):
        try:
            data_file = open(self.data_file, 'r')
        except OSError as OSErr:
            print ("Signal.read_signal_float()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", self.data_file)
            exit(-1)

        with data_file:
            while True:
                line = data_file.readline()  # read one line
                temp = line.split(" ")
                if not line:
                    break
                self.signal = numpy.append(self.signal, float(temp[0]))  # save data
                self.signal_hex = numpy.append(self.signal_hex, int(temp[1], 0))  # save hex data
                self.signal_hex_str = numpy.append(self.signal_hex_str, temp[1])  # save hex string data
        return 1

    def read_signal_hex(self):
        try:
            data_file = open(self.data_file, 'r')
        except OSError as OSErr:
            print ("Signal.read_signal_hex()")
            print ("OSError > ", OSErr.errno)
            print ("OSError > ", OSErr.strerror)
            print ("OSError > ", OSErr.filename)
            print("Could not open or read the file ! \t", self.data_file)
            exit(-1)

        with data_file:
            while True:
                line = data_file.readline()  # read one line

                if not line:
                    break
                self.signal_hex = numpy.append(self.signal_hex, int(line))
                hex_code = int(hex(int(line)).rstrip('L'), 16)  # convert from hex to a Python int
                # make this into a c integer and cast the int pointer to a float pointer
                float_pointer = cast(pointer(c_int(hex_code)), POINTER(c_float))
                self.signal = numpy.append(self.signal, float_pointer.contents.value)
                if int(line) == 0:
                    # make same status with read_signal_float
                    self.signal_hex_str = numpy.append(self.signal_hex_str, '0x00000000\n')
                else:
                    # make same status with read_signal_float
                    self.signal_hex_str = numpy.append(self.signal_hex_str, hex(int(line)).rstrip('L')+'\n')
        return 1

    def set_data_from_file(self, data_file=None, signal_int_form=False):
        self.data_file = data_file
        if signal_int_form is False:
            # use when data_file is *.txt
            # cpp file result
            if self.read_signal_float() == 1:
                return 1
            else:
                return 0
        else:
            # use when data_file is no *.txt
            # verilog file result
            if self.read_signal_hex() == 1:
                return 1
            else:
                return 0

    def set_data_from_array(self, signal=None, signal_int_form=False):
        if signal is None:
            return 0
        else:
            if signal_int_form is True:
                self.signal_hex = signal
                for i in self.signal_hex:
                    hex_code = int(hex(i).rstrip('L'), 16)  # convert from hex to a Python int
                    # make this into a c integer and cast the int pointer to a float pointer
                    float_pointer = cast(pointer(c_int(hex_code)), POINTER(c_float))
                    self.signal = numpy.append(self.signal, float_pointer.contents.value)
                    self.signal_hex_str = numpy.append(self.signal_hex_str, hex(i).rstrip('L'))
            else:
                self.signal = signal  # save data
                for i in self.signal:
                    # save hex data
                    self.signal_hex = numpy.append(self.signal_hex, int(pack(">f", i).encode("hex"), 16))
                    # save hex string data
                    self.signal_hex_str = numpy.append(self.signal_hex_str, "0x"+pack(">f", i).encode("hex"))

            return 1

    def get_graph(self):
        n = numpy.arange(0, len(self.signal), 1)
        # plot results

        # time domain

        fig1 = pyplot.figure(figsize=(6.3, 8.5), dpi=100)
        fig1.subplots_adjust(hspace=0.4, wspace=0.2)
        # Time Domain
        ax1 = fig1.add_subplot(2, 1, 1)
        ax1.plot(n, self.signal, 'k', label="Signal")
        ax1.set_xlabel(r'$n$ (index)')
        ax1.set_ylabel(r'$x(n)$')
        ax1.grid()
        ax1.legend()

        ax2 = fig1.add_subplot(2, 1, 2)
        ax2.set(title="FFT_Sampling(extend N padded zero)")
        # number of length (length - sampling num -> zero padding)
        N = len(self.signal)

        """
        @brief
        X(w) = TsX[k] 
        we extend length to N (for fft zero padding)
        then we need to re-define Ts to reconstruct X(f)
        Ts = 2pi/N
        X(w) = 2piX(f)
        X(f) = (1/N)*X[k]
        fa = fs*k/N
        """
        X_f_abs = numpy.abs(numpy.fft.fft(self.signal, N)/N)
        f_norm = numpy.linspace(0, 1, len(X_f_abs)) # N = len(X_k_abs)
        f = 250.0*f_norm  # fa = k * (fs/N)

        ax2.plot(f, X_f_abs, 'r')
        ax2.set_xlabel(r'$f$ (Hz)')
        ax2.set_ylabel(r'$|X(f)|$')
        ax2.grid()
        ax2.legend()
        return fig1



