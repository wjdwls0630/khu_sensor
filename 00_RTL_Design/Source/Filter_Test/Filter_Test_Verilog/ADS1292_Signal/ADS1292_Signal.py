import numpy
import matplotlib  # turn on when you run the code on MacOS
matplotlib.use('TkAgg')  # turn on when you run the code on MacOS
from matplotlib import pyplot
from Signal.Signal import Signal


class ADS1292_Signal(Signal):
    def __init__(self, data_file=None, signal=None, signal_hex_form=False):

        Signal.__init__(self, data_file=data_file, signal=signal, signal_hex_form=signal_hex_form)

    def get_graph(self):
        n = numpy.arange(0, len(self.signal), 1)
        # plot results

        # time domain

        fig1 = pyplot.figure(figsize=(6.3, 8.5), dpi=100)
        fig1.subplots_adjust(hspace=0.4, wspace=0.2)
        # Time Domain
        ax1 = fig1.add_subplot(2, 1, 1)
        ax1.plot(n, self.signal_signed_int, 'k', label="Signal")
        ax1.set_xlabel(r'$n$ (index)')
        ax1.set_ylabel(r'$x(n)$')
        ax1.grid()
        ax1.legend()

        ax2 = fig1.add_subplot(2, 1, 2)
        ax2.set(title="FFT_Sampling(extend N padded zero)")
        # number of length (length - sampling num -> zero padding)
        N = len(self.signal_signed_int)

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
        X_f_abs = numpy.abs(numpy.fft.fft(self.signal_signed_int, N)/N)
        f_norm = numpy.linspace(0, 1, len(X_f_abs)) # N = len(X_k_abs)
        f = 250.0*f_norm  # fa = k * (fs/N)

        ax2.plot(f, X_f_abs, 'r')
        ax2.set_xlabel(r'$f$ (Hz)')
        ax2.set_ylabel(r'$|X(f)|$')
        ax2.grid()
        ax2.legend()
        return fig1

