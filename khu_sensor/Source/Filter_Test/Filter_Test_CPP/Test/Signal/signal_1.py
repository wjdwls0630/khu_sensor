
"""@package docstring
@brief	case 1 : 1 ~ 66 Hz included signal without noise
@details	get signal plot in time domain and frequency domain
"""
if __name__ == "__main__":
    import numpy
    from matplotlib import pyplot

    """
    @brief	case 1 : 1 ~ 66 Hz included signal without noise 
    """

    # create signal
    with open("../../Data/Signal/Signal_1.txt", 'r') as dataFile:
        line = dataFile.readline()  # read one line - frequency
        Header = line.split(" ")
        signal_frequency = []
        for i in range(2, len(Header) - 1, 1):
            signal_frequency.append(int(Header[i]))

        line = dataFile.readline()  # read one line - sampling frequency
        Header = line.split(" ")
        sampling_frequency = float(Header[2])

        line = dataFile.readline()  # read one line - base frequency
        Header = line.split(" ")
        base_frequency = float(Header[2])

        line = dataFile.readline()  # read one line - sampling count
        Header = line.split(" ")  # sampling count
        sampling_count = int(Header[2])

        line = dataFile.readline()  # Data :  Header

        value = numpy.array([], dtype=float)
        while True:
            line = dataFile.readline()  # read one line

            if not line:
                break

            value = numpy.append(value, float(line))  # save data

    n = numpy.arange(0, sampling_count + 1, 1)

    # plot results

    # time domain

    fig1 = pyplot.figure(figsize=(8.27, 9.69), dpi=100)
    fig1.subplots_adjust(hspace=0.7, wspace=0.2)
    # Time Domain
    ax = fig1.add_subplot(2, 1, 1)
    ax.set(title="Signal_1\nFrequecny : 1 ~ 66 Hz")
    ax.plot(n, value, 'k', label=rf'Signal_1')
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
    f_norm = numpy.linspace(0, 1, len(X_f_abs)) # N = len(X_k_abs)
    f = sampling_frequency*f_norm  # fa = k * (fs/N)

    ax.plot(f, X_f_abs, 'r')
    ax.axvline(x=sampling_frequency/2, color='g', linestyle='--')
    ax.annotate('Nyquist rate'+"\n"+r'$\frac{f_s}{2}$'+"={}Hz".format(sampling_frequency/2),
                xy=(sampling_frequency/2, 10/sampling_count), color='g', xycoords='data',
                xytext=(sampling_frequency/2+20, 10/sampling_count), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(r'$|X(f)|$')
    ax.grid()
    ax.legend()
    pyplot.savefig("../../Data/Signal/Signal_1.png")

    pyplot.show()
