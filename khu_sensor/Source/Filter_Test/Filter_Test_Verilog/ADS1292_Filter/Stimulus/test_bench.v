module test_bench(clk, rstn);
  input  clk;
  input  rstn;
  wire   [31:0] w_x_data;
  wire   w_x_data_valid;
  wire   [31:0] w_y_data;
  wire   w_y_data_valid;
  wire   w_y_data_ready;

  file_reader file_reader_1(
    .clk(clk),
    .rst(!rstn),
    .output_z(w_x_data),
    .output_z_stb(w_x_data_valid),
    .output_z_ack(1'b1));

  file_writer file_writer_1(
    .clk(clk),
    .rst(!rstn),
    .input_a(w_y_data),
    .input_a_stb(w_y_data_valid),
    .input_a_ack(w_y_data_ready));

  ads1292_filter ads1292_filter_1(
    .i_ADS1292_DATA_OUT(w_x_data), // read data from ADS1292
    .i_ADS1292_DATA_VALID(w_x_data_valid), // In Read data continue mode,  flag that 72 bits data is ready
    .o_ADS1292_FILTERED_DATA(w_y_data),
    .o_ADS1292_FILTERED_DATA_VALID(w_y_data_valid),
    .i_ADS1292_FILTERED_DATA_ACK(w_y_data_ready),
    // ADS1292 (real)
    // input [71:0] i_ADS1292_DATA_OUT, // read data from ADS1292
    // output reg [23:0]

    .i_CLK(clk), // clock
    .i_RSTN(rstn) //reset
    );
endmodule
