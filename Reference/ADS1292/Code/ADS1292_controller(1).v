module ADS1292_controller (
	//	Host Side
	input clk,
	input rstn,
	input cmd_sys,
	input cmd_data_read,
	input cmd_reg,
	//.sys_state(LEDG[7:0]),
	input ads_reg_addr,
	input ads_data_in,
	output reg [71:0] ads_data_out,
	output reg ads_busy,
	output reg ads_fail,
	output reg ads_rdatac_ready,
	//	ADS Side
	output reg ads_csn,
	output reg ads_start,
	input ads_drdy,
	//.ads_tx_done(GPIO[0]),
	//.ads_rx_done(GPIO[1]),
	output reg ads_reset,
	output spi_clk,
	input spi_miso,
	output spi_mosi

						);
//	Host Side
/*
input		clk;
input		rstn;
input		cmd_sys; // System Commands
input 		cmd_data_read; // Data Read Commands
input 		cmd_reg; // Register Read/write Commands
output [7:0] sys_state;
input [7:0] ads_reg_addr;		// ADS1292 register address
input	[7:0] ads_data_in;		// data to write into ADS1292 register
output [71:0] ads_data_out;		// read data from ADS1292
output ads_busy;
output ads_fail;
output ads_tx_done;
output ads_rx_done;
output ads_reset;
output ads_rdatac_ready;
//	ADS Side
output ads_csn;
output ads_start;
input ads_drdy;
output spi_clk;
input spi_miso;
output spi_mosi;
*/
// State machine
parameter ST_IDLE					= 8'd0;
parameter ST_SYSCMD_INIT 			= 8'd1;
parameter ST_SYSCMD_WARMUP			= 8'd2;
parameter ST_SYSCMD_WAIT			= 8'd3;

parameter ST_DATAREAD_INIT 		= 8'd30;

parameter ST_RREG_INIT 			= 8'd4;
parameter ST_RREG_SEND1 		= 8'd5;
parameter ST_RREG_WAIT1 		= 8'd6;
parameter ST_RREG_SEND2 		= 8'd7;
parameter ST_RREG_WAIT2_1 		= 8'd8;
parameter ST_RREG_WAIT2 		= 8'd9;
parameter ST_RREG_GETDATA		= 8'd10;
parameter ST_RREG_SEND_DUMMY 	= 8'd11;

parameter ST_WREG_INIT 			= 8'd20;
parameter ST_WREG_SEND1			= 8'd21;
parameter ST_WREG_WAIT1			= 8'd22;
parameter ST_WREG_SEND2			= 8'd23;
parameter ST_WREG_WAIT2			= 8'd24;
parameter ST_WREG_SEND_DATA		= 8'd25;
parameter ST_WREG_WAIT3			= 8'd26;

parameter ST_RDATAC_INIT		= 8'd30;
parameter ST_RDATAC_SEND_DUMMY	= 8'd31;
parameter ST_RDATAC_GETDATA		= 8'd32;
parameter ST_RDATAC_GETDATA2	= 8'd33;


parameter ST_SPI_WAIT			= 8'd40;

parameter ADS_RDATAC 	= 8'h10;

parameter SYS_MODE_IDLE = 8'd0;
parameter SYS_MODE_WREG = 8'd1;
parameter SYS_MODE_RREG = 8'd2;
parameter SYS_MODE_RDATAC = 8'd11;


reg [7:0] r_state; // state machine
reg [7:0] r_prestate; // prevous state machine
reg [31:0] r_wait_timeout; // for timeout
reg [7:0] r_error_code; // error code
reg [31:0] r_counter;
reg [7:0] r_received_counter;
reg [7:0] r_number_read;
reg [7:0] r_ads_command;
reg r_ads_csn;
reg r_ads_start;
reg r_ads_busy; // ads is in progess
reg [7:0] r_spi_tx_data;
reg [71:0] r_spi_rx_data;
reg r_spi_tx_en;
reg r_ads_reset;
reg [7:0] r_sys_mode;
reg r_ads_rdatac_ready;

wire w_spi_tx_done;
wire w_spi_rx_done;
wire [7:0] w_spi_rx_data;
assign ads_csn = r_ads_csn;
assign ads_start = r_ads_start;
assign ads_data_out = r_spi_rx_data;
assign ads_busy = r_ads_busy;
assign ads_tx_done = w_spi_tx_done;
assign ads_rx_done = w_spi_rx_done;
assign ads_reset = r_ads_reset;
assign sys_state = r_state;
assign ads_rdatac_ready = r_ads_rdatac_ready;

spi_master Uspi
(
	.clk(clk),
	.rstn(rstn),
	.din(r_spi_tx_data),
	.din_valid(r_spi_tx_en),
	.tx_ready(w_spi_tx_done),
	.dout(w_spi_rx_data),
	.dout_valid(w_spi_rx_done),
	.sclk(spi_clk),
	.miso(spi_miso),
	.mosi(spi_mosi)
);
/*
		ads access cases:
							cmd_sys		cmd_reg		cmd_data_read
		1. System control:		1			0			0
		2. Read register:		0			1			1
		3. Write register:		0			1			0
		4. Read data:			0			0			1
		5. Read data continue:	1			0			1
		6. Idle					0			0 			0
*/

wire w_mode_system_control = cmd_sys&~cmd_reg&~cmd_data_read;
wire w_mode_read_reg = ~cmd_sys&cmd_reg&cmd_data_read;
wire w_mode_write_reg = ~cmd_sys&cmd_reg&~cmd_data_read;
wire w_mode_read_data = ~cmd_sys&~cmd_reg&cmd_data_read;

reg r_mode_system_control;// = cmd_sys&~cmd_reg&~cmd_data_read;
reg r_mode_read_reg;// = ~cmd_sys&cmd_reg&cmd_data_read;
reg r_mode_write_reg;// = ~cmd_sys&cmd_reg&~cmd_data_read;
reg r_mode_read_data;// = ~cmd_sys&~cmd_reg&cmd_data_read;
reg r_mode_read_data_continue;
always @(posedge clk or negedge rstn) begin
	if(!rstn) begin
		r_mode_system_control <= 0;
		r_mode_read_reg <= 0;
		r_mode_write_reg <= 0;
		r_mode_read_data <= 0;
		r_mode_read_data_continue <= 0;
	end else begin
		r_mode_system_control <= cmd_sys&~cmd_reg&~cmd_data_read;
		r_mode_read_reg <= ~cmd_sys&cmd_reg&cmd_data_read;
		r_mode_write_reg <= ~cmd_sys&cmd_reg&~cmd_data_read;
		r_mode_read_data <= ~cmd_sys&~cmd_reg&cmd_data_read;
		if ((r_sys_mode==SYS_MODE_RDATAC)&&(ads_drdy==1'b0)) begin
			r_mode_read_data_continue <= 1'b1;
		end else begin
			r_mode_read_data_continue <= 1'b0;
		end
	end
end

always@(posedge clk or negedge rstn)
begin
	if(!rstn)
	begin
		r_state	<=	ST_IDLE;
		r_prestate	<=	ST_IDLE;
		r_ads_csn <= 1'b1;
		r_ads_busy <= 0;
		r_ads_start <=0;
		r_wait_timeout <= 32'b0;
		r_spi_tx_data <= 8'd0;
		r_spi_rx_data <= 72'd0;
		r_spi_tx_en <= 1'b0;
		r_counter <= 32'd0;
		r_received_counter <= 8'd0;
		r_ads_reset <= 1'b1;
		r_number_read <= 0;
		r_ads_command <= 0;
		r_sys_mode <= SYS_MODE_IDLE;
		r_ads_rdatac_ready <= 0;
	end
	else
	begin
		case (r_state)

		ST_IDLE: begin
			if (r_mode_system_control) begin
				r_ads_csn <= 1'b0;
				r_ads_busy <= 1'b1;
				r_ads_start <=1'b0;
				r_spi_tx_en <= 1'b0;
				r_ads_command <= ads_reg_addr;
				r_number_read <= ads_data_in;
				r_state <= ST_SYSCMD_INIT;
			end else if (r_mode_read_data) begin

				r_state <= ST_DATAREAD_INIT;
			end else if (r_mode_read_reg) begin
				r_sys_mode <= SYS_MODE_RREG;
				r_ads_csn <= 1'b0;
				r_ads_busy <= 1'b1;
				r_ads_start <=1'b0;
				r_spi_tx_en <= 1'b0;
				//r_ads_reset <= 1'b0;
				r_number_read <= ads_data_in;
				r_ads_command <= 0;
				r_state <= ST_RREG_INIT;
			end else if (r_mode_write_reg) begin
				r_ads_csn <= 1'b0;
				r_ads_busy <= 1'b1;
				r_ads_start <=1'b0;
				r_spi_tx_en <= 1'b0;
				//r_ads_reset <= 1'b0;
				r_ads_command <= 0;
				r_state <= ST_WREG_INIT;
			end else if (r_mode_read_data_continue) begin // if in read data continue mode, check DRDY sisgnal
				//r_ads_csn <= 1'b0;
				r_ads_busy <= 1'b1;
				r_received_counter <= 0;
				r_wait_timeout <= 32'd0;
				r_counter <= 0;
				r_ads_rdatac_ready <= 1'b0;
				r_state <= ST_RDATAC_INIT;
			end else begin
				r_ads_csn <= 1'b1;
				r_state <= ST_IDLE;
				r_ads_busy <= 1'b0;
				r_counter <= 32'd0;
			end
		end
		ST_SYSCMD_INIT: begin
			r_ads_start <= 1'b1;
			r_state <= ST_SYSCMD_WARMUP;
			r_spi_tx_data <= r_ads_command;
			r_spi_tx_en <= 1'b1;
		end
		ST_SYSCMD_WARMUP: begin
			if (r_wait_timeout<32'd100) begin
				r_wait_timeout <= r_wait_timeout+32'd1;
				r_state <= ST_SYSCMD_WARMUP;
			end else if (r_wait_timeout<32'd400) begin
				r_wait_timeout <= r_wait_timeout+32'd1;
				r_state <= ST_SYSCMD_WARMUP;
				r_ads_start <= 1'b0;
			end else if (r_wait_timeout<32'd800) begin
				r_wait_timeout <= r_wait_timeout+32'd1;
				r_state <= ST_SYSCMD_WARMUP;
				r_ads_start <= 1'b1;
			end else begin
				r_wait_timeout <= 0;
				r_state <= ST_SYSCMD_WAIT;
				r_spi_tx_en <= 1'b0;
			end
		end
		ST_SYSCMD_WAIT: begin
			//r_spi_tx_en <= 1'b0;
			if (w_spi_tx_done==1'b0) begin // wait for transmition done
				r_state <= ST_SYSCMD_WAIT;
			end else begin
				r_state <= ST_SPI_WAIT;
				r_counter <= 32'd0;
			end
		end

		// Read n nnnn registers starting at address r rrrr
		//  001r rrrr (2xh)  000n nnnn
		// read one register at address rrr:
		//  001r rrrr     	 0000 0000
		ST_RREG_INIT: begin
			r_spi_tx_data <= {3'b001,ads_reg_addr[4:0]};
			r_spi_tx_en <= 1'b1;
			r_ads_start <= 1'b0;
			r_wait_timeout<=32'd0;
			r_state <= ST_RREG_SEND1;
		end
		ST_RREG_SEND1: begin
			if (r_wait_timeout<32'd500) begin
				r_state <= ST_RREG_SEND1;
				r_wait_timeout <= r_wait_timeout + 32'd1;
			end else if (r_wait_timeout<32'd550) begin
				//r_ads_start <=1'b1;
				r_state <= ST_RREG_SEND1;
				r_wait_timeout <= r_wait_timeout + 32'd1;
			end else begin
				r_ads_reset <= 1'b1;
				r_state <= ST_RREG_WAIT1;
			end
		end
		ST_RREG_WAIT1: begin
			if (w_spi_tx_done==1'b0) begin // wait for transmition done
				r_spi_tx_en <= 1'b0;
				r_state <= ST_RREG_WAIT1;
			end else begin
				r_state <= ST_RREG_SEND2;
				r_wait_timeout <= 0;
				r_spi_tx_data <= r_number_read; // read n register
				r_spi_tx_en <= 1'b1;
			end
		end
		ST_RREG_SEND2: begin
			if (r_wait_timeout<32'd500) begin
				r_state <= ST_RREG_SEND2;
				r_wait_timeout <= r_wait_timeout + 32'd1;
			end else begin
				r_state <= ST_RREG_WAIT2;
			end
		end
		ST_RREG_WAIT2: begin
			if (w_spi_tx_done==1'b0) begin // wait for transmition done
				r_state <= ST_RREG_WAIT2;
				r_spi_tx_en <= 1'b0;
			end else begin
				r_received_counter <= 8'd0;
				r_counter <= 0;
				r_spi_tx_en <= 1'b1;
				r_spi_tx_data <= 8'b0; // dumy tx data
				r_state <= ST_RREG_SEND_DUMMY;
			end
		end
		ST_RREG_SEND_DUMMY: begin
			if (r_counter<32'd200) begin
				r_state <= ST_RREG_SEND_DUMMY;
				r_counter <= r_counter + 32'd1;
				r_spi_tx_en <= 1'b1;
				r_spi_tx_data <= 8'b0; // dumy tx data
			end else begin
				r_state <= ST_RREG_GETDATA;
				r_counter <= 0;
			end
		end
		ST_RREG_GETDATA: begin // spi send out dummy then wait for rx data
			if (w_spi_tx_done==1'b0) begin
				r_state <= ST_RREG_GETDATA;
				r_spi_tx_en <= 1'b0;
			end else begin
				if (r_received_counter < r_number_read) begin
					r_received_counter <= r_received_counter + 8'd1;
					r_state <= ST_RREG_SEND_DUMMY;
					r_spi_rx_data <= {r_spi_rx_data[63:0],w_spi_rx_data}; // shift left --> FIFO buffer
					r_counter <= 32'd0;
				end else begin
					r_state <= ST_SPI_WAIT;
					r_counter <= 32'd0;
				end
			end
		end

//	for write register
		ST_WREG_INIT: begin
			r_spi_tx_data <= {3'b010,ads_reg_addr[4:0]};
			r_spi_tx_en <= 1'b1;
			//r_ads_start <= 1'b1;
			r_wait_timeout<=32'd0;
			r_state <= ST_WREG_SEND1;
		end
		ST_WREG_SEND1: begin
			if (r_wait_timeout<32'd500) begin
				r_state <= ST_WREG_SEND1;
				r_wait_timeout <= r_wait_timeout + 32'd1;
			end else begin
				r_ads_reset <= 1'b1;
				r_state <= ST_WREG_WAIT1;
			end
		end
		ST_WREG_WAIT1: begin
			if (w_spi_tx_done==1'b0) begin // wait for transmition done
				r_spi_tx_en <= 1'b0;
				r_state <= ST_WREG_WAIT1;
			end else begin
				r_state <= ST_WREG_SEND2;
				r_wait_timeout <= 0;
				r_spi_tx_data <= 8'b0; // write 1 register
				r_spi_tx_en <= 1'b1;
			end
		end
		ST_WREG_SEND2: begin
			if (r_wait_timeout<32'd500) begin
				r_state <= ST_WREG_SEND2;
				r_wait_timeout <= r_wait_timeout + 32'd1;
			end else begin
				r_state <= ST_WREG_WAIT2;
			end
		end
		ST_WREG_WAIT2: begin
			if (w_spi_tx_done==1'b0) begin // wait for transmition done
				r_spi_tx_en <= 1'b0;
				r_state <= ST_WREG_WAIT2;
			end else begin
				r_received_counter <= 8'd0;
				r_counter <= 0;
				r_spi_tx_en <= 1'b1;
				r_spi_tx_data <= ads_data_in; //  tx data
				r_state <= ST_WREG_SEND_DATA;
			end
		end
		ST_WREG_SEND_DATA: begin
			if (r_counter<32'd200) begin
				r_state <= ST_WREG_SEND_DATA;
				r_counter <= r_counter + 32'd1;
			end else begin
				r_state <= ST_WREG_WAIT3;
				r_counter <= 0;
			end
		end
		ST_WREG_WAIT3: begin // spi send out data then wait for rx data
			if (w_spi_tx_done==1'b0) begin
				r_spi_tx_en <= 1'b0;
				r_state <= ST_WREG_WAIT3;
			end else begin
				r_state <= ST_RREG_INIT;
				r_counter <= 32'd0;
				r_number_read <= 8'b0000_0001; // read only 2 reg
			end
		end

		ST_SPI_WAIT: begin
			if (r_counter<32'd200) begin
				r_state <= ST_SPI_WAIT;
				r_counter <= r_counter + 32'd1;
			end else begin
				if (r_ads_command ==  ADS_RDATAC) begin
					r_sys_mode <= SYS_MODE_RDATAC;
					r_ads_start <= 1'b1;
				end else begin
					r_sys_mode <= SYS_MODE_IDLE;
					r_ads_start <= 1'b0;
				end
				r_ads_busy <= 0;
				r_state <= ST_IDLE;
			end
		end
// get result data in RDATAC mode
		ST_RDATAC_INIT: begin // add some delay here
			if (r_counter<32'd5000000) begin // 0.1s
				r_state <= ST_RDATAC_INIT;
				r_counter <= r_counter + 32'd1;
			end else begin
				r_ads_csn <= 1'b0;
				r_counter <= 0;
				r_state <= ST_RDATAC_SEND_DUMMY;
			end
		end
		ST_RDATAC_SEND_DUMMY: begin
			if (r_wait_timeout<32'd160) begin
				r_state <= ST_RDATAC_SEND_DUMMY;
				r_wait_timeout <= r_wait_timeout + 32'd1;
				r_spi_tx_en <= 1'b1;
				r_spi_tx_data <= 8'b0; // dumy tx data
			end else begin
				r_state <= ST_RDATAC_GETDATA;
				r_wait_timeout <= 0;
				//r_ads_csn <= 1'b0;
			end
		end

		ST_RDATAC_GETDATA: begin // spi send out dummy then wait for rx data
			if (w_spi_tx_done==1'b0) begin
				r_spi_tx_en <= 1'b0;
				r_state <= ST_RDATAC_GETDATA;
			end else begin
				r_state <= ST_RDATAC_GETDATA2;
			end
		end
		ST_RDATAC_GETDATA2: begin
			r_spi_rx_data <= {r_spi_rx_data[63:0],w_spi_rx_data}; // shift left the FIFO buffer
			if (r_received_counter < r_number_read) begin
				r_received_counter <= r_received_counter + 8'd1;
				r_state <= ST_RDATAC_SEND_DUMMY;
				r_wait_timeout <= 0;
			end else begin
				r_counter <= 0;
				r_received_counter <= 0;
				r_state <= ST_SPI_WAIT;
				r_ads_rdatac_ready <= 1'b1;
			end
		end
		default: begin
			r_state <= ST_IDLE;
			r_sys_mode <= SYS_MODE_IDLE;
		end
		endcase
	end
end


endmodule
