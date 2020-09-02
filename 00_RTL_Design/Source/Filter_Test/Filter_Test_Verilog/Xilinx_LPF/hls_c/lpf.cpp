#include "lpf.hpp"


low_pass_filter::low_pass_filter(){
		for(int i=0;i<3;i++){
			x_data[i]=0;
			y_data[i]=0;
		}
		Acoef[0]=0.01336978300344553300;
		Acoef[1]=0.02673956600689106700;
		Acoef[2]=0.01336978300344553300;


		Bcoef[0]=1.0;
		Bcoef[1]=-1.64745998107697660000;
		Bcoef[2]=0.70089678118840248000;
}

float low_pass_filter::lpf(float a){
#pragma HLS expression_balance

#pragma HLS allocation instances=mul limit=2 operation
#pragma HLS allocation instances=add limit=1 operation
	int i;
	for(i=2;i>0;i--){
	#pragma HLS dependence variable x_data inter true
	#pragma HLS dependence variable y_data inter true
		x_data[i]=x_data[i-1];
		y_data[i]=y_data[i-1];
	}

	x_data[0]=a;
	y_data[0]=Acoef[0]*x_data[0];

	for(i=1;i<3;i++){
//		#pragma HLS PIPELINE II=1
		y_data[0]+=Acoef[i]*x_data[i]-Bcoef[i]*y_data[i];
		}
	return y_data[0];
}

float lpf_begin(float data_in){
		low_pass_filter lpf_tb;
		return lpf_tb.lpf(data_in);
}

