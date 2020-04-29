#ifndef LPF
#define LPF

#define PARAMLENGTH 3;
#include <ap_fixed.h>

class low_pass_filter{
public:
	float x_data[3];
	float y_data[3];
	float Acoef[3];
	float Bcoef[3];
public:
	low_pass_filter();

	void set_x(float a,float b, float c){
		x_data[0]=a;
		x_data[1]=b;
		x_data[2]=c;
	}
	void set_y(float a,float b,float c){
		y_data[0]=a;
		y_data[1]=b;
		y_data[2]=c;
	}
	float lpf(float a);

};

#endif
