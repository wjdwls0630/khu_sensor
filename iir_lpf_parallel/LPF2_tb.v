`timescale 1ns/1ns
module LPF2_tb;


reg CLK, rstn;
reg i_X_DATA_VALID;

wire o_X_DATA_READY;
wire [31:0] o_Y_DATA;
wire o_Y_DATA_VALID;
reg i_Y_ACK;
iir_lpf  a(
	.i_X_DATA(32'h40000000), // input x (float)
	.i_X_DATA_VALID(i_X_DATA_VALID), //input x_data is valid
	.o_X_DATA_READY(o_X_DATA_READY), // iir_lpf busy	
	.o_Y_DATA(o_Y_DATA), // output y (float)
	.o_Y_DATA_VALID(o_Y_DATA_VALID), // output data is valid
	.i_Y_ACK(i_Y_ACK), // A flag that external module get data, so, o_Y_DATA is going to meaningless
	// it can be used as elongating o_Y_DATA_VALID High (1)
	.i_CLK(CLK), // clock
	.i_RSTN(rstn) // reset activate Low(0)
	);
initial begin
CLK=0;
rstn=1;
i_Y_ACK=0;
#10 rstn=0;
#30 rstn=1;
#10 i_X_DATA_VALID=1;
#20 i_X_DATA_VALID=0;
end

always #10 CLK<=~CLK;

endmodule

