
"""@package docstring
@brief	case 1 :
LPF cut_off frequency = 250Hz, sampling frequency = 1kHz
@details	get LPF plot in n domain and frequency domain
"""
if __name__ == "__main__":
    import numpy
    from DSP_Final_Project_Py.SignalJin.SignalJin import SignalJin
    from DSP_Final_Project_Py.LPFJin.LPFJin import LPFJin
    from matplotlib import pyplot

    """
    @brief	case 1 : 
    LPF cut_off frequency = 250Hz, sampling frequency = 1kHz
    """
    # create signal
    signal = SignalJin(0, 0.015, fs=1e3)
    signal.create_signal()

    # LPF
    lpf = LPFJin(window='hamming', fcL=250, fs=signal.get_fs(), ft=50)

    # n, k domain
    k = n = numpy.arange(0, lpf.get_lpf_f().size, 1)

    # plot results

    # figure is A4 Size
    fig1 = pyplot.figure(figsize=(8.27, 11.69), dpi=100)
    fig1.subplots_adjust(hspace=0.7, wspace=0.2)
    fig1.suptitle("Design LPF")

    # text
    # design LPF
    spec = '\n'.join((
        r'Specification',
        r'cut-off frequency $f_cL$ : {fcL} Hz'.format(fcL=lpf.get_fcL()),
        r'transition width $\Delta F$ : {ft} Hz'.format(ft=lpf.get_ft()),
        r'sampling frequency $F_s$ : {Fs} kHz'.format(Fs=lpf.get_fs()/1e3),
        r'passband edge frequency $f_p$ : {fp} Hz'.format(fp=lpf.get_fpass()),
        r'stopband edge frequecny $f_s$ : {fs} Hz'.format(fs=lpf.get_fstop()),
        r'filter length $N$ : {N}'.format(N=lpf.get_N()),
    ))

    # n domain
    ax = fig1.add_subplot(4, 1, 1)
    ax.text(0.6, 1.0, spec, horizontalalignment='left', verticalalignment='top', transform=fig1.transFigure)
    h_lp_n = lpf.get_lpf_n()
    ax.plot(n, h_lp_n, 'k--')
    ax.stem(n, h_lp_n, 'k', markerfmt='ko',
            use_line_collection=True)
    ax.set_xlabel(r'$n$')
    ax.set_ylabel(rf'$h_lp(n)$')
    ax.grid()

    # Frequency Domain
    # gain amp
    ax = fig1.add_subplot(4, 1, 2)
    response_mag = numpy.abs(lpf.get_lpf_f())
    f_norm = numpy.linspace(0, 1, len(response_mag))  # N = len(X_k_abs)
    f = signal.get_fs() * f_norm  # fa = k * (fs/N)
    ax.plot(f, response_mag, 'k')
    ax.axvline(x=250, color='r', linestyle='--')
    ax.annotate(rf'$f_cL$'+'={}Hz'.format(lpf.get_fcL()),
                xy=(lpf.get_fcL(), 1/numpy.sqrt(2)), color='r', xycoords='data',
                xytext=(lpf.get_fcL()+50, 0.5), textcoords='data', arrowprops=dict(arrowstyle="->", color='r'))
    ax.axvline(x=lpf.get_fs()/2, color='g', linestyle='--')
    ax.annotate('Nyquist rate'+"\n"+r'$\frac{f_s}{2}$'+"={}kHz".format(lpf.get_fs()/2e3),
                xy=(lpf.get_fs()/2, 0.5), color='g', xycoords='data',
                xytext=(lpf.get_fs()/2+50, 0.5), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(rf'$|H_lp(f)|$')
    ax.grid()

    # dB scale
    ax = fig1.add_subplot(4, 1, 3)
    response_mag2 = numpy.abs(lpf.get_lpf_f_zero_padding(2048))
    respose_dB = 20*numpy.log10(response_mag2)
    respose_dB = numpy.clip(respose_dB, -100, 100)
    f_norm = numpy.linspace(0, 1, len(respose_dB))
    f = signal.get_fs() * f_norm  # fa = k * (fs/N)
    ax.plot(f, respose_dB, 'k')
    ax.axvline(x=250, color='r', linestyle='--')
    ax.annotate(rf'$f_cL$' + '={}Hz'.format(lpf.get_fcL()),
                xy=(lpf.get_fcL(), 20*numpy.log10(1/numpy.sqrt(2))), color='r', xycoords='data',
                xytext=(lpf.get_fcL() + 50, 20*numpy.log10(1/numpy.sqrt(2))), textcoords='data', arrowprops=dict(arrowstyle="->", color='r'))
    ax.axvline(x=lpf.get_fs() / 2, color='g', linestyle='--')
    ax.annotate('Nyquist rate' + "\n" + r'$\frac{f_s}{2}$' + "={}kHz".format(lpf.get_fs() / 2e3),
                xy=(lpf.get_fs() / 2, -40), color='g', xycoords='data',
                xytext=(lpf.get_fs() / 2 + 50, -40), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(rf'$|H_lp(f)|(dB)$')
    ax.grid()

    # linear phase response
    ax = fig1.add_subplot(4, 1, 4)
    X = lpf.get_lpf_f()

    # reduction error of 1e-5 ~ 1e-6 it makes error when calculate atan(im/re)
    # numpy.unwrap function make(convert) range phase of [-180, 180]
    phase_X_f = numpy.angle(X)
    f_norm = numpy.linspace(0, 1, len(phase_X_f))  # N = len(X_k_abs)
    f = signal.get_fs() * f_norm  # fa = k * (fs/N)
    ax.plot(f, numpy.unwrap(phase_X_f), 'k')
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(rf'$\angle H_lp(f)$')
    ax.grid()

    pyplot.savefig("../data/LPF/LPF1.png")
    pyplot.show()
