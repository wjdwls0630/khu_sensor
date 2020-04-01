module iir_lpf_top(
  input clk,
  input rstn,
  output reg [31:0] out
  );


  reg   [31:0] r_x_data;
  reg   r_x_data_valid;
  wire   w_x_data_ready;
  wire   [31:0] w_y_data;
  wire   w_y_data_valid;
  reg   r_y_data_ready;
  reg [3:0] r_state;
  parameter ST_IDLE = 4'd0;
  parameter ST_INIT = 4'd1;
  parameter ST_GET = 4'd2;
  parameter ST_WAIT = 4'd3;

  always @ (posedge clk, negedge rstn ) begin
    if(!rstn) begin
      r_x_data <= 32'b0;
      r_x_data_valid <= 1'b0;
      r_y_data_ready <= 1'b0;
      r_state <= ST_IDLE;
    end else begin
      case (r_state)
        ST_IDLE:
        begin
          r_x_data <= 32'hb4dc753a;
          r_x_data_valid <= 1'b0;
          r_y_data_ready <= 1'b0;
          r_state <= ST_INIT;
        end

        ST_INIT:
        begin
          r_x_data <= 32'hb4dc753a;
          r_x_data_valid <= 1'b1;
          r_state <= ST_GET;
        end

        ST_GET:
        begin
          if(!w_y_data_valid) begin
            r_y_data_ready <= 1'b1;
            r_state <= ST_GET;
          end else begin
            
            out <= w_y_data;
            r_x_data <= 32'hb4dc753a;
            r_x_data_valid <= 1'b1;
            r_state <= ST_WAIT;
          end
        end

        ST_WAIT:
        begin
          r_y_data_ready <= 1'b0;
          if(!w_x_data_ready) r_state <= ST_WAIT;
          else begin
            r_x_data_valid <= 1'b0;
            r_state <= ST_GET;
          end
        end
        default: r_state <= ST_IDLE;
      endcase
    end
  end

  iir_lpf iir_lpf_1(
    .i_X_DATA(r_x_data), // input x (float)
    .i_X_DATA_VALID(r_x_data_valid), //input x_data is valid
    .o_X_DATA_READY(w_x_data_ready), // input is ready for next float data
    .o_Y_DATA(w_y_data), // output y (float)
    .o_Y_DATA_VALID(w_y_data_valid), // output data is valid
    .i_Y_ACK(r_y_data_ready),
    .i_CLK(clk), // clock
    .i_RSTN(rstn) // reset activate Low(0)
    );
endmodule
