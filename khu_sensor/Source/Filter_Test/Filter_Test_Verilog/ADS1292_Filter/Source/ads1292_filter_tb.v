module ads1292_filter_tb;
  reg  clk;
  reg  rstn;

  initial
  begin
    rstn <= 1'b0;
    #50 rstn <= 1'b1;
  end



  initial
  begin
    clk <= 1'b0;
  end

  always begin
    #10 clk <= ~clk; // 50MHz
  end

  wire [31:0] out;
  always @ ( out ) begin
    $monitor("%d %d", out, $time);
  end
  ads1292_filter_top ads1292_filter_top(
    .clk(clk),
    .rstn(rstn),
    .out(out)
    );
endmodule
