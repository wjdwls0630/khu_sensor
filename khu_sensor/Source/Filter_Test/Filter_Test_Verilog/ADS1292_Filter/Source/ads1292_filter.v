///////////////////////////////////////////////////////////////////////////////
// Module Name : ads1292_filter
//
// Description: ads1292 filter
// Sampling Frequency : 250Hz
//
// LPF (the 6th order IIR Filter)
// Cut-Off Frequency : 10 Hz
//
// Notch (the 6th order IIR Filter)
// Mid Frequency (High Q Factor Frequency) : 60Hz
//
// HPF
// Cut-Off Frequency : 5 Hz
//
// ADS1292 Ch2 Signal is passed by the order of LPF - Notch - HPF.
//
// To begin with, 24bits data is scaled up to 32bits by shifting bits left (MSB is left)
// when ADS1292 data(72bits) is received from ads1292_controller.v.
// For precise calculation(float range), ads1292 Ch2 data will be converted by converter_i2f before passed filters.
//
// Likewise, after passed filters, output data will be converted again to int for easier calculation on PC(Qt5 or Serial Packet Analyzer).
//
// Ultimately, scaling down 32bits int to 24bits by shifting bits right.
///////////////////////////////////////////////////////////////////////////////

module ads1292_filter (
  // Test

  // TODO ads1292 controller module naming change
  // CHANGED i_ADS1292_DATA_READY
  input [31:0] i_ADS1292_DATA_OUT, // read data from ADS1292
  input i_ADS1292_DATA_VALID, // In Read data continue mode,  flag that 72 bits data is ready
  output reg [31:0] o_ADS1292_FILTERED_DATA,
  output reg o_ADS1292_FILTERED_DATA_VALID,
  input i_ADS1292_FILTERED_DATA_ACK,
  // ADS1292 (real)
  // input [71:0] i_ADS1292_DATA_OUT, // read data from ADS1292
  // output reg [23:0]

  input i_CLK, // clock
  input i_RSTN //reset
  );

  //=========================Internal Connection===============================
  // converter_i2f
  // input
  reg [31:0] r_converter_i2f_a; // input a (int)
  reg r_converter_i2f_a_stb;  // input data is valid
  wire w_converter_i2f_a_ack; // A flag that next calculation is ready
  // output
  wire [31:0] w_converter_i2f_z; // output data (float)
  wire w_converter_i2f_z_stb; // Calculation is done, and output data is valid

  // iir_lpf
  // input
  wire w_iir_lpf_x_ready; // input is ready for next float data
  // output
  wire [31:0] w_iir_lpf_y; // output y (float)
  wire w_iir_lpf_y_valid; // output data is valid
  wire w_iir_lpf_y_ack; // A flag that external module got Y Data

  // iir_notch
  // output
  wire [31:0] w_iir_notch_y; // output y (float)
  wire w_iir_notch_y_valid; // output data is valid
  wire w_iir_notch_y_ack; // A flag that external module got Y Data

  // iir_hpf
  // output
  wire [31:0] w_iir_hpf_y; // output y (float)
  wire w_iir_hpf_y_valid; // output data is valid
  wire w_iir_hpf_y_ack; // A flag that external module got Y Data

  // converter_f2i
  // output
  wire [31:0] w_converter_f2i_z; // input a (int)
  wire w_converter_f2i_z_stb;  // input data is valid
  reg r_converter_f2i_z_ack; // A flag that external module got Y Data

  wire [71:0] w_ads1292_data_out;
  wire [2:0] w_ads1292_control;
  wire [7:0] w_ads1292_command;
  wire [7:0] w_ads1292_reg_addr;
  wire [7:0] w_ads1292_data_in;
  wire w_ads1292_data_ready;
  wire w_ads1292_init_set;
  wire w_ads1292_busy;
  wire w_ads1292_fail;
  converter_i2f converter_i2f(
    .i_A(r_converter_i2f_a), // input a
    .i_A_STB(r_converter_i2f_a_stb), // input data is valid
    .o_A_ACK(w_converter_i2f_a_ack), // A flag that next calculation is ready
    .o_Z(w_converter_i2f_z),  // output data
    .o_Z_STB(w_converter_i2f_z_stb), // Calculation is done, and output data is valid
    .i_Z_ACK(w_iir_lpf_x_ready), // A flag that external module get data, so, o_Z is going to meaningless
    // it can be used as elongating o_Z_STB High (1)
    .i_CLK(i_CLK), // clock
    .i_RST(!i_RSTN) // reset activate High(1)(asynchronous)
    );

  iir_lpf iir_lpf(
    .i_X_DATA(w_converter_i2f_z), // input x (float)
    .i_X_DATA_VALID(w_converter_i2f_z_stb), //input x_data is valid
    .o_X_DATA_READY(w_iir_lpf_x_ready), // input is ready for next float data
    .o_Y_DATA(w_iir_lpf_y), // output y (float)
    .o_Y_DATA_VALID(w_iir_lpf_y_valid), // output data is valid
    .i_Y_ACK(w_iir_lpf_y_ack), // A flag that external module got Y Data
    .i_CLK(i_CLK), // clock
    .i_RSTN(i_RSTN) // reset activate Low(0)
    );

  iir_notch iir_notch(
    .i_X_DATA(w_iir_lpf_y), // input x (float)
    .i_X_DATA_VALID(w_iir_lpf_y_valid), //input x_data is valid
    .o_X_DATA_READY(w_iir_lpf_y_ack), // input is ready for next float data
    .o_Y_DATA(w_iir_notch_y), // output y (float)
    .o_Y_DATA_VALID(w_iir_notch_y_valid), // output data is valid
    .i_Y_ACK(w_iir_notch_y_ack),
    .i_CLK(i_CLK), // clock
    .i_RSTN(i_RSTN) // reset activate Low(0)
  );

  iir_hpf iir_hpf(
    .i_X_DATA(w_iir_notch_y), // input x (float)
    .i_X_DATA_VALID(w_iir_notch_y_valid), //input x_data is valid
    .o_X_DATA_READY(w_iir_notch_y_ack), // input is ready for next float data
    .o_Y_DATA(w_iir_hpf_y), // output y (float)
    .o_Y_DATA_VALID(w_iir_hpf_y_valid), // output data is valid
    .i_Y_ACK(w_iir_hpf_y_ack),
    .i_CLK(i_CLK), // clock
    .i_RSTN(i_RSTN) // reset activate Low(0)
    );

  converter_f2i converter_f2i(
    .i_A(w_iir_hpf_y), // input a
    .i_A_STB(w_iir_hpf_y_valid), // input data is valid
    .o_A_ACK(w_iir_hpf_y_ack), // A flag that next calculation is ready
    .o_Z(w_converter_f2i_z),  // output data
    .o_Z_STB(w_converter_f2i_z_stb), // Calculation is done, and output data is valid
    .i_Z_ACK(r_converter_f2i_z_ack), // A flag that external module get data, so, o_Z is going to meaningless
    // it can be used as elongating o_Z_STB High (1)
    .i_CLK(clk), // clock
    .i_RST(!i_RSTN) // reset activate High(1)(asynchronous)
    );
  //============================================================================
  //==============================State=========================================
  reg [1:0] r_pstate;
  parameter ST_IDLE = 2'd0;
  parameter ST_GET_DATA = 2'd1;
  parameter ST_FINISH = 2'd2;

  //============================================================================
  //==============================wire & reg====================================
  //============================================================================
  //=============================Sequential Logic===============================
  always @ ( posedge i_CLK, negedge i_RSTN ) begin
    if(!i_RSTN) begin
    end else begin
      case ()
        ST_IDLE:
        begin
          o_ADS1292_FILTERED_DATA_VALID <= 1'b0; // default for output data
          if (i_ADS1292_DATA_VALID /*&& o_X_DATA_READY*/) begin
            // TODO : ads1292_controller need data ready flag?
            r_converter_i2f_a <= i_ADS1292_DATA_OUT;
            // real
            // scaled up
            // r_converter_i2f_a <= {i_ADS1292_DATA_OUT[23:0], 8'b0};
            r_pstate <= ST_GET_DATA;
          end else r_pstate <= ST_IDLE;
        end

        ST_GET_DATA:
        begin
          if (w_converter_f2i_z_stb) begin
            o_ADS1292_FILTERED_DATA <= w_converter_f2i_z;
            // real
            // scaled down
            // o_ADS1292_FILTERED_DATA <= {w_converter_f2i_z[31:8], 8'b0};
            r_converter_f2i_z_ack <= 1'b1;
            r_pstate <= ST_FINISH;
          end else r_pstate <= ST_GET_DATA;
        end

        ST_FINISH:
        begin
          o_ADS1292_FILTERED_DATA_VALID <= 1'b1;
          o_ADS1292_FILTERED_DATA <= o_ADS1292_FILTERED_DATA;
          if (o_ADS1292_FILTERED_DATA_VALID && i_ADS1292_FILTERED_DATA_ACK) begin
            o_ADS1292_FILTERED_DATA_VALID <= 1'b0;
            r_pstate <= ST_IDLE;
          end else r_pstate <= ST_FINISH;
        end
      endcase
    end
  end
  //============================================================================
endmodule //ads1292_filter
