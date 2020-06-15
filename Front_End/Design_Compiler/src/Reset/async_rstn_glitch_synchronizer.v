module async_rstn_glitch_synchronizer (
  input i_CLK,
  input i_RSTN,
  output reg o_RSTN
  );

  wire w_buf_1;
  wire w_buf_2;
  wire w_buf_3;
  wire w_buf_4;
  wire w_or_1;
  buf(w_buf_1, i_RSTN);
  buf(w_buf_2, w_buf_1);
  buf(w_buf_3, w_buf_2);
  buf(w_buf_4, w_buf_3);
  or(w_or_1, w_buf_4, i_RSTN);
  async_rstn_synchronizer async_rstn_synchronizer (
    .i_CLK(i_CLK),
    .i_RSTN(),
    .o_RSTN(o_RSTN)
    );

endmodule //async_rst_n_glitch_synchronizer
