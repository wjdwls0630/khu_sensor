module uart_controller (
  // TX
  input [47:0] i_UART_DATA_TX,
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


  // state
  reg [7:0] r_uart_lstate;
  reg [7:0] r_uart_pstate;

  reg [47:0] r_uart_data_tx;
  reg [2:0] r_data_counter;
  reg [7:0] r_signal;
  always @ ( posedge i_CLK, posedge i_RST ) begin
    if(i_RSTN) begin

      o_DATA_TX_READY <= 1'b0,
      // RX
      o_UART_DATA_RX <= 16'b0,
      o_UART_DATA_RX_VALID <= 1'b0,

      r_uart_addr <= 1'b0;
      r_uart_chipselect <= 1'b0;
      r_uart_read <= 1'b0;
      r_uart_write <= 1'b0;
      r_uart_writedata <= 8'h00;
      r_uart_data_tx <= 48'b0;
      r_data_counter <= 3'b0;
      r_uart_lstate <= ST_IDLE;
      r_uart_pstate <= ST_IDLE;
    end else begin
      case (r_uart_pstate)
        ST_IDLE:
        begin
          // UART
          // turn on read/write interrupt enable
          r_uart_addr <= 1'b1;
          r_uart_chipselect <= 1'b1;
          r_uart_read <= 1'b0; // readw on
          r_uart_write <= 1'b1;
          r_uart_writedata[7:0] <= 8'h03;
          r_uart_data_tx <= 48'b0;
          r_data_counter <= 3'b0;

          r_uart_lstate <= ST_IDLE;
          r_uart_pstate <= ST_RX_INIT;


          /*
          if() // TODO priority RX (run stop, )
          else begin
            if(i_data_in_valid) begin
              o_data_in_ready <= 1'b0;
              state -> ST_TX_INIT
            end
          end
          */


        end

        ST_RX_INIT:
        begin
          r_uart_addr <= 1'b0;
          r_uart_chipselect <= 1'b1;
          r_uart_read <= 1'b1;
          r_uart_write <= 1'b0;
          if(r_uart_lstate == ST_RX_READ_REG_ADDR) r_uart_pstate <= ST_RX_READ_REG_ADDR;
          else r_uart_pstate <= ST_STANDBY;
        end

        ST_RX_READ_REG_ADDR:
        begin
          // TODO can i ignore irq signal?
          if(w_uart_irq) begin
            r_uart_addr <= 1'b0;
            r_uart_chipselect <= 1'b0;
            r_uart_read <= 1'b0;
            r_uart_write <= 1'b0;
            r_uart_pstate <= ST_RX_READ_REG_ADDR;
          end else begin
            o_UART_DATA_RX[7:0] <= w_uart_readdata[7:0];
            o_UART_DATA_RX_VALID <= 1'b1;
            r_uart_pstate <= ST_RX_READ_REG_ADDR;
          end
        end

        ST_STANDBY:
        begin
          o_DATA_TX_READY <= 1'b1; // default for tx
          o_UART_DATA_RX_VALID <= 1'b0; // default for rx
          if(i_CORE_BUSY) begin // TODO when sensor is reading, don't receive data from pc, only receive stop signal
            // prioritize Reading from PC
            if (w_uart_readdata[7:0] == UART_SG_STOP) begin
              // TODO if you want to code it more general, fix above condition statement to
              // if(w_uart_readdata[7:0] != 8'b0)
              // when sensor is reading, only process stop
              o_UART_DATA_RX[15:8] <= w_uart_readdata[7:0];
              r_uart_addr <= 1'b0;
              r_uart_chipselect <= 1'b0;
              r_uart_read <= 1'b0;
              r_uart_write <= 1'b0;
              o_UART_DATA_RX_VALID <= 1'b1;
              r_uart_pstate <= ST_RX_INIT;
            end else if(i_UART_DATA_TX_VALID) begin
              r_uart_data_tx <= i_UART_DATA_TX;
              o_DATA_TX_READY <= 1'b0;
              r_uart_pstate <= ST_TX_INIT;
            end else r_uart_pstate <= ST_RX_INIT;
          end else begin
            if(w_uart_readdata[7:0] != 8'b0) begin
              o_UART_DATA_RX[15:8] <= w_uart_readdata[7:0];
              r_uart_addr <= 1'b0;
              r_uart_chipselect <= 1'b0;
              r_uart_read <= 1'b0;
              r_uart_write <= 1'b0;
              if(w_uart_readdata[7:0] == UART_SG_RUN) begin
                o_UART_DATA_RX_VALID <= 1'b1;
                r_uart_pstate <= ST_RX_INIT;
              end else begin
                // MPR121, ADS1292 Read register, need to read twice
                r_uart_lstate <= ST_RX_READ_REG_ADDR;
                r_uart_pstate <= ST_RX_INIT;
              end
            end else r_uart_pstate <= ST_RX_INIT;
            // TODO receive data from data such as Run, and Read register
          end
        end



        ST_TX_INIT:
        begin
          if( r_uart_data_tx [47:40] == 'A') r_uart_pstate <= ST_TX_ADS_DATA;
          else if(r_uart_data_tx [47:40] == 'M') r_uart_pstate <= ST_TX_MPR_DATA;
        end

        ST_TX_MPR_DATA:
        begin

          // if write /read  has to do with non stopping sending or receiving use below cod
          // send 24 bits
          lstate <= ST_TX_MPR
          if(w_uart_irq) begin
            uart_write_out <= 1'b0;
            r_uart_pstate <= ST_TX_MPR_DATA;
          end else begin
            // send 16 bits
            if(data_counter_reg > 4'd2) begin
              data_counter_reg <= 4'b0;
              o_data_tx_ready <= 1'b1;
              r_uart_pstate <= ST_RX_INIT;
            end else begin
              data_counter_reg <= data_counter_reg + 1'b1;
              uart_addr_out <= 1'b0;
              uart_chip_select_out <= 1'b1; //TODO make constant?
              uart_write_out <= 1'b1;
              uart_read_out <= 1'b0;
              r_uart_writedata[7:0] <=  r_uart_data_tx [47:40]
              r_uart_pstate <= ST_TX_SHIFT;
            end
          end
        end

        ST_TX_ADS_DATA:
        begin

          // if write /read  has to do with non stopping sending or receiving use below cod
          // send 48 bits
          lstate <= ST_TX_ADS
          if(w_uart_irq) begin
            uart_write_out <= 1'b0;
            r_uart_pstate <= ST_TX_ADS_DATA;
          end else begin
            // send 16 bits
            if(data_counter_reg > 4'd5) begin
              data_counter_reg <= 4'b0;
              o_data_in_ready <= 1'b1;
              r_uart_pstate <= ST_RX_INIT;
            end else begin
              data_counter_reg <= data_counter_reg + 1'b1;
              uart_addr_out <= 1'b0;
              uart_chip_select_out <= 1'b1; //TODO make constant?
              uart_write_out <= 1'b1;
              uart_read_out <= 1'b0;
              r_uart_writedata[7:0] <=  r_uart_data_tx [47:40]
              r_uart_pstate <= ST_TX_SHIFT;
            end
          end
        end

        ST_TX_SHIFT:
        begin
          data <= (data<<8);
          if(lstate == ST_TX_MPR_DATA) r_uart_pstate <= ST_TX_MPR_DATA;
          if(lstate == ST_TX_ADS_DATA) r_uart_pstate <= ST_TX_ADS_DATA;
        end




        default:
        begin
        end
      endcase
    end
  end
endmodule //uart_controller
