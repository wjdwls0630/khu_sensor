import numpy
from matplotlib import pyplot
from DSP_Final_Project_Py.LPFJin.LPFJin import LPFJin
from DSP_Final_Project_Py.BPFJin.BPFJin import BPFJin


class ReceiverJin(object):
    def __init__(self, start_t=0, end_t=0, signal=None, fs=0):
        self.signal = signal
        self.fs = fs
        # LPF filter cutoff frequency 250
        self.lpf = LPFJin(window='hamming', fcL=250, fs=self.fs, ft=50)
        # BPF filter cutoff frequency (Low, High) (350, 450)
        self.bpf = BPFJin(window='hamming', fc=(350, 450), fs=1e3, ft=50)

        # output signal passed LPF
        self.out_LPF = numpy.array([])
        # output signal passed BPF
        self.out_BPF = numpy.array([])

    def receive(self, signal):
        self.signal = signal

    def process_LPF(self):
        self.out_LPF = self.lpf.process(signal=self.signal)

    def process_BPF(self):
        self.out_BPF = self.bpf.process(signal=self.signal)

    def show_out_LPF(self, SNR="none"):
        fig1 = pyplot.figure(figsize=(8.27, 9.69), dpi=100)
        fig1.subplots_adjust(hspace=0.7, wspace=0.2)
        # n Domain - x[n]
        ax = fig1.add_subplot(3, 1, 1)
        if SNR == "none":
            ax.set(title="signal without noise Passed LPF")
        else:
            ax.set(title="signal with noise(SNR = {SNR}) Passed LPF".format(SNR=SNR))

        n_in = numpy.arange(0, self.signal.size, 1)

        """
        @brief
        t = nTs
        """
        t_in_ms = n_in/self.fs*1e3
        x_n = self.signal

        y_n = self.out_LPF
        n_out = numpy.arange(0, y_n.size, 1)
        t_out_ms = n_out / self.fs*1e3
        ax.plot(t_in_ms, x_n, 'r--', label=r'$x(t)$')
        ax.stem(t_in_ms, x_n, 'r', markerfmt='ro',
                use_line_collection=True, label=r'x[n], $f_s={fs}kHz$'.format(fs=self.fs/1e3))
        ax.plot(t_out_ms, y_n, 'k--', label=r'$y(t)$')
        ax.stem(t_out_ms, y_n, 'k', markerfmt='ko',
                use_line_collection=True, label=r'y[n], $f_s={fs}kHz$'.format(fs=self.fs/1e3))
        ax.set_xlim(0, 70)
        ax.set_xlabel(r'$t$ (ms)')
        ax.set_ylabel(r'$signal$')
        ax.grid()
        ax.legend(bbox_to_anchor=(1, 0.95), loc="upper right",  bbox_transform=fig1.transFigure)

        # frequency Domain
        """
        @brief
        
        fa = fs*k/N
        """
        ax = fig1.add_subplot(3, 1, 2)
        Y_f_abs = numpy.abs(numpy.fft.fft(self.out_LPF)/self.out_LPF.size)
        f_norm = numpy.linspace(0, 1, len(Y_f_abs))  # N = len(X_k_abs)
        f = self.fs * f_norm  # fa = k * (fs/N)
        ax.plot(f, Y_f_abs, 'k--')
        ax.stem(f, Y_f_abs, 'k', markerfmt='ko',
                use_line_collection=True)
        ax.set_xlabel(r'$f$ (Hz)')
        ax.set_ylabel(r'$|Y_lp(f)|$')
        ax.grid()

        ax = fig1.add_subplot(3, 1, 3)
        Y = numpy.fft.fft(self.out_LPF)

        # reduction error of 1e-5 ~ 1e-6 it makes error when calculate atan(im/re)
        # numpy.unwrap function make(convert) range phase of [-180, 180]
        phase_Y_f = numpy.angle(Y)
        f_norm = numpy.linspace(0, 1, len(phase_Y_f))  # N = len(Y_k_abs)
        f = self.fs * f_norm  # fa = k * (fs/N)
        ax.plot(f, numpy.unwrap(phase_Y_f), 'k')
        ax.set_xlabel(r'$f$ (Hz)')
        ax.set_ylabel(rf'$\angle Y_lp(f)$')
        ax.grid()

        return fig1

    def show_out_BPF(self, SNR="none"):
        fig1 = pyplot.figure(figsize=(8.27, 9.69), dpi=100)
        fig1.subplots_adjust(hspace=0.7, wspace=0.2)
        # n Domain - x[n]
        ax = fig1.add_subplot(3, 1, 1)
        if SNR == "none" :
            ax.set(title="signal without noise Passed BPF")
        else:
            ax.set(title="signal with noise(SNR = {SNR}) Passed BPF".format(SNR=SNR))

        n_in = numpy.arange(0, self.signal.size, 1)

        """
        @brief
        t = nTs
        """
        t_in_ms = n_in/self.fs*1e3
        x_n = self.signal

        y_n = self.out_BPF
        n_out = numpy.arange(0, y_n.size, 1)
        t_out_ms = n_out / self.fs*1e3
        ax.plot(t_in_ms, x_n, 'r--', label=r'$x(t)$')
        ax.stem(t_in_ms, x_n, 'r', markerfmt='ro',
                use_line_collection=True, label=r'x[n], $f_s={fs}kHz$'.format(fs=self.fs/1e3))
        ax.plot(t_out_ms, y_n, 'k--', label=r'$y(t)$')
        ax.stem(t_out_ms, y_n, 'k', markerfmt='ko',
                use_line_collection=True, label=r'y[n], $f_s={fs}kHz$'.format(fs=self.fs/1e3))
        ax.set_xlim(0, 70)
        ax.set_xlabel(r'$t$ (ms)')
        ax.set_ylabel(r'$signal$')
        ax.grid()
        ax.legend(bbox_to_anchor=(1, 0.95), loc="upper right",  bbox_transform=fig1.transFigure)

        # frequency Domain
        """
        @brief
        fa = fs*k/N
        """
        ax = fig1.add_subplot(3, 1, 2)
        Y_f_abs = numpy.abs(numpy.fft.fft(self.out_BPF)/self.out_BPF.size)
        f_norm = numpy.linspace(0, 1, len(Y_f_abs))  # N = len(X_k_abs)
        f = self.fs * f_norm  # fa = k * (fs/N)
        ax.plot(f, Y_f_abs, 'k--')
        ax.stem(f, Y_f_abs, 'k', markerfmt='ko',
                use_line_collection=True)
        ax.set_xlabel(r'$f$ (Hz)')
        ax.set_ylabel(r'$|Y_bp(f)|$')
        ax.grid()

        ax = fig1.add_subplot(3, 1, 3)
        Y = numpy.fft.fft(self.out_BPF)

        # reduction error of 1e-5 ~ 1e-6 it makes error when calculate atan(im/re)
        # numpy.unwrap function make(convert) range phase of [-180, 180]
        phase_Y_f = numpy.angle(Y)
        f_norm = numpy.linspace(0, 1, len(phase_Y_f))  # N = len(Y_k_abs)
        f = self.fs * f_norm  # fa = k * (fs/N)
        ax.plot(f, numpy.unwrap(phase_Y_f), 'k')
        ax.set_xlabel(r'$f$ (Hz)')
        ax.set_ylabel(r'$\angle Y_bp(f)$')
        ax.grid()

        return fig1



"""@package docstring
@brief	Test Code 
@details Test RecevierlJin class operation  
"""


def main() -> int:
    from DSP_Final_Project_Py.SignalJin.SignalJin import SignalJin

    # create signal
    x_m10 = SignalJin(0, 0.015, SNR=-10)
    x_m10.create_signal()

    # receive
    receiver = ReceiverJin(x_m10.get_start_t(), x_m10.get_end_t(), x_m10.transmit(), x_m10.get_fs())
    # LPF
    receiver.process_LPF()
    receiver.show_out_LPF()

    # BPF
    receiver.process_BPF()
    receiver.show_out_BPF()

    pyplot.show()
    return 1


if __name__ == "__main__":
    main()







