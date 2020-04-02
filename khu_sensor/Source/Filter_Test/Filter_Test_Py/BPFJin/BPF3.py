
"""@package docstring
@brief	case 3 :
BPF cut_off low frequency = 350Hz, cut_off high frequency = 450Hz,
sampling frequency = 2kHz
Bandwidth BPF : Low ~ High
@details	get BPF plot in n domain and frequency domain
"""
if __name__ == "__main__":
    import numpy
    from DSP_Final_Project_Py.SignalJin.SignalJin import SignalJin
    from DSP_Final_Project_Py.BPFJin.BPFJin import BPFJin
    from matplotlib import pyplot

    """
    @brief	case 3 :
    BPF cut_off low frequency = 350Hz, cut_off high frequency = 450Hz,
    sampling frequency = 2kHz
    """
    # create signal
    signal = SignalJin(0, 0.015, fs=2e3)
    signal.create_signal()

    # BPF
    bpf = BPFJin(window='hamming', fc=(350, 450), fs=signal.get_fs(), ft=50)

    # n, k domain
    k = n = numpy.arange(0, bpf.get_bpf_f().size, 1)

    # plot results

    # figure is A4 Size
    fig1 = pyplot.figure(figsize=(8.27, 11.69), dpi=100)
    fig1.subplots_adjust(hspace=0.7, wspace=0.2)
    fig1.suptitle("Design BPF")

    # text
    # design LPF
    spec = '\n'.join((
        r'Specification',
        r'cut-off frequency $f_cL$ : {fcL} Hz'.format(fcL=bpf.get_fcL()),
        r'cut-off frequency $f_cH$ : {fcH} Hz'.format(fcH=bpf.get_fcH()),
        r'transition width $\Delta F$ : {ft} Hz'.format(ft=bpf.get_ft()),
        r'sampling frequency $F_s$ : {Fs} kHz'.format(Fs=bpf.get_fs()/1e3),
        r'passband edge frequency $f_p$ : {fpL} ~ {fpH} Hz'.format(fpL=bpf.get_fpass(), fpH=bpf.get_fHpass()),
        r'stopband edge frequecny $f_s$ : {fsL}, {fsH} Hz'.format(fsL=bpf.get_fstop(), fsH=bpf.get_fHstop()),
        r'filter length $N$ : {N}'.format(N=bpf.get_N()),
    ))

    # n domain
    ax = fig1.add_subplot(4, 1, 1)
    ax.text(0.6, 1.0, spec, horizontalalignment='left', verticalalignment='top', transform=fig1.transFigure)
    h_bp_n = bpf.get_bpf_n()
    ax.plot(n, h_bp_n, 'k--')
    ax.stem(n, h_bp_n, 'k', markerfmt='ko',
            use_line_collection=True)
    ax.set_xlabel(r'$n$')
    ax.set_ylabel(rf'$h_bp(n))$')
    ax.grid()

    # Frequency Domain
    # gain amp
    ax = fig1.add_subplot(4, 1, 2)
    response_mag = numpy.abs(bpf.get_bpf_f())
    f_norm = numpy.linspace(0, 1, len(response_mag))  # N = len(X_k_abs)
    f = signal.get_fs() * f_norm  # fa = k * (fs/N)
    ax.plot(f, response_mag, 'k')
    ax.axvline(x=350, color='r', linestyle='--')
    ax.annotate(rf'$f_cL$' + '={}Hz'.format(bpf.get_fcL()),
                xy=(bpf.get_fcL(), 1 / numpy.sqrt(2)), color='r', xycoords='data',
                xytext=(bpf.get_fcL() - 300, 0.5), textcoords='data', arrowprops=dict(arrowstyle="->", color='r'))
    ax.axvline(x=450, color='r', linestyle='--')
    ax.annotate(rf'$f_cH$' + '={}Hz'.format(bpf.get_fcH()),
                xy=(bpf.get_fcH(), 1 / numpy.sqrt(2)), color='r', xycoords='data',
                xytext=(bpf.get_fcH() + 50, 0.8), textcoords='data', arrowprops=dict(arrowstyle="->", color='r'))
    ax.axvline(x=bpf.get_fs() / 2, color='g', linestyle='--')
    ax.annotate('Nyquist rate' + "\n" + r'$\frac{f_s}{2}$' + "={}kHz".format(bpf.get_fs() / 2e3),
                xy=(bpf.get_fs() / 2, 0.5), color='g', xycoords='data',
                xytext=(bpf.get_fs() / 2 + 50, 0.1), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(rf'$|H_bp(f)|$')
    ax.grid()

    # dB scale
    ax = fig1.add_subplot(4, 1, 3)
    response_mag2 = numpy.abs(bpf.get_bpf_f_zero_padding(2048))
    respose_dB = 20*numpy.log10(response_mag2)
    respose_dB = numpy.clip(respose_dB, -100, 100)
    f_norm = numpy.linspace(0, 1, len(respose_dB))
    f = signal.get_fs() * f_norm  # fa = k * (fs/N)
    ax.plot(f, respose_dB, 'k')
    ax.axvline(x=350, color='r', linestyle='--')
    ax.annotate(rf'$f_cL$' + '={}Hz'.format(bpf.get_fcL()),
                xy=(bpf.get_fcL(), 20*numpy.log10(1/numpy.sqrt(2))), color='r', xycoords='data',
                xytext=(bpf.get_fcL() - 300, -20), textcoords='data', arrowprops=dict(arrowstyle="->", color='r'))
    ax.axvline(x=450, color='r', linestyle='--')
    ax.annotate(rf'$f_cH$' + '={}Hz'.format(bpf.get_fcH()),
                xy=(bpf.get_fcH(), 20*numpy.log10(1/numpy.sqrt(2))), color='r', xycoords='data',
                xytext=(bpf.get_fcH() + 50, -40), textcoords='data', arrowprops=dict(arrowstyle="->", color='r'))
    ax.axvline(x=bpf.get_fs() / 2, color='g', linestyle='--')
    ax.annotate('Nyquist rate' + "\n" + r'$\frac{f_s}{2}$' + "={}kHz".format(bpf.get_fs() / 2e3),
                xy=(bpf.get_fs() / 2, 0.5), color='g', xycoords='data',
                xytext=(bpf.get_fs() / 2 + 50, -40), textcoords='data', arrowprops=dict(arrowstyle="->", color='g'))
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(rf'$|H_bp(f)|(dB)$')
    ax.grid()

    # linear phase response
    ax = fig1.add_subplot(4, 1, 4)
    X = bpf.get_bpf_f()

    # reduction error of 1e-5 ~ 1e-6 it makes error when calculate atan(im/re)
    # numpy.unwrap function make(convert) range phase of [-180, 180]
    phase_X_f = numpy.angle(X)
    f_norm = numpy.linspace(0, 1, len(phase_X_f))  # N = len(X_k_abs)
    f = signal.get_fs() * f_norm  # fa = k * (fs/N)
    ax.plot(f, numpy.unwrap(phase_X_f), 'k')
    ax.set_xlabel(r'$f$ (Hz)')
    ax.set_ylabel(rf'$\angle H_bp(f)$')
    ax.grid()

    pyplot.savefig("../data/BPF/BPF3.png")
    pyplot.show()
