//TODO rename everything by the rules of thumb
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
  input [39:0] i_UART_DATA_TX,
  input i_UART_DATA_TX_VALID,
  output reg o_DATA_TX_READY,
  // RX
  output reg [15:0] o_UART_DATA_RX,
  output o_UART_DATA_RX_VALID,

  input i_CORE_BUSY,
  // System I/O
  input i_UART_RXD, // external_interface.RXD
  output o_UART_TXD,
  input i_CLK,
  input i_RST
  );

  /****************************************************************************
  *                           	   rs232_uart                                	*
  *****************************************************************************/
  //=========================Internal Connection===============================
  reg r_uart_addr;
  reg r_uart_chipselect;
  reg r_uart_read;
  reg r_uart_write;
  reg [31:0] r_uart_writedata;
  wire [31:0] w_uart_readdata;
  wire w_uart_irq;

  rs232_uart rs232_uart(
    .address(r_uart_addr),    // avalon_rs232_slave.address
    .chipselect(r_uart_chipselect), //                   .chipselect
    .byteenable(), //                   .byteenable
    .read(r_uart_read),       //                   .read
    .write(r_uart_write),      //                   .write
    .writedata(r_uart_writedata),  //                   .writedata
    .readdata(w_uart_readdata),   //                   .readdata
    .clk(i_CLK),        //                clk.clk
    .UART_RXD(i_UART_RXD),   // external_interface.RXD
    .UART_TXD(i_UART_TXD),   //                   .TXD
    .irq(w_uart_irq),        //          interrupt.irq
    .reset(i_RST)       //              reset.reset
    );
  //============================================================================

  /****************************************************************************
  *                           	uart_controller                               *
  *****************************************************************************/
  //==============================State=========================================
  // state
  reg [7:0] r_lstate;
  reg [7:0] r_pstate;

  parameter ST_IDLE  = 8'd0;
  parameter ST_RX_INIT = 8'd1;
  parameter ST_RX_READ_REG_ADDR = 8'd2;
  parameter ST_STANDBY = 8'd3;
  parameter ST_TX_INIT = 8'd4;
  parameter ST_TX_SEND_24BITS = 8'd5;
  parameter ST_TX_SEND_40BITS = 8'd6;
  parameter ST_TX_SHIFT = 8'd7;
  //============================================================================

  //==============================wire & reg====================================
  reg [39:0] r_uart_data_tx; // container for input data
  reg [2:0] r_data_counter; // count how much byte controller sent
  //============================================================================

  //=============================Sequential Logic===============================
  always @ ( posedge i_CLK, posedge i_RST ) begin
    if(i_RSTN) begin
      // TX
      o_DATA_TX_READY <= 1'b0,
      // RX
      o_UART_DATA_RX <= 16'b0,
      o_UART_DATA_RX_VALID <= 1'b0,

      // rs232_uart
      r_uart_addr <= 1'b0;
      r_uart_chipselect <= 1'b0;
      r_uart_read <= 1'b0;
      r_uart_write <= 1'b0;
      r_uart_writedata <= 8'h00;

      // uart_controller
      r_uart_data_tx <= 40'b0;
      r_data_counter <= 3'b0;

      // state
      r_lstate <= ST_IDLE;
      r_pstate <= ST_IDLE;
    end else begin
      case (r_pstate)
        ST_IDLE:
        begin
          // UART
          // turn on read/write interrupt enable
          r_uart_addr <= 1'b1;
          r_uart_chipselect <= 1'b1;
          r_uart_read <= 1'b0; // readw on
          r_uart_write <= 1'b1;
          r_uart_writedata[7:0] <= 8'h03;
          r_uart_data_tx <= 40'b0;
          r_data_counter <= 3'b0;

          // state
          r_lstate <= ST_IDLE;
          r_pstate <= ST_RX_INIT;
        end

        ST_RX_INIT:
        begin
          r_uart_addr <= 1'b0;
          r_uart_chipselect <= 1'b1;
          r_uart_read <= 1'b1;
          r_uart_write <= 1'b0;
          if(r_lstate == ST_RX_READ_REG_ADDR) r_pstate <= ST_RX_READ_REG_ADDR;
          else r_pstate <= ST_STANDBY;
        end

        ST_RX_READ_REG_ADDR:
        begin
          // TODO can i ignore irq signal?
          if(w_uart_irq) begin
            r_uart_addr <= 1'b0;
            r_uart_chipselect <= 1'b0;
            r_uart_read <= 1'b0;
            r_uart_write <= 1'b0;
            r_pstate <= ST_RX_READ_REG_ADDR;
          end else begin
            o_UART_DATA_RX[7:0] <= w_uart_readdata[7:0];
            o_UART_DATA_RX_VALID <= 1'b1;
            r_pstate <= ST_RX_READ_REG_ADDR;
          end
        end

        ST_STANDBY:
        begin
          r_uart_addr <= 1'b0;
          r_uart_chipselect <= 1'b0;
          r_uart_read <= 1'b0; // turn off reading
          r_uart_write <= 1'b0; //
          o_DATA_TX_READY <= 1'b1; // default for tx
          o_UART_DATA_RX_VALID <= 1'b0; // default for rx
          if(i_CORE_BUSY) begin // TODO when sensor is reading, don't receive data from pc, only receive stop signal
            // prioritize Reading from PC
            if (w_uart_readdata[7:0] == UART_SG_STOP) begin
              // TODO if you want to code it more general, fix above condition statement to
              // if(w_uart_readdata[7:0] != 8'b0)
              // when sensor is reading, only process stop
              o_UART_DATA_RX[15:8] <= w_uart_readdata[7:0];
              o_UART_DATA_RX_VALID <= 1'b1;
              r_pstate <= ST_RX_INIT;
            end else if(i_UART_DATA_TX_VALID) begin
              r_uart_data_tx <= i_UART_DATA_TX;
              o_DATA_TX_READY <= 1'b0;
              r_pstate <= ST_TX_INIT;
            end else r_pstate <= ST_RX_INIT;
          end else begin
            // if core is not busy(reading), receive data from data such as Run, and Read register
            if(w_uart_readdata[7:0] != 8'b0) begin
              o_UART_DATA_RX[15:8] <= w_uart_readdata[7:0];
              if(w_uart_readdata[7:0] == UART_SG_RUN) begin
                // if data from pc is run signal, read once, finish the process
                o_UART_DATA_RX_VALID <= 1'b1;
                r_pstate <= ST_RX_INIT;
              end else begin
                // MPR121, ADS1292 Read register, need to read twice
                r_lstate <= ST_RX_READ_REG_ADDR;
                r_pstate <= ST_RX_INIT;
              end
            end else r_pstate <= ST_RX_INIT;

          end
        end

        ST_TX_INIT:
        begin
          //TODO use parameter or not
          if(r_uart_data_tx[39:32] == 8'h41) r_pstate <= ST_TX_SEND_40BITS; // 'A'
          else if(r_uart_data_tx[39:32] == 8'h4D) r_pstate <= ST_TX_SEND_24BITS; // 'M'
          else if(r_uart_data_tx[39:32] == 8'h61) r_pstate <= ST_TX_SEND_24BITS; // 'a'
          else if(r_uart_data_tx[39:32] == 8'h6D) r_pstate <= ST_TX_SEND_24BITS; // 'm'
          else r_pstate <= ST_RX_INIT; // if signal don't match cases, do nothing
        end

        ST_TX_SEND_24BITS:
        begin
          // TODO find out write /read process has to do with non stopping sending or receiving use below cod
          // send 24 bits when case is both mpr data and mpr, ads reg data case
          r_lstate <= ST_TX_SEND_24BITS;
          if(w_uart_irq) r_pstate <= ST_TX_SEND_24BITS;
          else begin
            if(r_data_counter > 4'd2) begin
              r_data_counter <= 4'b0;
              o_DATA_TX_READY <= 1'b1;
              r_pstate <= ST_RX_INIT;
            end else begin
              r_data_counter <= r_data_counter + 1'b1;
              r_uart_addr <= 1'b0;
              r_uart_chipselect <= 1'b1; //TODO make constant?
              r_uart_read <= 1'b0;
              r_uart_write <= 1'b1;
              r_uart_writedata[7:0] <=  r_uart_data_tx [39:32]
              r_pstate <= ST_TX_SHIFT;
            end
          end
        end

        ST_TX_SEND_40BITS:
        begin
          // TODO find out write /read process has to do with non stopping sending or receiving use below cod
          // send 40 bits when case is ads data case
          r_lstate <= ST_TX_SEND_40BITS;
          if(w_uart_irq) r_pstate <= ST_TX_SEND_40BITS;
          else begin
            if(r_data_counter > 4'd4) begin
              r_data_counter <= 4'b0;
              o_DATA_TX_READY <= 1'b1;
              r_pstate <= ST_RX_INIT;
            end else begin
              r_data_counter <= r_data_counter + 1'b1;
              r_uart_addr <= 1'b0;
              r_uart_chipselect <= 1'b1; //TODO make constant?
              r_uart_read <= 1'b0;
              r_uart_write <= 1'b1;
              r_uart_writedata[7:0] <=  r_uart_data_tx [39:32]
              r_pstate <= ST_TX_SHIFT;
            end
          end
        end

        ST_TX_SHIFT:
        begin
          r_uart_write <= 1'b0; // turn off write
          data <= (data<<8);
          if(lstate == ST_TX_SEND_24BITS) r_pstate <= ST_TX_SEND_24BITS;
          if(lstate == ST_TX_SEND_40BITS) r_pstate <= ST_TX_SEND_40BITS;
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
