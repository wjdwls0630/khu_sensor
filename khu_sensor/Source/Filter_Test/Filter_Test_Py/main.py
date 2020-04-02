"""@package docstring
@brief	Main Code
@details Main code of DSP_Final_Project package
"""


def main() -> int:
    from matplotlib import pyplot
    from DSP_Final_Project_Py.SignalJin.SignalJin import SignalJin
    from DSP_Final_Project_Py.ReceiverJin.ReceiverJin import ReceiverJin

    """
    main Code
    """

    # sampling frequency
    fs = 1e3  # 1kHZ

    # signal without noise
    SNR = None
    signal = SignalJin(start_t=0, end_t=0.015, SNR=SNR, fs=fs)
    signal.create_signal()

    # receive
    receiver = ReceiverJin(
        start_t=signal.get_start_t(), end_t=signal.get_end_t(), signal=signal.transmit(), fs=signal.get_fs())

    # LPF
    receiver.process_LPF()
    receiver.show_out_LPF(SNR=SNR)
    pyplot.savefig("./data/output/out_LPF_without_Noise.png")

    # BPF
    receiver.process_BPF()
    receiver.show_out_BPF(SNR=SNR)
    pyplot.savefig("./data/output/out_BPF_without_Noise.png")

    # SNR = -10, 0, 10

    SNR = -10
    for i in range(0, 3):
        signal = SignalJin(start_t=0, end_t=0.015, SNR=SNR, fs=fs)
        signal.create_signal()
        signal.add_noise()

        # receive
        receiver = ReceiverJin(
            start_t=signal.get_start_t(), end_t=signal.get_end_t(), signal=signal.transmit(), fs=signal.get_fs())

        # LPF
        receiver.process_LPF()
        receiver.show_out_LPF(SNR=SNR)
        pyplot.savefig("./data/output/out_LPF_SNR={SNR}.png".format(SNR=SNR))

        # BPF
        receiver.process_BPF()
        receiver.show_out_BPF(SNR=SNR)
        pyplot.savefig("./data/output/out_BPF_SNR={SNR}.png".format(SNR=SNR))

        # rise SNR
        SNR += 10

    pyplot.show()

    return 1


if __name__ == "__main__":
    main()


