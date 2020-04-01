
"""@package docstring
@brief	case 3 : signal with noise which SNR is 0dB
@details	get signal plot in time domain and frequency domain
"""
if __name__ == "__main__":
    import numpy
    from numpy.fft import fft
    from DSP_Final_Project_Py.SignalJin.SignalJin import SignalJin
    from matplotlib import pyplot

    """
    @brief	case 3 : signal with noise which SNR is 0dB 
    """
    # create signal
    signal = SignalJin(0, 0.015, SNR=0, fs=1e3)
    signal.create_signal()
    # add noise
    signal.add_noise()

    """
    @brief	it's also sampling signal, but it can be original signal
     cause its sampling frequency is very high
    """
    # original signal
    """
    @brief  N = 1500 0 ~ 0.015s Ts = 1e-5 -> fs = 1e5 
    """
    t = numpy.linspace(0, 0.015, 1500)
    x_original = numpy.cos(2 * numpy.pi * 200 * t) + numpy.cos(2 * numpy.pi * 400 * t)

    # plot results

    fig1 = pyplot.figure(figsize=(8.27, 9.69), dpi=100)
    fig1.subplots_adjust(hspace=0.7, wspace=0.2)
    # Time Domain
    ax = fig1.add_subplot(3, 1, 1)
    ax.set(title="signal with noise (SNR = 0dB)")
    ax.stem(signal.get_t(), signal.transmit(), 'r', markerfmt='ro',
            use_line_collection=True, label=rf'Sampling_fs=1kHz',)
    ax.plot(t, x_original, 'k--', label=rf'Original_fs=100kHz')
    ax.set_xlabel(r'$t$ (sec)')
    ax.set_ylabel(r'$x(t)$')
    ax.grid()
    ax.legend()

    # frequency Domain
    # Original
    ax = fig1.add_subplot(3, 1, 2)
    ax.set(title="CTFT_Original")
    k_ori = numpy.arange(0, x_original.size, 1)
    """
    @brief
    X(w) = TsX[k] fs = 100kHZ, N = 1500
    Ts = 2pi/N
    X(w) = 2piX(f)
    X(f) = (1/N)*X[k]
    fa = fs*k/N
    """
    k_coeff2f = 1e5/1500
    ax.stem(k_ori*k_coeff2f, numpy.abs(fft(x_original))/1500, 'k', markerfmt='ko',
            use_line_collection=True, label='Original_fs=100kHz')
    # cut the plot
    ax.set_xlim(0, 800)
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(r'$|X(f)|$')
    ax.grid()
    ax.legend()

    # Sampling N=512
    ax = fig1.add_subplot(3, 1, 3)
    ax.set(title="FFT_Sampling N=512(extend N padded zero)")
    # number of length (length - sampling num -> zero padding)
    N = 512

    """
    @brief
    X(w) = TsX[k] fs = 1kHZ, N = 512
    we extend length to N (for fft zero padding)
    then we need to re-define Ts to reconstruct X(f)
    Ts = 2pi/N
    X(w) = 2piX(f)
    X(f) = (1/N)*X[k]
    fa = fs*k/N
    """
    X_f_abs = numpy.abs(numpy.fft.fft(signal.transmit(), N)/N)
    f_norm = numpy.linspace(0, 1, len(X_f_abs)) # N = len(X_k_abs)
    f = signal.get_fs()*f_norm # fa = k * (fs/N)

    ax.plot(f, X_f_abs, 'r')
    ax.axvline(x=signal.get_fs() / 2, color='g', linestyle='--')
    ax.annotate('Nyquist rate'+"\n"+r'$\frac{f_s}{2}$'+"={}kHz".format(signal.get_fs()/2e3),
                xy=(signal.get_fs()/2, 0.01), color='g', xycoords='data',
                xytext=(signal.get_fs()/2+50, 0.01), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(r'$|X(f)|$')
    ax.grid()
    ax.legend()
    pyplot.savefig("../data/signal/signal3.png")

    pyplot.show()
