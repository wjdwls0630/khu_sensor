module float_multiplier_top(
  input clk,
  input rstn,
  output reg [31:0] out
  );


  reg   [31:0] r_a_data;
  reg   r_a_data_valid;
  wire   w_a_data_ready;
  reg   [31:0] r_b_data;
  reg   r_b_data_valid;
  wire   w_b_data_ready;
  wire   [31:0] w_z_data;
  wire   w_z_data_valid;
  reg   r_z_data_ready;
  reg [3:0] r_state;
  parameter ST_IDLE = 4'd0;
  parameter ST_INIT = 4'd1;
  parameter ST_GET = 4'd2;
  parameter ST_WAIT = 4'd3;

  always @ (posedge clk, negedge rstn ) begin
    if(!rstn) begin
      r_a_data <= 32'b0;
      r_b_data <= 32'b0;
      r_a_data_valid <= 1'b0;
      r_z_data_ready <= 1'b0;
      r_state <= ST_IDLE;
    end else begin
      case (r_state)
        ST_IDLE:
        begin
          r_a_data <= 32'hb4dc753a;
          r_b_data <= 32'h34dc753a;
          r_a_data_valid <= 1'b0;
          r_z_data_ready <= 1'b0;
          r_state <= ST_INIT;
        end

        ST_INIT:
        begin
          r_a_data <= 32'hb4dc753a;
          r_b_data <= 32'h34dc753a;
          r_a_data_valid <= 1'b1;
          r_state <= ST_GET;
        end

        ST_GET:
        begin
          if(!w_z_data_valid) begin
            r_z_data_ready <= 1'b1;
            r_state <= ST_GET;
          end else begin
            out <= w_z_data;
            r_a_data <= 32'hb4dc753a;
            r_a_data_valid <= 1'b1;
            r_state <= ST_WAIT;
          end
        end

        ST_WAIT:
        begin
          r_z_data_ready <= 1'b0;
          if(!w_a_data_ready) r_state <= ST_WAIT;
          else begin
            r_a_data_valid <= 1'b0;
            r_state <= ST_GET;
          end
        end
        default: r_state <= ST_IDLE;
      endcase
    end
  end

  float_mutiplier float_multiplier(
    .i_A(r_a_data), // input a
    .i_B(r_b_data), // input b
    .i_AB_STB(r_a_data_valid), // input data is valid
    .o_AB_ACK(w_a_data_ready), // A flag that next calculation is ready
    .o_Z(w_z_data),  // output data
    .o_Z_STB(w_z_data_valid), // Calculation is done, and output data is valid
    .i_Z_ACK(r_z_data_ready), // A flag that external module get data, so, o_Z is going to meaningless
    // it can be used as elongating o_Z_STB High (1)
    .i_CLK(clk), // clock
    .i_RST(!rstn) // reset activate High(1)(asynchronous)
    );
endmodule
