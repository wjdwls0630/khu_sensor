module iir_notch_tb;
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
  iir_notch_top iir_notch_top(
    .clk(clk),
    .rstn(rstn),
    .out(out)
    );
endmodule
