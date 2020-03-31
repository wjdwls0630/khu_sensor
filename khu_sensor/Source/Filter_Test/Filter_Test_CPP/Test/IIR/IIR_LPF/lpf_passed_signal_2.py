
"""@package docstring
@brief	case 2 : (various frequency included) signal with SNR 116 passed IIR_LPF
@details	get signal plot in time domain and frequency domain
"""
if __name__ == "__main__":
    import numpy
    from matplotlib import pyplot

    """
    @brief	
    case 2 : (various frequency included) signal with SNR 116 passed IIR_LPF   
    """

    # create signal
    with open("../../../Data/IIR/IIR_LPF/LPF_Passed_Signal_2.txt", 'r') as dataFile:
        line = dataFile.readline()  # read one line - sampling frequency
        Header = line.split(" ")
        sampling_frequency = float(Header[2])

        line = dataFile.readline()  # read one line - cut-off frequency
        Header = line.split(" ")
        cut_off_frequency = float(Header[2])

        line = dataFile.readline()  # read one line - sampling count
        Header = line.split(" ")  # sampling count
        sampling_count = int(Header[2])

        line = dataFile.readline()  # Data :  Header

        value = numpy.array([], dtype=float)
        value_hex = numpy.array([])
        while True:
            line = dataFile.readline()  # read one line
            temp = line.split(" ")
            if not line:
                break

            value = numpy.append(value, float(temp[0]))  # save data
            value_hex = numpy.append(value_hex, temp[1])  # save hex data

    n = numpy.arange(0, sampling_count, 1)

    # plot results

    # text
    # design IIR_LPF
    spec = '\n'.join((
        r'Specification',
        r'sampling frequency $F_s$ : {Fs} Hz'.format(Fs=sampling_frequency),
        r'cut-off frequency $f_cL$ : {fcL} Hz'.format(fcL=cut_off_frequency),
    ))

    """
    r'transition width $\Delta F$ : {ft} Hz'.format(ft=lpf.get_ft()),
    r'passband edge frequency $f_p$ : {fp} Hz'.format(fp=lpf.get_fpass()),
    r'stopband edge frequecny $f_s$ : {fs} Hz'.format(fs=lpf.get_fstop()),
    r'A Coefficient $N$ : {N}'.format(N=lpf.get_N()),
    r'B Coefficient $N$ : {N}'.format(N=lpf.get_N()),
    """

    # figure is A4 Size
    fig1 = pyplot.figure(figsize=(8.27, 11.69), dpi=100)
    fig1.subplots_adjust(hspace=0.7, wspace=0.2)
    ax = fig1.add_subplot(2, 1, 1)
    #ax.text(0.6, 1.0, spec, horizontalalignment='left', verticalalignment='top', transform=fig1.transFigure)
    fig1.suptitle("IIR_LPF_Passed_Signal_2")

    # Time Domain
    # ax = fig1.add_subplot(3, 1, 2)
    # ax.set(title="LPF_Passed_Signal_CPP_1")
    ax.plot(n, value, 'k', label=rf'IIR_LPF_Passed_Signal_2')
    ax.set_xlabel(r'$n$ (index)')
    ax.set_ylabel(r'$x(n)$')
    ax.grid()
    ax.legend()

    # frequency Domain
    # Sampling N=
    ax = fig1.add_subplot(2, 1, 2)
    ax.set(title="FFT_Sampling N={}(extend N padded zero)".format(sampling_count))
    # number of length (length - sampling num -> zero padding)
    N = sampling_count

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
    X_f_abs = numpy.abs(numpy.fft.fft(value, N)/N)
    f_norm = numpy.linspace(0, 1, len(X_f_abs))  # N = len(X_k_abs)
    f = sampling_frequency*f_norm  # fa = k * (fs/N)

    ax.plot(f, X_f_abs, 'r')
    ax.axvline(x=cut_off_frequency / 2, color='g', linestyle='--')
    ax.annotate(rf'$f_cL$' + '={}Hz'.format(cut_off_frequency),
                xy=(cut_off_frequency, 500/sampling_count), color='g', xycoords='data',
                xytext=(cut_off_frequency + 50, 500/sampling_count), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
    ax.axvline(x=sampling_frequency/2, color='b', linestyle='--')
    ax.annotate('Nyquist rate'+"\n"+r'$\frac{f_s}{2}$'+"={}Hz".format(sampling_frequency/2),
                xy=(sampling_frequency/2, 0.01), color='b', xycoords='data',
                xytext=(sampling_frequency/2+20, 0.01), textcoords='data', arrowprops=dict(arrowstyle="->", color='b'))
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(r'$|X(f)|$')
    ax.grid()
    ax.legend()
    pyplot.savefig("../../../Data/IIR/IIR_LPF/LPF_Passed_Signal_2.png")

    pyplot.show()
