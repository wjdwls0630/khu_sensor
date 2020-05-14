#include <stdio.h>
#include "lpf.hpp"
#include <ap_fixed.h>

//typedef ap_fixed<32,8,AP_RND> _data;
///NOT IEEE 754 TYPE

float lpf_begin(float data_in);

int main(){

	float data_in=1.0;
	float data_out=lpf_begin(data_in);


	printf("\n\tData Out : %f ",data_out);
	return 0;

}
