module iir_notch_filter (

	input i_CLK, // clock
	input i_RSTN, //reset
	input [31:0] i_NewSample,
	input i_NewSample_valid, // from LPF
	input result_ack,
	output reg notch_calculating,
	output reg [31:0] o_result,
	output reg o_result_valid
	);


// filter coefficients


// filter coefficients values
parameter ACoef0_4 = 32'h3f668c9c; //Acoef[0] = Acoef[4]
parameter ACoef1_3 = 32'hbe6847e6; //Acoef[1] = Acoef[3]
parameter ACoef2 = 32'h3fe860a9;
//assign ACoef3 = 32'hbe6847e6;
//assign ACoef4 = 32'h3f668c9c;


parameter BCoef1 = 32'h3e74375c;
parameter BCoef2 = 32'hbfe69dbd;
parameter BCoef3 = 32'h3e5b72fd;
parameter BCoef4 = 32'hbf4ed5c9;

reg [31:0] x[0:4];
reg [31:0] y[0:4];

reg [31:0] r_ACoef0_4 = ACoef0_4;
reg [31:0] r_ACoef1_3 = ACoef1_3;
reg [31:0] r_ACoef2 = ACoef2;
reg [31:0] r_BCoef1 = BCoef1;
reg [31:0] r_BCoef2 = BCoef2;
reg [31:0] r_BCoef3 = BCoef3;
reg [31:0] r_BCoef4 = BCoef4;
//======================================================================Multiplier============================================================================
reg [31:0] mult_input_a1, mult_input_a2, mult_input_a3;
reg [31:0] mult_input_b1, mult_input_b2, mult_input_b3;
reg mult_input_a1_b1_stb, mult_input_a2_b2_stb, mult_input_a3_b3_stb;
reg mult_output_z1_ack, mult_output_z2_ack, mult_output_z3_ack;

wire [31:0] mult_output_z1, mult_output_z2, mult_output_z3;
wire mult_output_z1_stb, mult_output_z2_stb, mult_output_z3_stb;
wire mult_input_a1_b1_ack, mult_input_a2_b2_ack, mult_input_a3_b3_ack;

multiplier multiplier1(mult_input_a1, mult_input_b1, mult_input_a1_b1_stb, mult_output_z1_ack, i_CLK, ~i_RSTN, mult_output_z1, mult_output_z1_stb, mult_input_a1_b1_ack);
multiplier multiplier2(mult_input_a2, mult_input_b2, mult_input_a2_b2_stb, mult_output_z2_ack, i_CLK, ~i_RSTN, mult_output_z2, mult_output_z2_stb, mult_input_a2_b2_ack);
multiplier multiplier3(mult_input_a3, mult_input_b3, mult_input_a3_b3_stb, mult_output_z3_ack, i_CLK, ~i_RSTN, mult_output_z3, mult_output_z3_stb, mult_input_a3_b3_ack);

	  
	  
 
//===============================================Adder=====================================================	  
	  
reg [31:0] add_input_a1, add_input_a2;
reg [31:0] add_input_b1, add_input_b2;
reg add_input_a1_b1_stb, add_input_a2_b2_stb;
reg add_output_z1_ack, add_output_z2_ack;

wire [31:0] add_output_z1, add_output_z2;
wire add_output_z1_stb, add_output_z2_stb;
wire add_input_a1_b1_ack, add_input_a2_b2_ack;


adder adder1(add_input_a1, add_input_b1, add_input_a1_b1_stb, add_output_z1_ack, i_CLK, ~i_RSTN, add_output_z1, add_output_z1_stb, add_input_a1_b1_ack);
adder adder2(add_input_a2, add_input_b2, add_input_a2_b2_stb, add_output_z2_ack, i_CLK, ~i_RSTN, add_output_z2, add_output_z2_stb, add_input_a2_b2_ack);

reg [3:0] r_pstate; // present state
reg [3:0] r_lstate; // last state

parameter ST_IDLE = 4'd0;
parameter ST_Calculate_INIT = 4'd1;
parameter ST_Calculate = 4'd2;
parameter ST_Data_Shifting = 4'd3;


reg [2:0] counter = 3'b000;
always @ ( posedge i_CLK, negedge i_RSTN ) begin
	if(!i_RSTN) begin
		 x[0] <= 32'b0; x[1] <= 32'b0; x[2] <= 32'b0; x[3] <= 32'b0; x[4] <= 32'b0; y[0] <= 32'b0; y[1] <= 32'b0; y[2] <= 32'b0; y[3] <= 32'b0; y[4] <= 32'b0;
		 notch_calculating <= 1'b0;
		 o_result <= 32'b0;
		 o_result_valid <= 1'b0;
		 
		 r_pstate <= ST_IDLE;
	end
	else begin
		case (r_pstate)
			ST_IDLE:
				begin
					mult_input_a1 <= 32'b0;	mult_input_a2 <= 32'b0; mult_input_a3 <= 32'b0;
					mult_input_b1 <= 32'b0; mult_input_b2 <= 32'b0;	mult_input_b3 <= 32'b0;
					mult_input_a1_b1_stb <= 1'b0; mult_input_a2_b2_stb <= 1'b0; mult_input_a3_b3_stb <= 1'b0;
					mult_output_z1_ack <= 1'b0; mult_output_z2_ack <= 1'b0; mult_output_z3_ack <= 1'b0;

					add_input_a1 <= 32'b0; add_input_a2 <= 32'b0;
					add_input_b1 <= 32'b0; add_input_b2 <= 32'b0;
					add_input_a1_b1_stb <= 1'b0; add_input_a2_b2_stb <= 1'b0;
					add_output_z1_ack <= 1'b0; add_output_z2_ack <= 1'b0;
					
					r_pstate <= ST_Calculate_INIT;
				end
			
			ST_Calculate_INIT:
				begin
					if(i_NewSample_valid) begin
						x[0] <= i_NewSample;
						r_pstate <= ST_Calculate;
					end
					else begin
						r_pstate <= ST_Calculate_INIT;
					end	
				end
			
			ST_Calculate:
				begin
					case(counter)
						3'b000:
							begin
								if(add_input_a1_b1_ack) begin
									add_input_a1 <= x[0]; add_input_b1 <= x[4];
									add_input_a1_b1_stb <= 1'b1;
								end
								else begin
									add_input_a1_b1_stb <= 1'b0;
								end
							
								if(add_input_a2_b2_ack) begin
									add_input_a2 <= x[1]; add_input_b2 <= x[3];
									add_input_a2_b2_stb <= 1'b1;
								end
								else begin
									add_input_a2_b2_stb <= 1'b0;
								end
							
								if(add_output_z1_stb)begin
									add_output_z1_ack <= 1'b1;
								end
								if(add_output_z2_stb)begin
									add_output_z2_ack <= 1'b1;
								end
								
								
								if (mult_input_a1_b1_ack) begin
									mult_input_a1 <= r_ACoef2;	mult_input_b1 <= x[2];
									mult_input_a1_b1_stb <= 1'b1;
								end
								else begin
									mult_input_a1_b1_stb <= 1'b0;
								end
								
								if (mult_input_a2_b2_ack) begin
									mult_input_a2 <= r_BCoef1; mult_input_b2 <=  y[1];
									mult_input_a2_b2_stb <= 1'b1;
								end
								else begin
									mult_input_a2_b2_stb <= 1'b0;
								end
								
								if (mult_input_a3_b3_ack) begin
									mult_input_a3 <= r_BCoef2;	mult_input_b3 <= y[2];
									mult_input_a3_b3_stb <= 1'b1;
								end
								else begin
									mult_input_a3_b3_stb <= 1'b0;
								end
								
								
								if(mult_output_z1_stb)begin
									mult_output_z1_ack <= 1'b1;
								end
								if(mult_output_z2_stb)begin
									mult_output_z2_ack <= 1'b1;
								end
								if(mult_output_z3_stb)begin
									mult_output_z3_ack <= 1'b1;
								end
								
								if (add_output_z1_ack && add_output_z2_ack && mult_output_z1_ack && mult_output_z2_ack && mult_output_z3_ack) begin
									add_output_z1_ack <= 1'b0; add_output_z2_ack <= 1'b0;
									mult_output_z1_ack <= 1'b0; mult_output_z2_ack <= 1'b0; mult_output_z3_ack <= 1'b0;		
									counter <= counter + 1'b1;
								end
								else begin
									counter <= counter + 1'b0;
								end
							end	
						3'b001:
							begin
							
								if (mult_input_a1_b1_ack) begin
									mult_input_a1 <= r_ACoef0_4;	mult_input_b1 <= add_output_z1;
									mult_input_a1_b1_stb <= 1'b1;
								end
								else begin
									mult_input_a1_b1_stb <= 1'b0;
								end
								
								
								if (mult_input_a2_b2_ack) begin
									mult_input_a2 <= r_ACoef1_3; mult_input_b2 <= add_output_z2;
									mult_input_a2_b2_stb <= 1'b1;
								end
								else begin
									mult_input_a2_b2_stb <= 1'b0;
								end
								
								if(mult_output_z1_stb)begin
									mult_output_z1_ack <= 1'b1;
								end
								if(mult_output_z2_stb)begin
									mult_output_z2_ack <= 1'b1;
								end
								
								
								if(add_input_a1_b1_ack) begin
									add_input_a1 <= mult_output_z1; add_input_b1 <= 32'b0;
									add_input_a1_b1_stb <= 1'b1;
								end
								else begin
									add_input_a1_b1_stb <= 1'b0;
								end
							
								if(add_input_a2_b2_ack) begin
									add_input_a2 <= mult_output_z2; add_input_b2 <= mult_output_z3;
									add_input_a2_b2_stb <= 1'b1;
								end
								else begin
									add_input_a2_b2_stb <= 1'b0;
								end
							
								if(add_output_z1_stb)begin
									add_output_z1_ack <= 1'b1;
								end
								if(add_output_z2_stb)begin
									add_output_z2_ack <= 1'b1;
								end
								
								
								if (mult_input_a3_b3_ack) begin
									mult_input_a3 <= r_BCoef3;	mult_input_b3 <= y[3];
									mult_input_a3_b3_stb <= 1'b1;
								end
								else begin
									mult_input_a3_b3_stb <= 1'b0;
								end
								
								if(mult_output_z3_stb)begin
									mult_output_z3_ack <= 1'b1;
								end
								
								
								if (add_output_z1_ack && add_output_z2_ack && mult_output_z1_ack && mult_output_z2_ack && mult_output_z3_ack) begin
									add_output_z1_ack <= 1'b0; add_output_z2_ack <= 1'b0;
									mult_output_z1_ack <= 1'b0; mult_output_z2_ack <= 1'b0; mult_output_z3_ack <= 1'b0;		
									counter <= counter + 1'b1;
								end
								else begin
									counter <= counter + 1'b0;
								end
							end
						3'b010:
							begin
							
								if (mult_input_a1_b1_ack) begin
									mult_input_a1 <= mult_output_z1;	mult_input_b1 <= 32'h3f800000;
									mult_input_a1_b1_stb <= 1'b1;
								end
								else begin
									mult_input_a1_b1_stb <= 1'b0;
								end
								
								if(mult_output_z1_stb)begin
									mult_output_z1_ack <= 1'b1;
								end
								
								
								
								if(add_input_a1_b1_ack) begin
									add_input_a1 <= mult_output_z2; add_input_b1 <= add_output_z1;
									add_input_a1_b1_stb <= 1'b1;
								end
								else begin
									add_input_a1_b1_stb <= 1'b0;
								end
								
								if(add_output_z1_stb)begin
									add_output_z1_ack <= 1'b1;
								end
							
							
							
								if(add_input_a2_b2_ack) begin
									add_input_a2 <= add_output_z2; add_input_b2 <= mult_output_z3;
									add_input_a2_b2_stb <= 1'b1;
								end
								else begin
									add_input_a2_b2_stb <= 1'b0;
								end
							
								if(add_output_z2_stb)begin
									add_output_z2_ack <= 1'b1;
								end
								
								
								
								if (mult_input_a2_b2_ack) begin
									mult_input_a2 <= r_BCoef4; mult_input_b2 <= y[4];
									mult_input_a2_b2_stb <= 1'b1;
								end
								else begin
									mult_input_a2_b2_stb <= 1'b0;
								end
								
								if(mult_output_z2_stb)begin
									mult_output_z2_ack <= 1'b1;
								end
								
								
								
								if (add_output_z1_ack && add_output_z2_ack && mult_output_z1_ack && mult_output_z2_ack) begin
									add_output_z1_ack <= 1'b0; add_output_z2_ack <= 1'b0;
									mult_output_z1_ack <= 1'b0; mult_output_z2_ack <= 1'b0;
									counter <= counter + 1'b1;
								end
								else begin
									counter <= counter + 1'b0;
								end
							end
						3'b011:
							begin
								
								if(add_input_a1_b1_ack) begin
									add_input_a1 <= mult_output_z1; add_input_b1 <= add_output_z1;
									add_input_a1_b1_stb <= 1'b1;
								end
								else begin
									add_input_a1_b1_stb <= 1'b0;
								end
								
								if(add_output_z1_stb)begin
									add_output_z1_ack <= 1'b1;
								end
							
							
							
								if(add_input_a2_b2_ack) begin
									add_input_a2 <= add_output_z2; add_input_b2 <= mult_output_z2;
									add_input_a2_b2_stb <= 1'b1;
								end
								else begin
									add_input_a2_b2_stb <= 1'b0;
								end
							
								if(add_output_z2_stb)begin
									add_output_z2_ack <= 1'b1;
								end
								
								
								if (add_output_z1_ack && add_output_z2_ack) begin
									add_output_z1_ack <= 1'b0; add_output_z2_ack <= 1'b0;
									counter <= counter + 1'b1;
								end
								else begin
									counter <= counter + 1'b0;
								end
							end
						3'b100:
							begin
								
								if(add_input_a1_b1_ack) begin
									add_input_a1 <= add_output_z1; add_input_b1 <= add_output_z2;
									add_input_a1_b1_stb <= 1'b1;
								end
								else begin
									add_input_a1_b1_stb <= 1'b0;
								end
								
								if(add_output_z1_stb)begin
									add_output_z1_ack <= 1'b1;
								end
							
								
								
								if (add_output_z1_ack) begin
									add_output_z1_ack <= 1'b0;
									y[0] <= add_output_z1;
									r_pstate <= ST_Data_Shifting;
								end
								else begin
									counter <= counter + 1'b0;
								end
							end
						endcase
					end

			ST_Data_Shifting :
				begin
					if(i_NewSample_valid) begin
						x[0] <= i_NewSample;
						x[1] <= x[0];
						x[2] <= x[1];
						x[3] <= x[2];
						x[4] <= x[3];
						y[0] <= add_output_z1;
						y[1] <= y[0];
						y[2] <= y[1];
						y[3] <= y[2];
						y[4] <= y[3];
						r_pstate <= ST_IDLE;
					end
					else begin
						r_pstate <= ST_Data_Shifting;
						end
				end
	
		endcase
	end //!i_RSTN else end
end //always end
	
endmodule
	