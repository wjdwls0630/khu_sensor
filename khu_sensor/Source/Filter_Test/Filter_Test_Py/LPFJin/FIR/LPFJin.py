import numpy
from scipy.signal import firwin, fftconvolve, get_window
from DSP_Final_Project_Py.SignalJin.SignalJin import SignalJin
from matplotlib import pyplot


class LPFJin(object):
    def __init__(self, window='hamming', fcL=0, fs=1e3, ft=50):
        self.fcL = fcL  # cut off frequency
        self.fs = fs  # sampling frequency
        self.ft = ft
        if window == 'hamming':
            self.N = int(3.3*self.fs/self.ft)
        else :
            # no implement of other window type
            self.N = int(3.3 * self.fs / self.ft)

        # select N
        if self.N %2 !=0 :
            # if N is odd, then plus 1 , make it even
            self.N +=1

        self.fpass = self.fcL - self.ft/2  # passband edge frequency
        self.fstop = self.fcL + self.ft/2  # stopband edge frequency
        self.lpf = firwin(
            numtaps=self.N, cutoff=self.fcL, window='hamming', pass_zero='lowpass', fs=self.fs)
        self.window = get_window(window, self.N)

    # signal process
    def process(self, signal):
        if signal.size != self.lpf.size:
            if signal.size > self.lpf.size:
                self.lpf = numpy.append(self.lpf, numpy.zeros(signal.size - self.lpf.size))
            else:
                signal = numpy.append(signal, numpy.zeros(self.lpf.size - signal.size))

        output = fftconvolve(signal, self.lpf)
        return output

    # get method
    def get_lpf_n(self):
        return self.lpf

    def get_lpf_f(self):
        return numpy.fft.fft(self.lpf)

    def get_lpf_f_zero_padding(self, n):
        return numpy.fft.fft(self.lpf, n)

    def get_window_n(self):
        return self.window

    def get_window_f(self):
        return numpy.fft.fft(self.window)

    def get_window_f_zero_padding(self, n):
        return numpy.fft.fft(self.window, n)

    def get_N(self):
        return self.N

    def get_fs(self):
        return self.fs

    def get_fcL(self):
        return self.fcL

    def get_ft(self):
        return self.ft

    def get_fpass(self):
        return self.fpass

    def get_fstop(self):
        return self.fstop

"""@package docstring
@brief	Test Code 
@details Test LPFJin class operation  
"""


def main() -> int:
    lpf = LPFJin(fcL=250, ft=50)
    n = numpy.arange(0, lpf.get_n(), 1)
    fig1 = pyplot.figure(figsize=(10, 8), dpi=100)
    fig1.subplots_adjust(hspace=0.7, wspace=0.2)
    ax = fig1.add_subplot(2, 1, 1)
    ax.set(title="hamming window (n domain)")
    ax.plot(n, lpf.get_window_n(), 'b', label=rf'N=51')
    ax.set_xlabel(r'$n$')
    ax.set_ylabel(r'$w(n)$')
    ax.grid()

    ax = fig1.add_subplot(2, 1, 2)
    ax.set(title="Frequency response of Hamming window")
    """
    X(w) = TsX[k]
    Ts = 2pi/N
    X(w) = 2piX(f)
    X(f) = (1/N)*X[k]
    fa = fs*k/N
    """
    response = 20*numpy.log10(numpy.abs(lpf.get_window_f_zero_padding(2048)/25.5))
    response = numpy.clip(response, -100, 100)
    norm_freqs = numpy.linspace(0, 1, len(response))
    ax.plot(norm_freqs, response, 'b')
    ax.set_xlim(0, 1)
    ax.set_xlabel("Normalized frequency [cycles per sample]")
    ax.set_ylabel(r'$|W(f)|dB$')
    ax.grid()
    ax.axis('tight')
    pyplot.savefig("../data/LPF/hamming_window.png")

    pyplot.show()
    return 1


if __name__ == "__main__":
    main()

