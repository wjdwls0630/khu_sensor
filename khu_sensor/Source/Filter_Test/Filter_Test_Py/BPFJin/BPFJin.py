
from matplotlib import pyplot
from DSP_Final_Project_Py.LPFJin.LPFJin import LPFJin


class BPFJin(LPFJin):
    def __init__(self, window='hamming', fc=(0, 0), fs=1e3, ft=50):
        super().__init__(window=window, fcL=fc[0], fs=fs, ft=ft)
        self.lpf2 = LPFJin(window=window, fcL=fc[1], fs=fs, ft=ft)

    def process(self, signal):
        out1 = super().process(signal=signal)
        out2 = self.lpf2.process(signal=signal)
        return out2-out1

    # get method
    def get_bpf_n(self):
        return self.lpf2.get_lpf_n()-self.get_lpf_n()

    def get_bpf_f(self):
        return self.lpf2.get_lpf_f()-self.get_lpf_f()

    def get_bpf_f_zero_padding(self, n):
        return self.lpf2.get_lpf_f_zero_padding(n)-self.get_lpf_f_zero_padding(n)

    def get_fcH(self):
        return self.lpf2.get_fcL()

    def get_fHpass(self):
        return self.lpf2.get_fpass()

    def get_fHstop(self):
        return self.lpf2.get_fstop()


"""@package docstring
@brief	Test Code 
@details Test BPFJin class operation  
"""


def main() -> int:
    return 1


if __name__ == "__main__":
    main()
