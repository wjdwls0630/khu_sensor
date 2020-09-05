module test_bench_tb;
  reg  clk;
  reg  rstn;

  initial
  begin
    rstn <= 1'b0;
    #50 rstn <= 1'b1;
  end


  initial
  begin
    #2000000 $finish;
  end


  initial
  begin
    clk <= 1'b0;
    while (1) begin
      #10 clk <= ~clk; // 50MHz
    end
  end

  test_bench uut(
    .clk(clk),
    .rstn(rstn));
endmodule
