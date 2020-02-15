module uart_controller ();

  reg r_uart_addr;
  reg [31:0] r_uart_writedata;
  wire [31:0] w_uart_readdata;
  wire w_uart_irq;
  rs232_uart rs232_uart(
    .address(uart_addr_wire),    // avalon_rs232_slave.address
    .chipselect(1'b1), //                   .chipselect
    .byteenable(), //                   .byteenable
    .read(uart_read_wire),       //                   .read
    .write(uart_write_wire),      //                   .write
    .writedata(uart_writedata_wire),  //                   .writedata
    .readdata(uart_readdata_wire),   //                   .readdata
    .clk(i_CLK),        //                clk.clk
    .UART_RXD(UART_RXD),   // external_interface.RXD
    .UART_TXD(UART_TXD),   //                   .TXD
    .irq(w_uart_irq),        //          interrupt.irq
    .reset(i_RST)       //              reset.reset
    );

  reg [2:0] r_data_counter;
  reg [7:0] r_signal;
  always @ ( posedge i_CLK, posedge i_RST ) begin
    if(i_RSTN) begin
      o_data_in_ready <= 1'b0;
      uart_addr_out <= 1'b0;
      uart_chip_select_out <= 1'b0;
      uart_read_out <= 1'b0;
      uart_write_out <= 1'b0;
      uart_writedata_out <= 8'h00;

      r_data_counter <= 3'b0;
      r_signal <= 8'b0;
    end else begin
      case (r_uartc_pstate)
        ST_IDLE:
        begin
          // UART
          // turn on read/write interrupt enable
          uart_addr_out <= 1'b1;
          uart_chip_select_out <= 1'b1;
          uart_read_out <= 1'b0;
          uart_write_out <= 1'b1;
          r_uart_writedata[7:0] <= 8'h03;


          r_data_counter <= 3'b0;
          r_signal <= 8'b0;
          o_data_in_ready <= 1'b1;

          if(core busy) begin // TODO when reading, don;t receive data from pc, only receive stop signal
            //if () // TODO priority RX
            /*else*/if(i_data_in_valid) begin
              o_data_in_ready <= 1'b0;
            end
          end else begin
            // TODO receive data from data such as Run, and Read register
          end

        end

        ST_TX_INIT:
        begin
          r_signal <= data [47:40];
          if( data [47:40] == 'A') begin

          //
            state -> ads
          end else if(data [47:40] == 'M') begin
            state->mpr
          end
        end

        ST_TX_MPR:
        begin

          // if write /read  has to do with non stopping sending or receiving use below cod
          // send 24 bits
          lstate <= ST_TX_MPR
          if(uart_irq_in) begin
            uart_write_out <= 1'b0;
            state -> ST_TX_MPR
          end else begin
            // send 16 bits
            if(data_counter_reg > 4'd2) begin
              data_counter_reg <= 4'b0;
              o_data_in_ready <= 1'b1;
              state -> idle
            end else begin
              data_counter_reg <= data_counter_reg + 1'b1;
              uart_addr_out <= 1'b0;
              uart_chip_select_out <= 1'b1; //TODO make constant?
              uart_write_out <= 1'b1;
              uart_read_out <= 1'b0;
              r_uart_writedata[7:0] <=  data [47:40]
              state -> ST_TX_SHIFT
            end
          end
        end

        ST_TX_ADS:
        begin

          // if write /read  has to do with non stopping sending or receiving use below cod
          // send 48 bits
          lstate <= ST_TX_ADS
          if(uart_irq_in) begin
            uart_write_out <= 1'b0;
            state -> ST_TX_ADS
          end else begin
            // send 16 bits
            if(data_counter_reg > 4'd5) begin
              data_counter_reg <= 4'b0;
              o_data_in_ready <= 1'b1;
              state -> idle
            end else begin
              data_counter_reg <= data_counter_reg + 1'b1;
              uart_addr_out <= 1'b0;
              uart_chip_select_out <= 1'b1; //TODO make constant?
              uart_write_out <= 1'b1;
              uart_read_out <= 1'b0;
              r_uart_writedata[7:0] <=  data [47:40]
              state -> ST_TX_SHIFT
            end
          end
        end

        ST_TX_SHIFT:
        begin
          data <= (data<<8);

          if(lstate == ST_TX_MPR) state -> ST_TX_MPR
          if(lstate == ST_TX_ADS) state -> ST_TX_ADS

        end




        default: ;
      endcase
    end
  end
endmodule //uart_controller
