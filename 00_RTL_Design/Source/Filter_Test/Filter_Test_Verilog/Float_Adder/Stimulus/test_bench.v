module test_bench(clk, rstn);
  input  clk;
  input  rstn;
  wire   [31:0] w_a_data;
  wire   w_a_data_valid;
  wire   w_a_data_ready;
  wire   [31:0] w_b_data;
  wire   w_b_data_valid;
  wire   w_b_data_ready;
  wire   [31:0] w_z_data;
  wire   w_z_data_valid;
  wire   w_z_data_ready;
  file_reader_a file_reader_a(
    .clk(clk),
    .rst(!rstn),
    .output_z(w_a_data),
    .output_z_stb(w_a_data_valid),
    .output_z_ack(w_a_data_ready));
  file_reader_b file_reader_b(
    .clk(clk),
    .rst(!rstn),
    .output_z(w_b_data),
    .output_z_stb(w_a_data_valid),
    .output_z_ack(w_a_data_ready));

  file_writer file_writer_1(
    .clk(clk),
    .rst(!rstn),
    .input_a(w_z_data),
    .input_a_stb(w_z_data_valid),
    .input_a_ack(w_z_data_ready));

  float_adder float_adder(
    .i_A(w_a_data), // input a
    .i_B(w_b_data), // input b
    .i_AB_STB(w_a_data_valid), // input data is valid
    .o_AB_ACK(w_a_data_ready), // A flag that next calculation is ready
    .o_Z(w_z_data),  // output data
    .o_Z_STB(w_z_data_valid), // Calculation is done, and output data is valid
    .i_Z_ACK(w_z_data_ready), // A flag that external module get data, so, o_Z is going to meaningless
    // it can be used as elongating o_Z_STB High (1)
    .i_CLK(clk), // clock
    .i_RST(!rstn) // reset activate High(1)(asynchronous)
    );
endmodule
