module ads1292_filter_top(
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
            r_x_data <= r_x_data + 8'h10;
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

  ads1292_filter ads1292_filter_1(
    .i_ADS1292_DATA_OUT(r_x_data), // read data from ADS1292
    .i_ADS1292_DATA_VALID(r_x_data_valid), // In Read data continue mode,  flag that 72 bits data is ready
    .o_ADS1292_DATA_ACK(w_x_data_ready),
    .o_ADS1292_FILTERED_DATA(w_y_data),
    .o_ADS1292_FILTERED_DATA_VALID(w_y_data_valid),
    .i_ADS1292_FILTERED_DATA_ACK(r_y_data_ready),
    .i_CLK(clk), // clock
    .i_RSTN(rstn) //reset
    );
endmodule
