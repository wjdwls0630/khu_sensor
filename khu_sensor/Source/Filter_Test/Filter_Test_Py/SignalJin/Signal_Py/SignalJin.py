import numpy
from matplotlib import pyplot
from math import sqrt

"""
@package docstring
@brief	SignalJin class.
@details	This class processes create signal which is passed adc(samp freq 1000) 
"""


class SignalJin(object):
    def __init__(self, start_t=0.0, end_t=0.0, SNR = None, fs=1e3):
        # time
        self.start_t = start_t
        self.end_t = end_t
        self.t = numpy.array([])
        self.N = 0

        # frequency
        self.f1 = 200
        self.f2 = 400
        self.fs = fs

        # signal, noise container
        self.signal = numpy.array([])
        self.noise = numpy.array([])

        # standard deviation of noise
        if SNR != None:
            self.n_stdev = sqrt(1/10**(SNR/10))

    """
    operation (class method)
    """

    """
    signal 
    """
    def create_signal(self):
        # initialize time
        self.t = numpy.arange(0, (self.end_t-self.start_t+1/self.fs), 1/self.fs)
        self.N = len(self.t)

        # create sinusoidal signal
        self.signal = \
            numpy.cos(2 * numpy.pi * self.f1 * self.t) \
            + numpy.cos(2 * numpy.pi * self.f2 * self.t)

    # add noise on the signal
    def add_noise(self):
        # AWGN(Additive White Gaussian Noise)
        self.noise = numpy.random.normal(0, self.n_stdev, len(self.signal))
        self.signal += self.noise

    def get_noise(self):
        return self.noise

    # send signal to Receiver
    def transmit(self):
        return self.signal

    """
    time method
    """
    # get time
    def get_t(self):
        return self.t

    def set_start_t(self, start_t):
        self.start_t = start_t

    def get_start_t(self):
        return self.start_t

    def set_end_t(self, end_t):
        self.end_t = end_t

    def get_end_t(self):
        return self.end_t

    def get_n(self):
        return self.N

    """
    frequency
    """
    # get period of signal
    def get_T(self):
        return 1/numpy.gcd(self.f1, self.f2)

    # get signal frequency
    def get_fb(self):
        return numpy.gcd(self.f1, self.f2)

    # get sampling frequency
    def get_fs(self):
        return self.fs


"""@package docstring
@brief	Test Code 
@details Test SignalJin class operation  
"""


def main() -> int:
    x_10 = SignalJin(0, 3/200, SNR=-10)
    x_10.create_signal()
    x_10.add_noise()
    pyplot.figure()
    pyplot.stem(x_10.get_t(), x_10.transmit(), 'k', markerfmt='ko',
                use_line_collection=True)
    pyplot.show()
    return 1


if __name__ == "__main__":
    main()


