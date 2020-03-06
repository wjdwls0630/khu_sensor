///////////////////////////////////////////////////////////////////////////////
// Module Name : uart_controller
//
// Description: uart_controller is module for controlling uart,
//              control rs232 process
//
//
//
///////////////////////////////////////////////////////////////////////////////
module uart_controller (
  // TX
  input [31:0] i_UART_DATA_TX,
  input i_UART_DATA_TX_VALID,
  output reg o_UART_DATA_TX_READY,
  // RX
  output reg [15:0] o_UART_DATA_RX,
  output reg o_UART_DATA_RX_VALID,

  input i_CORE_BUSY,
  // System I/O
  input wire i_UART_RXD, // external_interface.RXD
  output wire o_UART_TXD,
  input i_CLK,
  input i_RST
  );

  /****************************************************************************
  *                           	   uart                                	*
  *****************************************************************************/
  //============================Parameter=======================================
  // UART Signal (user defined)
  parameter UART_CLKS_PER_BIT = 16'd218; // '25MHz/115200'
  //============================================================================
  //=========================Internal Connection===============================
  reg r_uart_data_tx_valid;
  reg [7:0] r_uart_data_tx;
  wire w_uart_data_tx_done;

  wire w_uart_data_rx_valid;
  wire [7:0] w_uart_data_rx;

  uart_tx #(.CLKS_PER_BIT(UART_CLKS_PER_BIT)) uart_tx
  (.i_Clock(i_CLK),
   .i_Tx_DV(r_uart_data_tx_valid),
   .i_Tx_Byte(r_uart_data_tx),
   .o_Tx_Active(),
   .o_Tx_Serial(o_UART_TXD),
   .o_Tx_Done(w_uart_data_tx_done)
   );

  uart_rx #(.CLKS_PER_BIT(UART_CLKS_PER_BIT)) uart_rx
  (.i_Clock(i_CLK),
   .i_Rx_Serial(i_UART_RXD),
   .o_Rx_DV(w_uart_data_rx_valid),
   .o_Rx_Byte(w_uart_data_rx)
   );
  //============================================================================

  /****************************************************************************
  *                           	uart_controller                               *
  *****************************************************************************/
  //============================Parameter=======================================
  // UART Signal (user defined)
  parameter UART_SG_MPR_SEND_DATA = 8'hBB; // 'M'
  parameter UART_SG_MPR_READ_REG = 8'h6D; // 'm'
  parameter UART_SG_ADS_SEND_DATA = 8'hAA; // 'A'
  parameter UART_SG_ADS_READ_REG = 8'h61; // 'a'
  parameter UART_SG_RUN = 8'h52; // 'R'
  parameter UART_SG_STOP = 8'h53; // 'S'
  parameter UART_SG_ADS_FINISH = 8'h46; // 'F'
  parameter UART_SG_MPR_FINISH = 8'h66; // 'f'
  //============================================================================
  //==============================State=========================================
  // state
  reg [7:0] r_lstate;
  reg [7:0] r_pstate;

  parameter ST_IDLE  = 8'd0;
  parameter ST_START = 8'd1;
  parameter ST_READY = 8'd2;
  parameter ST_RX_INIT = 8'd3;
  parameter ST_RX_READ_REG_ADDR = 8'd4;
  parameter ST_STANDBY = 8'd5;
  parameter ST_TX_INIT = 8'd6;
  parameter ST_TX_SEND_24BITS = 8'd7;
  parameter ST_TX_SEND_32BITS = 8'd8;
  parameter ST_TX_SHIFT = 8'd9;
  //============================================================================

  //==============================wire & reg====================================
  reg [31:0] r_uart_data_tx_shift; // container for input data and shifting
  reg [3:0] r_data_counter; // count how much byte controller sent
  //============================================================================

  //=============================Sequential Logic===============================
  always @ ( posedge i_CLK, posedge i_RST ) begin
    if(i_RST) begin
      // TX
      o_UART_DATA_TX_READY <= 1'b0;
      // RX
      o_UART_DATA_RX <= 16'b0;
      o_UART_DATA_RX_VALID <= 1'b0;

      // uart
      r_uart_data_tx_valid <= 1'b0;
      r_uart_data_tx <= 8'b0;

      // uart_controller
      r_uart_data_tx_shift <= 32'b0;
      r_data_counter <= 4'b0;

      // state
      r_lstate <= ST_IDLE;
      r_pstate <= ST_IDLE;
    end else begin
      case (r_pstate)
        ST_IDLE:
        begin
          // TX
          o_UART_DATA_TX_READY <= 1'b1; // default for tx
          // RX
          o_UART_DATA_RX_VALID <= 1'b0; // default for rx

          // uart
          r_uart_data_tx_valid <= 1'b0;
          r_uart_data_tx <= 8'b0;

          // uart_controller
          r_uart_data_tx_shift <= 32'b0;
          r_data_counter <= 4'b0;
          if(i_CORE_BUSY) begin
            // prioritize Reading from PC
            if(w_uart_data_rx_valid) begin
              if((w_uart_data_rx == UART_SG_STOP)|| (w_uart_data_rx == UART_SG_ADS_FINISH) || (w_uart_data_rx == UART_SG_MPR_FINISH)) begin
                o_UART_DATA_RX[15:8] <= w_uart_data_rx;
                o_UART_DATA_RX_VALID <= 1'b1;
                r_pstate <= ST_IDLE;
              end else r_pstate <= ST_IDLE; // if not stop signal, do nothing
            end else if(i_UART_DATA_TX_VALID) begin
              r_uart_data_tx_shift <= i_UART_DATA_TX;
              o_UART_DATA_TX_READY <= 1'b0;
              r_pstate <= ST_TX_INIT;
            end else r_pstate <= ST_IDLE;
          end else begin
            if(w_uart_data_rx_valid) begin
              if(w_uart_data_rx == UART_SG_RUN) begin
                o_UART_DATA_RX[15:8] <= w_uart_data_rx;
                o_UART_DATA_RX_VALID <= 1'b1;
                r_pstate <= ST_IDLE;
              end else if((w_uart_data_rx == UART_SG_MPR_READ_REG) || (w_uart_data_rx == UART_SG_ADS_READ_REG)) begin
                o_UART_DATA_RX[15:8] <= w_uart_data_rx;
                r_pstate <= ST_RX_READ_REG_ADDR;
              end else r_pstate <= ST_IDLE; // if not run or read reg signal, do nothing
            end else if(i_UART_DATA_TX_VALID) begin
              r_uart_data_tx_shift <= i_UART_DATA_TX;
              o_UART_DATA_TX_READY <= 1'b0;
              r_pstate <= ST_TX_INIT;
            end else r_pstate <= ST_IDLE;
          end
        end

        ST_RX_READ_REG_ADDR:
        begin
          if(w_uart_data_rx_valid) begin
            o_UART_DATA_RX[7:0] <= w_uart_data_rx;
            o_UART_DATA_RX_VALID <= 1'b1;
            r_pstate <= ST_IDLE;
          end else r_pstate <= ST_RX_READ_REG_ADDR;
        end

        ST_TX_INIT:
        begin
          if(r_uart_data_tx_shift[31:24] == UART_SG_ADS_SEND_DATA) r_pstate <= ST_TX_SEND_32BITS;
          else if(r_uart_data_tx_shift[31:24] == UART_SG_MPR_SEND_DATA) r_pstate <= ST_TX_SEND_24BITS;
          else if(r_uart_data_tx_shift[31:24] == UART_SG_ADS_READ_REG) r_pstate <= ST_TX_SEND_24BITS;
          else if(r_uart_data_tx_shift[31:24] == UART_SG_MPR_READ_REG) r_pstate <= ST_TX_SEND_24BITS;
          else r_pstate <= ST_IDLE; // if signal don't match cases, do nothing
        end

        ST_TX_SEND_24BITS:
        begin
          // send 24 bits when case is both mpr data and mpr, ads reg data case
          r_lstate <= ST_TX_SEND_24BITS;
          if(r_data_counter > 4'd2) begin
            r_data_counter <= 4'b0;
            o_UART_DATA_TX_READY <= 1'b1;
            r_pstate <= ST_IDLE;
          end else begin
            r_data_counter <= r_data_counter + 1'b1;
            r_uart_data_tx_valid <= 1'b1;
            r_uart_data_tx <= r_uart_data_tx_shift[31:24];
            r_pstate <= ST_TX_SHIFT;
          end
        end


        ST_TX_SEND_32BITS:
        begin
          // send 32 bits when case is ads data case
          r_lstate <= ST_TX_SEND_32BITS;
          if(r_data_counter > 4'd3) begin
            r_data_counter <= 4'b0;
            o_UART_DATA_TX_READY <= 1'b1;
            r_pstate <= ST_IDLE;
          end else begin
            r_data_counter <= r_data_counter + 1'b1;
            r_uart_data_tx_valid <= 1'b1;
            r_uart_data_tx <= r_uart_data_tx_shift[31:24];
            r_pstate <= ST_TX_SHIFT;
          end
        end

        ST_TX_SHIFT:
        begin
          if(!w_uart_data_tx_done) begin
            r_uart_data_tx_valid <= 1'b0;
            r_uart_data_tx <= 8'b0;
            r_pstate <= ST_TX_SHIFT;
          end else begin
            r_uart_data_tx_shift <= (r_uart_data_tx_shift<<8);
            if(r_lstate == ST_TX_SEND_24BITS) r_pstate <= ST_TX_SEND_24BITS;
            if(r_lstate == ST_TX_SEND_32BITS) r_pstate <= ST_TX_SEND_32BITS;
          end
        end

        default:
        begin
          r_pstate <= ST_IDLE;
        end
      endcase
    end
  end
  //============================================================================
endmodule //uart_controller
