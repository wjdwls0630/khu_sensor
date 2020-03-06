///////////////////////////////////////////////////////////////////////////////
// Module Name : sensor_core
//
// Description: sensor_core is module for controlling mpr121 and ads1292,
// 							In addition, process data from TX and RX
//
//
///////////////////////////////////////////////////////////////////////////////
module sensor_core(
	// UART Controller
	output reg [31:0] o_UART_DATA_TX, // tx data which send to PC
	output reg o_UART_DATA_TX_VALID, // tx data valid
	input i_UART_DATA_TX_READY, // tx Ready for next byte
	input [15:0] i_UART_DATA_RX, // rx data which receive from PC
	input i_UART_DATA_RX_VALID, // rx data valid pulse

	// MPR121
	input [7:0] i_MPR121_DATA_OUT,  // received data from MPR121 (read data)
	output reg [7:0] o_MPR121_REG_ADDR,   // transmitted register address to MPR121 (write data)
	output reg [7:0] o_MPR121_DATA_IN,  // transmitted data to MPR121 (write data)
	output reg o_MPR121_WRITE_ENABLE,
	output reg o_MPR121_READ_ENABLE,
	input i_MPR121_BUSY,
	input i_MPR121_FAIL,

	// System connection with MPR121 data
	output reg [11:0] o_MPR121_TOUCH_STATUS,
	output reg o_MPR121_ERROR,

	// ADS1292
	input [71:0] i_ADS1292_DATA_OUT, // read data from ADS1292
	output reg [2:0] o_ADS1292_CONTROL, // ADS1292 Control
	output reg [7:0] o_ADS1292_COMMAND, // ADS1292 SPI command
	output reg [7:0] o_ADS1292_REG_ADDR, // ADS1292 register address
	output reg [7:0] o_ADS1292_DATA_IN, // data to write in ADS1292 register
	output o_ADS1292_RDATAC_READ_START, // signal that start to read data in RDATAC mode
	input i_ADS1292_DATA_READY, // In Read data continue mode,  flag that 72 bits data is ready
	input i_ADS1292_BUSY,
	input i_ADS1292_FAIL,

	// System I/O
	output reg o_CHIP_SET,
	output reg o_RUN_SET,
	output reg o_CORE_BUSY,
	input wire i_CLK,
	input wire i_RST
	);

	/*****************************************************************************
	*                          		UART Controller                                *
	*****************************************************************************/
	//==============================Parameter=====================================
	// UART Signal (user defined)
	parameter UART_SG_MPR_SEND_DATA = 8'hBB;
	parameter UART_SG_MPR_READ_REG = 8'h6D;
	parameter UART_SG_ADS_SEND_DATA = 8'hAA;
	parameter UART_SG_ADS_READ_REG = 8'h61;
	parameter UART_SG_RUN = 8'h52; // 'R'
	parameter UART_SG_STOP = 8'h53; // 'S'
	parameter UART_SG_ADS_FINISH = 8'h46; // 'F'
	parameter UART_SG_MPR_FINISH = 8'h66; // 'f'
	//============================================================================
	//==============================State=========================================
	reg [7:0] r_uart_pstate;

	// uart_controller
	// 8'b0011_xxxx
	parameter ST_UART_IDLE  = 8'd48;
	parameter ST_UART_STANDBY  = 8'd49;
	parameter ST_UART_RX = 8'd50;
	//============================================================================

	//==============================wire & reg====================================
	reg [15:0] r_uart_data_rx;
	reg r_run_mode;
	//reg r_ads_read_start; // signal from pc which means that its work finished
	//assign o_ADS1292_RDATAC_READ_START = r_ads_read_start;
	//reg r_mpr_read_start; // signal from pc which means that its work finished
	reg r_mpr_read_reg_mode;
	reg r_ads_read_reg_mode;
	//============================================================================

	//=============================Sequential Logic===============================
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) begin
			o_UART_DATA_TX <= 32'b0;
			o_UART_DATA_TX_VALID <= 1'b0;
			r_uart_data_rx <= 16'b0;

			r_run_mode <= 1'b0;
			//r_ads_read_start <= 1'b0;
			//r_mpr_read_start <= 1'b0;
			r_mpr_read_reg_mode <= 1'b0;
			r_ads_read_reg_mode <= 1'b0;

			// state
			r_uart_pstate <= ST_UART_IDLE;
		end else begin
			case (r_uart_pstate)
				ST_UART_IDLE:
				begin
					r_uart_data_rx <= 16'b0;
					r_run_mode <= 1'b0;
					//r_ads_read_start <= 1'b0;
					//r_mpr_read_start <= 1'b0;
					r_mpr_read_reg_mode <= 1'b0;
					r_ads_read_reg_mode <= 1'b0;
					r_uart_pstate <= ST_UART_STANDBY;
				end

				ST_UART_STANDBY:
				begin
					if(i_UART_DATA_RX_VALID) begin
						r_uart_data_rx <= i_UART_DATA_RX;
						r_uart_pstate <= ST_UART_RX;
					end else begin
						// update tx data
						if(i_UART_DATA_TX_READY) begin
							if(r_ads_data_send_ready) begin
								o_UART_DATA_TX <= {UART_SG_ADS_SEND_DATA, r_ads_data_out};
								o_UART_DATA_TX_VALID <= 1'b1;
								//r_ads_read_start <= 1'b0; // turn off
							end /*else if(r_mpr_data_send_ready) begin
								o_UART_DATA_TX <= {UART_SG_MPR_SEND_DATA, r_mpr_touch_status, 8'b0};
								o_UART_DATA_TX_VALID <= 1'b1;
								//r_mpr_read_start <= 1'b0; // turn off
							end else if(r_ads_read_reg_done) begin
								r_ads_read_reg_mode <= 1'b0;
								o_UART_DATA_TX <= {UART_SG_ADS_READ_REG, r_ads_reg_addr, r_ads_reg_data, 8'b0};
								o_UART_DATA_TX_VALID <= 1'b1;
							end else if(r_mpr_read_reg_done) begin
								r_mpr_read_reg_mode <= 1'b0;
								o_UART_DATA_TX <= {UART_SG_MPR_READ_REG, r_mpr_reg_addr, r_mpr_reg_data, 8'b0};
								o_UART_DATA_TX_VALID <= 1'b1;
							end*/ else o_UART_DATA_TX_VALID <= 1'b0;
						end else o_UART_DATA_TX_VALID <= 1'b0;
						r_uart_pstate <= ST_UART_STANDBY;
					end
				end

				ST_UART_RX:
				begin
					if(r_uart_data_rx[15:8] == UART_SG_RUN) begin
						r_run_mode <= 1'b1;
						//r_ads_read_start <= 1'b1; // turn on
						//r_mpr_read_start <= 1'b1; // turn on
					end else if(r_uart_data_rx[15:8] == UART_SG_STOP) begin
						r_run_mode <= 1'b0;
						//r_ads_read_start <= 1'b0; // turn off
						//r_mpr_read_start <= 1'b0; // turn off
					end /*else if(r_uart_data_rx[15:8] == UART_SG_ADS_FINISH) begin
						//r_ads_read_start <= 1'b1; // turn on
					end else if(r_uart_data_rx[15:8] == UART_SG_MPR_FINISH) begin
						//r_mpr_read_start <= 1'b1; // turn on
					end else if(r_uart_data_rx[15:8] == UART_SG_MPR_READ_REG) begin
						r_mpr_read_reg_mode <= 1'b1;
					end else if(r_uart_data_rx[15:8] == UART_SG_ADS_READ_REG) begin
						r_ads_read_reg_mode <= 1'b1;
					end*/
					r_uart_pstate <= ST_UART_STANDBY;
				end

				default:
				begin
					r_uart_pstate <= ST_UART_IDLE;
				end
			endcase
		end
	end
	//============================================================================

	/****************************************************************************
	*                           	Sensor_Core                                  	*
	*****************************************************************************/
	//==============================State=========================================
	reg [7:0] r_core_lstate;
	reg [7:0] r_core_pstate;

	// Sensor_Core
	// 8'b0000_xxxx
	parameter ST_CORE_IDLE  = 8'd0;
	parameter ST_CORE_START = 8'd1;
	parameter ST_CORE_STANDBY = 8'd2;
	parameter ST_CORE_IS_READING = 8'd3;
	//============================================================================

	//==============================wire & reg====================================
	// chip setting logic
	reg r_mpr_chip_set; // signal that change mpr setting state
	reg r_mpr_chip_set_done; // signal that mpr chip setting process is done
	reg r_ads_chip_set; // signal that change ads setting state
	reg r_ads_chip_set_done; // signal that ads chip setting process is done
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) o_CHIP_SET <= 1'b0;
		else o_CHIP_SET <= r_mpr_chip_set_done & r_ads_chip_set_done;
	end

	// run condition logic for both mpr and ads
	reg r_mpr_run_set; // signal that change mpr run state
	reg r_mpr_run_set_done; // signal that turning on mpr run state process is done
	reg r_ads_run_set; // signal that change ads run state
	reg r_ads_run_set_done; // signal that turning on ads run state process is done
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) o_RUN_SET <= 1'b0;
		else o_RUN_SET <= r_mpr_run_set_done & r_ads_run_set_done;
	end

	// reading condition logic for both mpr and ads
	reg r_mpr_is_reading; // flag that mpr is reading or not
	reg r_ads_is_reading; // flag that ads is reading or not
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) o_CORE_BUSY <= 1'b0;
		else o_CORE_BUSY <= r_mpr_is_reading & r_ads_is_reading;
	end

	// read reg condition
	reg r_mpr_read_reg;
	reg r_ads_read_reg;
	//============================================================================

	//=============================Sequential Logic===============================
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) begin
			// MPR121 State Control
			r_mpr_chip_set <= 1'b0;
			r_mpr_run_set <= 1'b0;
			r_mpr_is_reading <= 1'b0;
			r_mpr_read_reg <= 1'b0;

			// ADS1292 State Control
			r_ads_chip_set <= 1'b0;
			r_ads_run_set <= 1'b0;
			r_ads_is_reading <= 1'b0;
			r_ads_read_reg <= 1'b0;

			// state
			r_core_lstate <= ST_CORE_IDLE;
			r_core_pstate <= ST_CORE_IDLE;
		end else begin
			case (r_core_pstate)
				ST_CORE_IDLE:
				begin
					// MPR121 State Control
					r_mpr_chip_set <= 1'b0;
					r_mpr_run_set <= 1'b0;
					r_mpr_is_reading <= 1'b0;
					r_mpr_read_reg <= 1'b0;

					// ADS1292 State Control
					r_ads_chip_set <= 1'b0;
					r_ads_run_set <= 1'b0;
					r_ads_is_reading <= 1'b0;
					r_ads_read_reg <= 1'b0;

					// state
					r_core_lstate <= ST_CORE_IDLE;
					r_core_pstate <= ST_CORE_START;
				end

				ST_CORE_START:
				begin
					if(!o_CHIP_SET) begin
						if(!r_mpr_chip_set_done) r_mpr_chip_set <= 1'b1;
						else r_mpr_chip_set <= 1'b0; // don't need to set the chip again before reset or power off
						if(!r_ads_chip_set_done) r_ads_chip_set <= 1'b1;
						else r_ads_chip_set <= 1'b0; // don't need to set the chip again before reset or power off
					end else r_core_pstate <= ST_CORE_STANDBY;
				end

				ST_CORE_STANDBY:
				begin

					if(r_run_mode) begin // when receive run signal
						if(!r_mpr_run_set_done) r_mpr_run_set <= 1'b1;
						else r_mpr_is_reading <= 1'b1;

						if(!r_ads_run_set_done) r_ads_run_set <= 1'b1;
						else r_ads_is_reading <= 1'b1;
					end else if(r_mpr_read_reg_mode) begin
						if(!r_mpr_read_reg_done) r_mpr_read_reg <= 1'b1;
						else r_mpr_read_reg <= 1'b0;
					end else if(r_ads_read_reg_mode) begin
						if(!r_ads_read_reg_done) r_ads_read_reg <= 1'b1;
						else r_ads_read_reg <= 1'b0;
					end else begin // when receive stop signal
						if(r_mpr_run_set_done) r_mpr_run_set <= 1'b0;
						else r_mpr_is_reading <= 1'b0;

						if(r_ads_run_set_done) r_ads_run_set <= 1'b0;
						else r_ads_is_reading <= 1'b0;;
					end
					// if satisfy all condition to run & read, sensor_core is going to ~
					if (r_run_mode & o_RUN_SET) r_core_pstate <= ST_CORE_IS_READING;
					else r_core_pstate <= ST_CORE_STANDBY;
				end

				ST_CORE_IS_READING:
				begin
					// core is reading
					if(r_run_mode) r_core_pstate <= ST_CORE_IS_READING;
					else r_core_pstate <= ST_CORE_STANDBY;
				end

				default:
				begin
					r_core_pstate <= ST_CORE_IDLE;
				end
			endcase
		end
	end
	//============================================================================

	/****************************************************************************
	*                           		MPR121                                     	*
	*****************************************************************************/
	//==============================Parameter=====================================
	// MPR121 Register Setting
	// Reference - Data Sheet - MPR121 setting recommendation
	parameter MPR_TOUCH_STATUS_0_REG = 8'h00; //read only (ELE0 ~ ELE7)
	parameter MPR_TOUCH_STATUS_1_REG = 8'h01; //read only (ELE8 ~ ELE11)
	parameter MPR_MHDR_REG = 8'h2B; parameter MPR_MHDR_DATA = 8'h01;
	parameter MPR_NHDAR_REG = 8'h2C; parameter MPR_NHDAR_DATA = 8'h01;
	parameter MPR_NCLR_REG = 8'h2D; parameter MPR_NCLR_DATA = 8'h0E;
	parameter MPR_FDLR_REG = 8'h2E; parameter MPR_FDLR_DATA = 8'h00;
	parameter MPR_MHDF_REG = 8'h2F; parameter MPR_MHDF_DATA = 8'h01;
	parameter MPR_NHDAF_REG = 8'h30; parameter MPR_NHDAF_DATA = 8'h05;
	parameter MPR_NCLF_REG = 8'h31; parameter MPR_NCLF_DATA = 8'h01;
	parameter MPR_FDLF_REG = 8'h32; parameter MPR_FDLF_DATA = 8'h00;
	parameter MPR_NHDAT_REG = 8'h33; parameter MPR_NHDAT_DATA = 8'h00;
	parameter MPR_NCLT_REG = 8'h34; parameter MPR_NCLT_DATA = 8'h00;
	parameter MPR_FDLT_REG = 8'h35; parameter MPR_FDLT_DATA = 8'h00;
	parameter MPR_DEBOUNCE_REG = 8'h5B; parameter MPR_DEBOUNCE_DATA = 8'h00;
	parameter MPR_FILTER_CDC_CONFIG_REG = 8'h5C; parameter MPR_FILTER_CDC_CONFIG_DATA = 8'h10;
	parameter MPR_FILTER_CDT_CONFIG_REG = 8'h5D; parameter MPR_FILTER_CDT_CONFIG_DATA = 8'h20;
	parameter MPR_ELE_CONFIG_REG = 8'h5E; parameter MPR_ELE_CONFIG_RUN = 8'h8F;

	// Auto config
	parameter MPR_AUTOCONFIG_0_REG = 8'h7B; parameter MPR_AUTOCONFIG_0_DATA = 8'h0B;
	parameter MPR_AUTOCONFIG_USL_REG = 8'h7D; parameter MPR_AUTOCONFIG_USL_DATA = 8'h9C;
	parameter MPR_AUTOCONFIG_LSL_REG = 8'h7E; parameter MPR_AUTOCONFIG_LSL_DATA = 8'h65;
	parameter MPR_AUTOCONFIG_TLR_REG = 8'h7F; parameter MPR_AUTOCONFIG_TLR_DATA = 8'h8C;
	//============================================================================

	//==============================State=========================================
	reg [7:0] r_mpr_lstate;
	reg [7:0] r_mpr_pstate;

	// MPR121
	// 8'b0001_xxxx
	parameter ST_MPR_IDLE  = 8'd16;
	parameter ST_MPR_SETTING = 8'd17;
	parameter ST_MPR_RUN = 8'd18;
	parameter ST_MPR_STOP = 8'd19;
	parameter ST_MPR_WRITE_REG_INIT = 8'd20;
	parameter ST_MPR_WRITE_REG_EN = 8'd21;
	parameter ST_MPR_WRITE_REG_CONFIRM = 8'd22;
	parameter ST_MPR_WRITE_REG_WAIT = 8'd23;
	parameter ST_MPR_READ_REG_INIT = 8'd24;
	parameter ST_MPR_READ_REG_EN = 8'd25;
	parameter ST_MPR_READ_REG_CONFIRM = 8'd26;
	parameter ST_MPR_READ_STATUS_INIT = 8'd27;
	parameter ST_MPR_READ_STATUS_START = 8'd28;
	parameter ST_MPR_READ_STATUS_EN = 8'd29;
	parameter ST_MPR_READ_STATUS_CONFIRM = 8'd30;
	parameter ST_MPR_READ_STATUS_CHANGE = 8'd31;
	parameter ST_MPR_READ_STATUS_WAIT = 8'd32;
	parameter ST_MPR_ERROR_REPORT = 8'd33;
	//============================================================================

	//==============================wire & reg====================================
	reg r_mpr_read_reg_done;
	reg [7:0] r_mpr_reg_addr;
	reg [7:0] r_mpr_reg_data;
	reg [3:0] r_mpr_set_counter; // mpr setting counter
	reg [7:0] r_mpr_first_param;
	reg [7:0] r_mpr_second_param;
	reg r_mpr_status; // status_0 read(0) status_1 read(1)
	reg [7:0] r_mpr_touch_status_0; // reg_addr : 0x00 data
	reg [7:0] r_mpr_touch_status_1; // reg_addr : 0x01 data
	reg [15:0] r_mpr_touch_status; // 0x01 + 0x00
	reg r_mpr_data_send_ready; // mpr data to send is ready
	//============================================================================

	//=============================Sequential Logic===============================
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) begin

			// i_MPR121_DATA_OUT,  // received data from MPR121 (read data)
			o_MPR121_REG_ADDR <= 8'b0;   // transmitted register address to MPR121 (write data)
			o_MPR121_DATA_IN <= 8'b0;  // transmitted data to MPR121 (write data)
			o_MPR121_WRITE_ENABLE <= 1'b0;
			o_MPR121_READ_ENABLE <= 1'b0;

			// System connection with MPR121 data
			o_MPR121_TOUCH_STATUS <= 12'b0;
			o_MPR121_ERROR <= 1'b0;

			// sensor_core & uart
			r_mpr_read_reg_done <= 1'b0; // default
			r_mpr_reg_addr <= 8'b0;
			r_mpr_reg_data <= 8'b0;

			// sensor_core
			r_mpr_chip_set_done <= 1'b0;
			r_mpr_run_set_done <= 1'b0;

			// reg
			r_mpr_set_counter <= 4'b0;
			r_mpr_first_param <= 8'b0;
			r_mpr_second_param <= 8'b0;
			r_mpr_reg_addr <= 8'b0;
			r_mpr_reg_data <= 8'b0;
			r_mpr_status <= 1'b0;
			r_mpr_touch_status_0 <= 8'b0;
			r_mpr_touch_status_1 <= 8'b0;
			r_mpr_touch_status <= 16'b0;
			r_mpr_data_send_ready <= 1'b0;

			// state
			r_mpr_lstate <= ST_MPR_IDLE;
			r_mpr_pstate <= ST_MPR_IDLE;
		end else begin
			case (r_mpr_pstate)
				ST_MPR_IDLE:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b0;
					o_MPR121_TOUCH_STATUS <= 12'b0;

					// sensor_core & uart
					r_mpr_read_reg_done <= 1'b0; // default
					r_mpr_reg_addr <= 8'b0;
					r_mpr_reg_data <= 8'b0;

					r_mpr_set_counter <= 4'b0;
					r_mpr_first_param <= 8'b0;
					r_mpr_second_param <= 8'b0;
					r_mpr_reg_addr <= 8'b0;
					r_mpr_reg_data <= 8'b0;
					r_mpr_status <= 1'b0;
					r_mpr_touch_status_0 <= 8'b0;
					r_mpr_touch_status_1 <= 8'b0;
					r_mpr_touch_status <= 16'b0;
					r_mpr_data_send_ready <= 1'b0;

					if(r_mpr_chip_set &&(!r_mpr_chip_set_done)) r_mpr_pstate <= ST_MPR_SETTING;
					else if(r_mpr_run_set &&(!r_mpr_run_set_done)) r_mpr_pstate <= ST_MPR_RUN;
					else if (r_mpr_read_reg &&(!r_mpr_read_reg_done)) begin
						r_mpr_first_param <= r_uart_data_rx[7:0];
						r_mpr_reg_addr <= r_uart_data_rx[7:0]; // for sending data to pc
						r_mpr_pstate <= ST_MPR_READ_REG_INIT;
					end else r_mpr_pstate <= ST_MPR_IDLE;
				end

				ST_MPR_SETTING:
				begin
					// MPR121 Setting
					if(r_mpr_set_counter > 4'd13) begin
						r_mpr_chip_set_done <= 1'b1;
						r_mpr_set_counter <= 4'd0;
						r_mpr_pstate <= ST_MPR_IDLE;
					end else begin
						if(r_mpr_set_counter == 4'd0) begin
							r_mpr_first_param <= MPR_MHDR_REG;
							r_mpr_second_param <= MPR_MHDR_DATA;
						end

						if(r_mpr_set_counter == 4'd1) begin
							r_mpr_first_param <= MPR_NHDAR_REG;
							r_mpr_second_param <= MPR_NHDAR_DATA;
						end

						if(r_mpr_set_counter == 4'd2) begin
							r_mpr_first_param <= MPR_NCLR_REG;
							r_mpr_second_param <= MPR_NCLR_DATA;
						end

						if(r_mpr_set_counter == 4'd3) begin
							r_mpr_first_param <= MPR_FDLR_REG;
							r_mpr_second_param <= MPR_FDLR_DATA;
						end

						if(r_mpr_set_counter == 4'd4) begin
							r_mpr_first_param <= MPR_MHDF_REG;
							r_mpr_second_param <= MPR_MHDF_DATA;
						end

						if(r_mpr_set_counter == 4'd5) begin
							r_mpr_first_param <= MPR_NHDAF_REG;
							r_mpr_second_param <= MPR_NHDAF_DATA;
						end

						if(r_mpr_set_counter == 4'd6) begin
							r_mpr_first_param <= MPR_NCLF_REG;
							r_mpr_second_param <= MPR_NCLF_DATA;
						end

						if(r_mpr_set_counter == 4'd7) begin
							r_mpr_first_param <= MPR_FDLF_REG;
							r_mpr_second_param <= MPR_FDLF_DATA;
						end

						if(r_mpr_set_counter == 4'd8) begin
							r_mpr_first_param <= MPR_NHDAT_REG;
							r_mpr_second_param <= MPR_NHDAT_DATA;
						end

						if(r_mpr_set_counter == 4'd9) begin
							r_mpr_first_param <= MPR_NCLT_REG;
							r_mpr_second_param <= MPR_NCLT_DATA;
						end

						if(r_mpr_set_counter == 4'd10) begin
							r_mpr_first_param <= MPR_FDLT_REG;
							r_mpr_second_param <= MPR_FDLT_DATA;
						end

						if(r_mpr_set_counter == 4'd11) begin
							r_mpr_first_param <= MPR_DEBOUNCE_REG;
							r_mpr_second_param <= MPR_DEBOUNCE_DATA;
						end

						if(r_mpr_set_counter == 4'd12) begin
							r_mpr_first_param <= MPR_FILTER_CDC_CONFIG_REG;
							r_mpr_second_param <= MPR_FILTER_CDC_CONFIG_DATA;
						end

						if(r_mpr_set_counter == 4'd13) begin
							r_mpr_first_param <= MPR_FILTER_CDT_CONFIG_REG;
							r_mpr_second_param <= MPR_FILTER_CDT_CONFIG_REG;
						end

						r_mpr_set_counter <= r_mpr_set_counter + 1'b1;
						r_mpr_lstate <= ST_MPR_SETTING;
						r_mpr_pstate <= ST_MPR_WRITE_REG_INIT;
					end
				end

				ST_MPR_RUN:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b0;
					r_mpr_first_param <= MPR_ELE_CONFIG_REG;
					r_mpr_second_param <= MPR_ELE_CONFIG_RUN;
					r_mpr_lstate <= ST_MPR_RUN;
					r_mpr_pstate <= ST_MPR_WRITE_REG_INIT;
				end

				ST_MPR_STOP:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b0;
					r_mpr_first_param <= MPR_ELE_CONFIG_REG;
					r_mpr_second_param <= 8'h00; // disable
					r_mpr_lstate <= ST_MPR_STOP;
					r_mpr_pstate <= ST_MPR_WRITE_REG_INIT;
				end

				// Write data to a register of MPR121 then read back
				ST_MPR_WRITE_REG_INIT:
				begin
					o_MPR121_REG_ADDR <= r_mpr_first_param;
					o_MPR121_DATA_IN <= r_mpr_second_param;
					r_mpr_pstate <= ST_MPR_WRITE_REG_EN;
				end

				ST_MPR_WRITE_REG_EN:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b1;
					o_MPR121_READ_ENABLE <= 1'b0;
					r_mpr_pstate <= ST_MPR_WRITE_REG_CONFIRM;
				end

				ST_MPR_WRITE_REG_CONFIRM:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b0;
					if (i_MPR121_BUSY) r_mpr_pstate <= ST_MPR_WRITE_REG_CONFIRM;
					else begin
						if (i_MPR121_FAIL) r_mpr_pstate <= ST_MPR_ERROR_REPORT;
						else r_mpr_pstate <= ST_MPR_WRITE_REG_WAIT;
					end
				end

				ST_MPR_WRITE_REG_WAIT:
				begin
					if(r_mpr_lstate == ST_MPR_SETTING) r_mpr_pstate <= ST_MPR_SETTING;
					else begin
						if(r_mpr_lstate == ST_MPR_RUN) begin
							r_mpr_run_set_done <= 1'b1;
							r_mpr_pstate <= ST_MPR_READ_STATUS_INIT;
						end else begin
						 	// when mpr stop
							r_mpr_run_set_done <= 1'b0;
							r_mpr_pstate <= ST_MPR_IDLE;
						end
					end
				end

				ST_MPR_READ_REG_INIT:
				begin
					o_MPR121_REG_ADDR <= r_mpr_first_param;
					r_mpr_pstate <= ST_MPR_READ_REG_EN;
				end

				ST_MPR_READ_REG_EN:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b1;
					r_mpr_pstate <= ST_MPR_READ_REG_CONFIRM;
				end

				ST_MPR_READ_REG_CONFIRM:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b0;
					if (i_MPR121_BUSY) r_mpr_pstate <= ST_MPR_READ_REG_CONFIRM;
					else begin
						if (i_MPR121_FAIL) r_mpr_pstate <= ST_MPR_ERROR_REPORT;
						else begin
							r_mpr_read_reg_done <= 1'b1;
							r_mpr_reg_data <= i_MPR121_DATA_OUT;
							r_mpr_pstate <= ST_MPR_IDLE;
						end
					end
				end

				// read data from MPR121
				ST_MPR_READ_STATUS_INIT:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b0;
					if((!r_mpr_run_set) && r_mpr_run_set_done) r_mpr_pstate <= ST_MPR_STOP;
					else begin
						r_mpr_data_send_ready <= 1'b0;
						if(r_mpr_status == 1'b0) r_mpr_first_param <= MPR_TOUCH_STATUS_0_REG; // MPR Touch_0 Status Register addr
						else r_mpr_first_param <= MPR_TOUCH_STATUS_1_REG;
						r_mpr_pstate <= ST_MPR_READ_STATUS_START;

						// start reading when pc send its work finished
						/*
						if(r_mpr_read_start) r_mpr_pstate <= ST_MPR_READ_STATUS_START;
						else r_mpr_pstate <= ST_MPR_READ_STATUS_INIT;
						*/
					end
				end

				ST_MPR_READ_STATUS_START:
				begin
					o_MPR121_REG_ADDR <= r_mpr_first_param;
					r_mpr_pstate <= ST_MPR_READ_STATUS_EN;
				end

				ST_MPR_READ_STATUS_EN:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b1;
					r_mpr_pstate <= ST_MPR_READ_STATUS_CONFIRM;
				end

				ST_MPR_READ_STATUS_CONFIRM:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b0;
					if (i_MPR121_BUSY) r_mpr_pstate <= ST_MPR_READ_STATUS_CONFIRM;
					else begin
						if (i_MPR121_FAIL) r_mpr_pstate <= ST_MPR_ERROR_REPORT;
						else begin
							if (r_mpr_status == 1'b0) begin
								r_mpr_touch_status_0 <= i_MPR121_DATA_OUT;
								o_MPR121_TOUCH_STATUS[7:0] <= i_MPR121_DATA_OUT;
							end else begin
								r_mpr_touch_status_1 <= i_MPR121_DATA_OUT;
								o_MPR121_TOUCH_STATUS[11:8] <= i_MPR121_DATA_OUT[3:0];
							end
							r_mpr_pstate <= ST_MPR_READ_STATUS_CHANGE;
						end
					end
				end

				ST_MPR_READ_STATUS_CHANGE:
				begin
					r_mpr_status <= ~r_mpr_status; // change its read status;
					if(r_mpr_status == 1'b0) r_mpr_pstate <= ST_MPR_READ_STATUS_INIT;
					else begin
						r_mpr_touch_status <= {4'b0, r_mpr_touch_status_1[3:0], r_mpr_touch_status_0[7:0]};
						r_mpr_data_send_ready <= 1'b1;
						r_mpr_lstate <= ST_MPR_READ_STATUS_CHANGE;
						r_mpr_pstate <= ST_MPR_READ_STATUS_INIT;
						//r_mpr_pstate <= ST_MPR_READ_STATUS_WAIT;
					end
				end

				ST_MPR_READ_STATUS_WAIT:
				begin
					// wait one clock for turning off read_start and uart sending(uart_controller)
					r_mpr_pstate <= ST_MPR_READ_STATUS_INIT;
				end

				ST_MPR_ERROR_REPORT:
				begin
					o_MPR121_ERROR <= 1'b1;
					r_mpr_lstate <= ST_MPR_ERROR_REPORT;
					r_mpr_pstate <= ST_MPR_IDLE;
				end

				default:
				begin
					r_mpr_pstate <= ST_MPR_IDLE;
				end
			endcase
		end
	end

	/****************************************************************************
	*                           		ADS1292                                   	*
	*****************************************************************************/
	//==============================Parameter=====================================
	// ADS1292 Control bits
	parameter ADS_CB_IDLE = 3'b000;
	parameter ADS_CB_SYSCMD = 3'b001;
	parameter ADS_CB_WREG = 3'b010;
	parameter ADS_CB_RREG = 3'b011;
	parameter ADS_CB_RDATAC = 3'b100;
	parameter ADS_CB_SDATAC = 3'b101;

	// ADS1292 Register Setting
	parameter ADS_CONFIG_1_REG = 8'h01; parameter ADS_CONFIG_1_DATA = 8'h01;
	parameter ADS_CONFIG_2_REG = 8'h02; parameter ADS_CONFIG_2_DATA = 8'hE0;
	parameter ADS_LOFF_REG = 8'h03; parameter ADS_LOFF_DATA = 8'h10;
	parameter ADS_CH1SET_REG = 8'h04; parameter ADS_CH1SET_DATA = 8'h81;
	parameter ADS_CH2SET_REG = 8'h05; parameter ADS_CH2SET_DATA = 8'h00;
	parameter ADS_RLD_SENS_REG = 8'h06; parameter ADS_RLD_SENS_DATA = 8'h2C;
	parameter ADS_LOFF_SENS_REG = 8'h07; parameter ADS_LOFF_SENS_DATA = 8'h0E;
	parameter ADS_LOFF_STAT_REG = 8'h08; parameter ADS_LOFF_STAT_DATA = 8'h40;
	parameter ADS_RESP1_REG = 8'h09; parameter ADS_RESP1_DATA = 8'h02;
	parameter ADS_RESP2_REG = 8'h0A; parameter ADS_RESP2_DATA = 8'h05;
	parameter ADS_GPIO_REG = 8'h0B; parameter ADS_GPIO_DATA = 8'h00;
	//============================================================================

	//==============================State=========================================
	reg [7:0] r_ads_lstate;
	reg [7:0] r_ads_pstate;

	// ADS1292
	// 8'b0010_xxxx(>2 from MPR121)
	parameter ST_ADS_IDLE  = 8'd34;
	parameter ST_ADS_SETTING = 8'd35;
	parameter ST_ADS_RUN = 8'd36;
	parameter ST_ADS_STOP = 8'd37;
	parameter ST_ADS_WREG_INIT = 8'd38;
	parameter ST_ADS_WREG_CONFIRM = 8'd39;
	parameter ST_ADS_RREG_INIT = 8'd40;
	parameter ST_ADS_RREG_CONFIRM = 8'd41;
	parameter ST_ADS_RDATAC_INIT = 8'd42;
	parameter ST_ADS_RDATAC_DATA_PROCESS = 8'd43;
	//============================================================================

	//==============================wire & reg====================================
	reg r_ads_read_reg_done;
	reg [7:0] r_ads_reg_addr;
	reg [7:0] r_ads_reg_data;
	reg [3:0] r_ads_set_counter; // ads setting counter
	reg [7:0] r_ads_first_param;
	reg [7:0] r_ads_second_param;
	reg [23:0] r_ads_data_out;
	reg [31:0] r_ads_data_convert; // long type data (32bit = 4byte)
	reg [31:0] r_ads_data_ch2_1; // container for 8 bits of ch2's first data
	reg [31:0] r_ads_data_ch2_2; // container for 8 bits of ch2's second data
	reg [31:0] r_ads_data_ch2_3; // container for 8 bits of ch2's third data
	reg r_ads_data_send_ready; // ads data to send is ready.
	//============================================================================

	//=============================Sequential Logic===============================
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) begin
			// ADS1292 port
			o_ADS1292_CONTROL <= 3'b0; // ADS1292 Control
			o_ADS1292_COMMAND <= 8'b0; // ADS1292 SPI command
			o_ADS1292_REG_ADDR <= 8'b0; // ADS1292 register address
			o_ADS1292_DATA_IN <= 8'b0; // data to write in ADS1292 register

			// sensor_core & uart
			r_ads_read_reg_done <= 1'b0; // default
			r_ads_reg_addr <= 8'b0;
			r_ads_reg_data <= 8'b0;

			// sensor_core
			r_ads_chip_set_done <= 1'b0;
			r_ads_run_set_done <= 1'b0;

			// reg
			r_ads_set_counter <= 4'b0; // ads setting counter
			r_ads_first_param <= 8'b0;
			r_ads_second_param <= 8'b0;
			r_ads_data_out <= 24'b0;
			r_ads_data_convert <= 32'b0; // long type data (32bit = 4byte)
			r_ads_data_ch2_1 <= 32'b0; // container for 8 bits of ch2's first data
			r_ads_data_ch2_2 <= 32'b0; // container for 8 bits of ch2's second data
			r_ads_data_ch2_3 <= 32'b0; // container for 8 bits of ch2's third data
			r_ads_data_send_ready <= 1'b0;

			// state
			r_ads_lstate <= ST_ADS_IDLE;
			r_ads_pstate <= ST_ADS_IDLE;
		end else begin
			case (r_ads_pstate)
				ST_ADS_IDLE:
				begin
					// but in later, if we use command input for wakeup and standby , delete it
					o_ADS1292_COMMAND <= 8'b0;
					// sensor_core & uart
					r_ads_read_reg_done <= 1'b0; // default
					r_ads_reg_addr <= 8'b0;
					r_ads_reg_data <= 8'b0;

					// reg
					r_ads_set_counter <= 4'b0; // ads setting counter
					r_ads_first_param <= 8'b0;
					r_ads_second_param <= 8'b0;
					r_ads_data_out <= 24'b0;
					r_ads_data_convert <= 32'b0; // long type data (32bit = 4byte)
					r_ads_data_ch2_1 <= 32'b0; // container for 8 bits of ch2's first data
					r_ads_data_ch2_2 <= 32'b0; // container for 8 bits of ch2's second data
					r_ads_data_ch2_3 <= 32'b0; // container for 8 bits of ch2's third data
					r_ads_data_send_ready <= 1'b0;

					if(r_ads_chip_set &&(!r_ads_chip_set_done)) r_ads_pstate <= ST_ADS_SETTING;
					else if(r_ads_run_set &&(!r_ads_run_set_done)) r_ads_pstate <= ST_ADS_RUN;
					else if (r_ads_read_reg &&(!r_ads_read_reg_done)) begin
						r_ads_first_param <= r_uart_data_rx[7:0];
						r_ads_reg_addr <= r_uart_data_rx[7:0]; // for sending data to pc
						r_ads_pstate <= ST_ADS_RREG_INIT;
					end else r_ads_pstate <= ST_ADS_IDLE;
				end

				ST_ADS_SETTING:
				begin
					// ADS1292 Setting
					if(r_ads_set_counter > 4'd10) begin
						r_ads_chip_set_done <= 1'b1;
						r_ads_set_counter <= 4'd0;
						r_ads_pstate <= ST_ADS_IDLE;
					end else begin
						if(r_ads_set_counter == 4'd0) begin
							r_ads_first_param <= ADS_CONFIG_1_REG;
							r_ads_second_param <= ADS_CONFIG_1_DATA;
						end

						if(r_ads_set_counter == 4'd1) begin
							r_ads_first_param <= ADS_CONFIG_2_REG;
							r_ads_second_param <= ADS_CONFIG_2_DATA;
						end

						if(r_ads_set_counter == 4'd2) begin
							r_ads_first_param <= ADS_LOFF_REG;
							r_ads_second_param <= ADS_LOFF_DATA;
						end

						if(r_ads_set_counter == 4'd3) begin
							r_ads_first_param <= ADS_CH1SET_REG;
							r_ads_second_param <= ADS_CH1SET_DATA;
						end

						if(r_ads_set_counter == 4'd4) begin
							r_ads_first_param <= ADS_CH2SET_REG;
							r_ads_second_param <= ADS_CH2SET_DATA;
						end

						if(r_ads_set_counter == 4'd5) begin
							r_ads_first_param <= ADS_RLD_SENS_REG;
							r_ads_second_param <= ADS_RLD_SENS_DATA;
						end

						if(r_ads_set_counter == 4'd6) begin
							r_ads_first_param <= ADS_LOFF_SENS_REG;
							r_ads_second_param <= ADS_LOFF_SENS_DATA;
						end

						if(r_ads_set_counter == 4'd7) begin
							r_ads_first_param <= ADS_LOFF_STAT_REG;
							r_ads_second_param <= ADS_LOFF_STAT_DATA;
						end

						if(r_ads_set_counter == 4'd8) begin
							r_ads_first_param <= ADS_RESP1_REG;
							r_ads_second_param <= ADS_RESP1_DATA;
						end

						if(r_ads_set_counter == 4'd9) begin
							r_ads_first_param <= ADS_RESP2_REG;
							r_ads_second_param <= ADS_RESP2_DATA;
						end

						if(r_ads_set_counter == 4'd10) begin
							r_ads_first_param <= ADS_GPIO_REG;
							r_ads_second_param <= ADS_GPIO_DATA;
						end

						r_ads_set_counter <= r_ads_set_counter + 1'b1;
						r_ads_lstate <= ST_ADS_SETTING;
						r_ads_pstate <= ST_ADS_WREG_INIT;
					end
				end

				ST_ADS_RUN:
				begin
					o_ADS1292_CONTROL <= ADS_CB_RDATAC;
					r_ads_run_set_done <= 1'b1;
					r_ads_pstate <= ST_ADS_RDATAC_INIT;
				end

				ST_ADS_STOP:
				begin
					o_ADS1292_CONTROL <= ADS_CB_SDATAC;
					r_ads_run_set_done <= 1'b0;
					r_ads_pstate <= ST_ADS_IDLE;
				end

				ST_ADS_WREG_INIT:
				begin
					o_ADS1292_CONTROL <= ADS_CB_WREG;
					o_ADS1292_REG_ADDR <= r_ads_first_param;
					o_ADS1292_DATA_IN <= r_ads_second_param;
					r_ads_pstate <= ST_ADS_WREG_CONFIRM;
				end

				ST_ADS_WREG_CONFIRM:
				begin
					o_ADS1292_CONTROL <= ADS_CB_IDLE;
					if(i_ADS1292_BUSY) r_ads_pstate <= ST_ADS_WREG_CONFIRM;
					else begin
						if (r_ads_lstate == ST_ADS_SETTING) r_ads_pstate <= ST_ADS_SETTING;
					end
				end

				ST_ADS_RREG_INIT:
				begin
					o_ADS1292_CONTROL <= ADS_CB_RREG;
					o_ADS1292_REG_ADDR <= r_ads_first_param;
					r_ads_pstate <= ST_ADS_RREG_CONFIRM;
				end

				ST_ADS_RREG_CONFIRM:
				begin
					o_ADS1292_CONTROL <= ADS_CB_IDLE;
					if(i_ADS1292_BUSY) r_ads_pstate <= ST_ADS_RREG_CONFIRM;
					else begin
						r_ads_read_reg_done <= 1'b1;
						r_ads_reg_data <= i_ADS1292_DATA_OUT[7:0];
						r_ads_pstate <= ST_ADS_IDLE;
					end
				end


				ST_ADS_RDATAC_INIT:
				begin
					// The MSB of the data on DOUT is clocked out on the first SCLK rising edge (ADS1292.pdf p.29)
					r_ads_data_send_ready <= 1'b0;
					if((!r_ads_run_set) && r_ads_run_set_done) r_ads_pstate <= ST_ADS_STOP;
					else begin
						if(i_ADS1292_DATA_READY) begin // TODO, make rising edge detective
							r_ads_data_out <= i_ADS1292_DATA_OUT[23:0]; //store data
							r_ads_data_ch2_1[7:0] <= i_ADS1292_DATA_OUT[23:16];
							r_ads_data_ch2_2[7:0] <= i_ADS1292_DATA_OUT[15:8];
							r_ads_data_ch2_3[7:0] <= i_ADS1292_DATA_OUT[7:0];
							r_ads_data_send_ready <= 1'b1;
							r_ads_pstate <= ST_ADS_RDATAC_INIT;
						end else r_ads_pstate <= ST_ADS_RDATAC_INIT;
					end
				end

				ST_ADS_RDATAC_DATA_PROCESS:
				begin
					// CHANGED unused
					// convert data process
					/*
					if(r_ads_data_ch2_1 > 8'h7F) begin
						r_ads_data_convert <= ~(((~r_ads_data_ch2_1)<<16)|((~r_ads_data_ch2_2)<<8)|(~r_ads_data_ch2_3) + 1'b1) + 1'b1;
					end else begin
						r_ads_data_convert <= (r_ads_data_ch2_1<<16)|(r_ads_data_ch2_2<<8)|r_ads_data_ch2_3;
					end
					*/
					// CHANGED converting ads data process in C++
					r_ads_data_convert <= {8'b0, r_ads_data_ch2_1[7:0], r_ads_data_ch2_2[7:0], r_ads_data_ch2_3[7:0]};
					r_ads_data_send_ready <= 1'b1;
					r_ads_pstate <= ST_ADS_RDATAC_INIT;
				end

				default:
				begin
					r_ads_pstate <= ST_ADS_IDLE;
				end
			endcase
		end
	end
	//============================================================================
endmodule // sensor_core
