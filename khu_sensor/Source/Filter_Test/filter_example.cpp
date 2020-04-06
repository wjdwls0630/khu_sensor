khu_sensor_2048MHz

float _Old_HFP=0.0, _Old_Data=0.0;

main()
{
	float ECG_LPF;
	float ECG_notch;
	float ECG_HPF;
	int32_t ulData;    		//input data
	ECG_LPF = iir_LPF_10Hz_Sample_250Hz((float)ulData);
	ECG_notch = iir_Notch_60Hz_Sample_250Hz(ECG_LPF);
	ECG_HPF = iir_HPF(ECG_notch,_Old_Data, _Old_HFP, 5.0, 250.0);
  _Old_Data = ECG_notch;
	_Old_HFP  = ECG_HPF;
}


#define NCoef 5     // LPF Order
float iir_LPF_10Hz_Sample_250Hz(float NewSample)
{
    float ACoef[NCoef+1] = {
        0.01336978300344553300,
        0.02673956600689106700,
        0.01336978300344553300
    };
    float BCoef[NCoef+1] = {
        1.00000000000000000000,
        -1.64745998107697660000,
        0.70089678118840248000
    };
    static float y_LPF[NCoef+1]; //output samples
    static float x_LPF[NCoef+1]; //input samples
    int n;

    //shift the old samples
    for(n=NCoef; n>0; n--) {
       x_LPF[n] = x_LPF[n-1];
       y_LPF[n] = y_LPF[n-1];
    }

    //Calculate the new output
    x_LPF[0] = NewSample;
    y_LPF[0] = ACoef[0] * x_LPF[0];
    for(n=1; n<=NCoef; n++)
        y_LPF[0] += ACoef[n] * x_LPF[n] - BCoef[n] * y_LPF[n];

    return y_LPF[0];
}

float iir_Notch_60Hz_Sample_250Hz(float NewSample)
{
    float ACoef[NCoef_Stop+1] =
    {
        0.90058301430561660000,
        -0.22683676727047436000,
        1.81544980872044200000,
        -0.22683676727047436000,
        0.90058301430561660000
    };

    float BCoef[NCoef_Stop+1] =
    {
        1.00000000000000000000,
        -0.23849243624947844000,
        1.80168874042915350000,
        -0.21430582988195795000,
        0.80794959133320132000
    };

    static float y[NCoef_Stop+1]; //output samples
    static float x[NCoef_Stop+1]; //input samples
    int n;

    //shift the old samples
    for(n=NCoef_Stop; n>0; n--) {
       x[n] = x[n-1];
       y[n] = y[n-1];
    }

    //Calculate the new output
    x[0] = NewSample;
    y[0] = ACoef[0] * x[0];
    for(n=1; n<=NCoef_Stop; n++)
        y[0] += ACoef[n] * x[n] - BCoef[n] * y[n];

    return y[0];
}



#define FILTER_CAP          0.0001
float iir_HPF(float NewSample, float OldSample, float OldResult, float cutoff, float SPR)
{
    float tau, ts, omega, filter_R, HPF;

    ts = 1.0 / SPR;
    filter_R = 1.0 / (cutoff * PI2 * FILTER_CAP);
    tau = FILTER_CAP * filter_R;
    omega = tau / (tau + ts);

    HPF = omega * OldResult + omega * (NewSample-OldSample);

    return HPF;
}
