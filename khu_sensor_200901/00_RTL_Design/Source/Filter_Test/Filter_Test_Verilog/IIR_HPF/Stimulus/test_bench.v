module test_bench(clk, rstn);
  input  clk;
  input  rstn;
  wire   [31:0] w_x_data;
  wire   w_x_data_valid;
  wire   w_x_data_ready;
  wire   [31:0] w_y_data;
  wire   w_y_data_valid;
  wire   w_y_data_ready;
  file_reader file_reader_1(
    .clk(clk),
    .rst(!rstn),
    .output_z(w_x_data),
    .output_z_stb(w_x_data_valid),
    .output_z_ack(w_x_data_ready));

  file_writer file_writer_1(
    .clk(clk),
    .rst(!rstn),
    .input_a(w_y_data),
    .input_a_stb(w_y_data_valid),
    .input_a_ack(w_y_data_ready));

  iir_hpf iir_hpf_1(
    .i_X_DATA(w_x_data), // input x (float)
    .i_X_DATA_VALID(w_x_data_valid), //input x_data is valid
    .o_X_DATA_READY(w_x_data_ready), // input is ready for next float data
    .o_Y_DATA(w_y_data), // output y (float)
    .o_Y_DATA_VALID(w_y_data_valid), // output data is valid
    .i_Y_ACK(w_y_data_ready),
    .i_CLK(clk), // clock
    .i_RSTN(rstn) // reset activate Low(0)
    );
endmodule
