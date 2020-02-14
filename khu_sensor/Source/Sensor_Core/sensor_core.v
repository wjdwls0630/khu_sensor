//TODO rename everything by the rules of thumb
///////////////////////////////////////////////////////////////////////////////
// Module Name : sensor_core
//
// Description: sensor_core is module for controlling mpr121 and ads1292,
// 							Not only that, control UART? In addition, process data from TX and RX
//
//
///////////////////////////////////////////////////////////////////////////////
module sensor_core(

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
	/*
	input [71:0] ads1292_data_out_in, // read data from ADS1292
	output reg [2:0] ads1292_control_out, // ADS1292 Control
	output reg [7:0] ads1292_command_out, // ADS1292 SPI command
	output reg [7:0] ads1292_reg_addr_out, // ADS1292 register address
	output reg [7:0] ads1292_data_in_out, // data to write in ADS1292 register
	input ads1292_rdatac_ready_in, // In Read data continue mode,  flag that 72 bits data is ready
	input ads1292_busy_in,
	input ads1292_fail_in,

	input ads1292_drdy_in,
	*/
	// System I/O
	output reg o_CHIP_SET,
	input i_RUN,
	output reg o_RUN_SET,
	output reg o_CORE_BUSY,
	input wire i_CLK,
	input wire i_RST
	);

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
	parameter ST_CORE_READ_START = 8'd3;
	parameter ST_CORE_IS_READING = 8'd4;
	//============================================================================
	//TODO ADS
	//==============================Connection====================================

	// chip setting logic
	reg r_mpr_chip_set; // state change signal
	reg r_mpr_chip_set_done; // signal that process is done
	//reg r_ads_chip_set;
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) o_CHIP_SET <= 1'b0;
		else o_CHIP_SET <= r_mpr_chip_set_done /* & r_ads_chip_set*/;
	end

	// remember input run signal
	reg r_run_state;
	always @ ( i_RUN, i_RST ) begin
		if(i_RST) r_run_state <= 1'b0;
		else begin
			if(i_RUN) r_run_state <= 1'b1;
			else r_run_state <= 1'b0;
		end
	end

	// run condition logic for both mpr and ads
	reg r_mpr_run_set; // state change signal
	reg r_mpr_run_set_done; // signal that process is done
	reg r_ads_run_set;
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) o_RUN_SET <= 1'b0;
		else o_RUN_SET <= r_mpr_run_set_done /*& r_ads_run_set*/;
	end

	// reading condition logic for both mpr and ads
	reg r_mpr_is_reading;
	//reg r_ads_is_reading;
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) o_CORE_BUSY <= 1'b0;
		else o_CORE_BUSY <= r_mpr_is_reading /*& r_ads_is_reading*/;
	end

	//============================================================================

	//=============================Sequential Logic===============================
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) begin
			//TODO UART data
			r_mpr_chip_set <= 1'b0;
			r_mpr_run_set <= 1'b0;
			r_mpr_is_reading <= 1'b0;
			// state
			r_core_lstate <= ST_CORE_IDLE;
			r_core_pstate <= ST_CORE_IDLE;
		end else begin
			case (r_core_pstate)
				ST_CORE_IDLE:
				begin
					r_mpr_chip_set <= 1'b0;
					r_mpr_run_set <= 1'b0;
					r_mpr_is_reading <= 1'b0;
					// state
					r_core_lstate <= ST_CORE_IDLE;
					r_core_pstate <= ST_CORE_START;
				end

				ST_CORE_START:
				begin
					if(!o_CHIP_SET) begin
						if(!r_mpr_chip_set_done) r_mpr_chip_set <= 1'b1;
						//else r_mpr_chip_set <= 1'b0;
						//if(!r_ads_chip_set) r_ads_pstate <= ST_ADS_SETTING;
					end else r_core_pstate <= ST_CORE_STANDBY;
				end

				ST_CORE_STANDBY:
				//TODO Later, when connect UART, run state will replace UART signal,
				// will make Read Register in this state
				begin

					if(r_run_state) begin
						if(!r_mpr_run_set_done) r_mpr_run_set <= 1'b1;
						else r_mpr_is_reading <= 1'b1;

						//if(!r_ads_run_set) r_ads_pstate <= ST_ADS_RUN;
						//else r_ads_pstate <= ST_ADS_RDATAC_INIT;
					end else begin
						if(r_mpr_run_set_done) r_mpr_run_set <= 1'b0;
						else r_mpr_is_reading <= 1'b0; //TODO design where state should go

						//if(r_ads_run_set) r_ads_pstate <= ST_ADS_STOP;
						//else r_ads_pstate <= ST_ADS_IDLE;
					end
					// if satisfy all condition to run & read, sensor_core is going to ~
					if (r_run_state & o_RUN_SET) r_core_pstate <= ST_CORE_IS_READING;
					else r_core_pstate <= ST_CORE_STANDBY;
				end

				ST_CORE_READ_START:
				begin

					//r_mpr_pstate <= ST_MPR_READ_STATUS_INIT;
					//r_ads_pstate <= ST_ADS_RDATAC_INIT;
					r_core_pstate <= ST_CORE_IS_READING;
				end

				ST_CORE_IS_READING:
				begin
					// core is reading
					if(r_run_state) r_core_pstate <= ST_CORE_IS_READING;
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
	parameter ST_MPR_IDLE  = 8'd0;
	parameter ST_MPR_SETTING = 8'd1;
	parameter ST_MPR_RUN = 8'd2;
	parameter ST_MPR_STOP = 8'd3;
	parameter ST_MPR_WRITE_REG_INIT = 8'd4;
	parameter ST_MPR_WRITE_REG_EN = 8'd5;
	parameter ST_MPR_WRITE_REG_CONFIRM = 8'd6;
	parameter ST_MPR_WRITE_REG_WAIT = 8'd7;
	// TODO Read Reg state
	parameter ST_MPR_READ_STATUS_INIT = 8'd26;
	parameter ST_MPR_READ_STATUS_START = 8'd27;
	parameter ST_MPR_READ_STATUS_EN = 8'd28;
	parameter ST_MPR_READ_STATUS_CONFIRM = 8'd29;
	parameter ST_MPR_READ_STATUS_CHANGE = 8'd30;
	parameter ST_MPR_ERROR_REPORT = 8'd31;
	//============================================================================

	//=========================Internal Connection ===============================

	// MPR121 variable
	reg [3:0] r_mpr_set_counter; // mpr setting counter
	reg [7:0] r_mpr_first_param;
	reg [7:0] r_mpr_second_param;
	reg r_mpr_status; // status_0 read(0) status_1 read(1)
	reg [7:0] r_mpr_touch_status_0; // reg_addr : 0x00 data
	reg [7:0] r_mpr_touch_status_1; // reg_addr : 0x01 data
	reg [11:0] r_mpr_touch_status; // 0x01 + 0x00
	reg [9:0] r_mpr_read_delay; // wait mpr121 read time
	//============================================================================
	// TODO make READ_REG state
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

			r_mpr_chip_set_done <= 1'b0;
			r_mpr_run_set_done <= 1'b0;
			r_mpr_set_counter <= 4'b0;
			r_mpr_first_param <= 8'b0;
			r_mpr_second_param <= 8'b0;
			r_mpr_status <= 1'b0;
			r_mpr_touch_status_0 <= 8'b0;
			r_mpr_touch_status_1 <= 8'b0;
			r_mpr_touch_status <= 12'b0;
			r_mpr_read_delay <= 10'b0;

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

					r_mpr_set_counter <= 4'b0;
					r_mpr_first_param <= 8'b0;
					r_mpr_second_param <= 8'b0;
					r_mpr_status <= 1'b0;
					r_mpr_touch_status_0 <= 8'b0;
					r_mpr_touch_status_1 <= 8'b0;
					r_mpr_touch_status <= 12'b0;
					r_mpr_read_delay <= 10'b0;

					if(r_mpr_chip_set &&(!r_mpr_chip_set_done)) r_mpr_pstate <= ST_MPR_SETTING;
					else if(r_mpr_run_set &&(!r_mpr_run_set_done)) r_mpr_pstate <= ST_MPR_RUN;
					else r_mpr_pstate <= ST_MPR_IDLE;
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

				// read data from MPR121
				ST_MPR_READ_STATUS_INIT:
				begin
					o_MPR121_WRITE_ENABLE <= 1'b0;
					o_MPR121_READ_ENABLE <= 1'b0;
					if((!r_mpr_run_set) && r_mpr_run_set_done) r_mpr_pstate <= ST_MPR_STOP;
					else begin
						if(r_mpr_status == 1'b0) r_mpr_first_param <= MPR_TOUCH_STATUS_0_REG; // MPR Touch_0 Status Register addr
						else r_mpr_first_param <= MPR_TOUCH_STATUS_1_REG;
						r_mpr_pstate <= ST_MPR_READ_STATUS_START;
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
					//TODO slow reaction of LED, why?
					r_mpr_status <= ~r_mpr_status; // change its read status;
					if(r_mpr_status == 1'b0) r_mpr_pstate <= ST_MPR_READ_STATUS_INIT;
					else begin
						r_mpr_touch_status <= {r_mpr_touch_status_1[3:0], r_mpr_touch_status_0[7:0]};
						r_mpr_lstate <= ST_MPR_READ_STATUS_CHANGE;
						r_mpr_pstate <= ST_MPR_READ_STATUS_INIT;
					end
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
	parameter ADS_CB_WREG = 3'b010;
	parameter ADS_CB_RDATAC = 3'b100;
	parameter ADS_CB_SDATAC = 3'b101;

	// ADS1292 Register Setting
	parameter ADS_CONFIG_1_REG = 8'h01; parameter ADS_CONFIG_1_DATA = 8'h02;
	parameter ADS_CONFIG_2_REG = 8'h02; parameter ADS_CONFIG_2_DATA = 8'hA0;
	parameter ADS_LOFF_REG = 8'h03; parameter ADS_LOFF_DATA = 8'h10;
	parameter ADS_CH1SET_REG = 8'h04; parameter ADS_CH1SET_DATA = 8'h81;
	parameter ADS_CH2SET_REG = 8'h05; parameter ADS_CH2SET_DATA = 8'h00;
	parameter ADS_RLD_SENS_REG = 8'h06; parameter ADS_RLD_SENS_DATA = 8'h63;
	parameter ADS_LOFF_SENS_REG = 8'h07; parameter ADS_LOFF_SENS_DATA = 8'h0F;
	parameter ADS_LOFF_STAT_REG = 8'h08; parameter ADS_LOFF_STAT_DATA = 8'h40;
	parameter ADS_RESP1_REG = 8'h09; parameter ADS_RESP1_DATA = 8'hEA;
	parameter ADS_RESP2_REG = 8'h0A; parameter ADS_RESP2_DATA = 8'h03;
	parameter ADS_GPIO_REG = 8'h0B; parameter ADS_GPIO_DATA = 8'h00;
	//============================================================================

	//==============================State=========================================
	reg [7:0] r_ads_lstate;
	reg [7:0] r_ads_pstate;

	// ADS1292
	// 8'b0010_xxxx

	//============================================================================

	//=========================Internal Connection ===============================


	//============================================================================
	// TODO make READ_REG state
	//=============================Sequential Logic===============================
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) begin

		end else begin
		case (r_ads_pstate)
			value:
			default:
		endcase


			endcase
		end
	end


endmodule
	//============================================================================

	// paramaters

/*
	// State
	reg [7:0] pstate; // present pstate
	reg [7:0] lstate; // last pstate


	// Sensor_Core
	// 8'b0000_xxxx
	parameter ST_IDLE  = 8'd0;
	parameter ST_START = 8'd1;
	parameter ST_CHIP_SETTING = 8'd2;
	parameter ST_STANDBY = 8'd3;
	parameter ST_READ_STANDBY = 8'd4;
	parameter ST_SEND_PC_INIT = 8'd5;

	// MPR121_
	// 8'b0001_xxxx
	parameter ST_MPR_RUN = 8'd16;
	parameter ST_MPR_STOP = 8'd17;
	parameter ST_WRITE_MPR_REG_INIT = 8'd18;
	parameter ST_WRITE_MPR_REG_EN = 8'd19;
	parameter ST_WRITE_MPR_REG_CONFIRM = 8'd20;
	parameter ST_WRITE_MPR_REG_WAIT = 8'd21;
	parameter ST_READ_MPR_STATUS_INIT = 8'd22;
	parameter ST_READ_MPR_STATUS_EN = 8'd23;
	parameter ST_READ_MPR_STATUS_CONFIRM = 8'd24;
	parameter ST_READ_MPR_STATUS_CHANGE = 8'd25;
	parameter ST_MPR_ERROR_REPORT 	= 8'd26;
	parameter ST_SEND_PC_MPR = 8'd27;
	parameter ST_SEND_PC_MPR_1_WAIT = 8'd28;
	parameter ST_SEND_PC_MPR_2 = 8'd29;
	parameter ST_SEND_PC_MPR_FINISH = 8'd30;

	// ADS1292
	// 8'b00010_xxxx
	parameter ST_ADS_RUN = 8'd32;
	parameter ST_ADS_STOP = 8'd33;
	parameter ST_ADS_WREG_INIT = 8'd34;
	parameter ST_ADS_WREG_CONFIRM = 8'd35;
	parameter ST_ADS_RDATAC = 8'd36;
	// TODO RREG State
	parameter ST_SEND_PC_ADS = 8'd45;
	parameter ST_SEND_PC_ADS_WAIT = 8'd46;
	parameter ST_SEND_PC_ADS_FINISH = 8'd47;


	//===========================================================================================================================
	// Setting


	reg [4:0] chip_set_counter_reg;

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


	// ADS1292
	parameter ADS_CB_IDLE = 3'b000;
	parameter ADS_CB_WREG = 3'b010;
	parameter ADS_CB_RDATAC = 3'b100;
	parameter ADS_CB_SDATAC = 3'b101;

	parameter ADS_CONFIG_1_REG = 8'h01; parameter ADS_CONFIG_1_DATA = 8'h02;
	parameter ADS_CONFIG_2_REG = 8'h02; parameter ADS_CONFIG_2_DATA = 8'hA0;
	parameter ADS_LOFF_REG = 8'h03; parameter ADS_LOFF_DATA = 8'h10;
	parameter ADS_CH1SET_REG = 8'h04; parameter ADS_CH1SET_DATA = 8'h81;
	parameter ADS_CH2SET_REG = 8'h05; parameter ADS_CH2SET_DATA = 8'h00;
	parameter ADS_RLD_SENS_REG = 8'h06; parameter ADS_RLD_SENS_DATA = 8'h63;
	parameter ADS_LOFF_SENS_REG = 8'h07; parameter ADS_LOFF_SENS_DATA = 8'h0F;
	parameter ADS_LOFF_STAT_REG = 8'h08; parameter ADS_LOFF_STAT_DATA = 8'h40;
	parameter ADS_RESP1_REG = 8'h09; parameter ADS_RESP1_DATA = 8'hEA;
	parameter ADS_RESP2_REG = 8'h0A; parameter ADS_RESP2_DATA = 8'h03;
	parameter ADS_GPIO_REG = 8'h0B; parameter ADS_GPIO_DATA = 8'h00;




	//===========================================================================================================================
	// internal register
	reg [7:0] first_param_reg; // use for reg addr
	reg [7:0] second_param_reg; // use for reg data in (write mode)

	reg mpr_run_set;
	reg mpr_touch_status_read; // status_0 read(0) status_1 read(1)
	reg [7:0] mpr_touch_status_0_reg;
	reg [7:0] mpr_touch_status_1_reg;

	reg ads_run_set;
	reg [71:0] ads_data_out_reg; // store ads data
	reg [3:0] ads_data_counter_reg; // shift counter


	//===========================================================================================================================
	// for process
	reg run_state;
	always @ ( run, i_RST ) begin
		if(i_RST) run_state <= 1'b0;
		else begin
			if(run) run_state <= 1'b1;
			else run_state <= 1'b0;
		end
	end

	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) run_set <= 1'b0;
		else run_set <= mpr_run_set & ads_run_set;
	end
	// for process interrupt from ADS RDATAC data ready signal
	reg ads_drdy_readed_reg;

	always @(posedge i_RST or posedge i_CLK) begin
		if(i_RST) begin
			ads_drdy_readed_reg <= 1'b0;
		end else begin
			if (ads1292_rdatac_ready_in&&(~ads_drdy_readed_reg)) begin
				ads_drdy_readed_reg <= 1'b1;
			end else if (~ads1292_rdatac_ready_in) begin
				ads_drdy_readed_reg <= 1'b0;
			end
		end
	end


	//TODO not irq, just wait mpr121 read time
	// for process interrupt from MPR IRQ signal
	reg mpr121_irq_reg;
	reg [31:0] mpr121_irq_delay_reg;
	reg mpr_is_reading_reg;

	always @(posedge i_CLK, posedge i_RST) begin
		if(i_RST) begin
			mpr121_irq_reg <= 1'b0;
			mpr121_irq_delay_reg <= 32'd0;
		end else begin
			if (mpr_is_reading_reg) begin
				if ((~mpr121_irq_reg)) begin
					mpr121_irq_reg <= 1'b1;
					mpr121_irq_delay_reg <= 32'd0;
				end else if (mpr121_irq_delay_reg > 32'd10000) begin
					mpr121_irq_reg <= 1'b0;
					mpr121_irq_delay_reg <= 32'd0;
				end else begin
					mpr121_irq_delay_reg <= mpr121_irq_delay_reg + 1'b1;
				end
			end else mpr121_irq_reg <= 1'b1;
		end
	end
*/
	/*
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) begin
			mpr121_irq_reg <= 1'b0;
		end else begin
		 	if(~mpr121_irq) mpr121_irq_reg <= 1'b0;
			else if(mpr121_irq && (~mpr121_irq_reg)) begin
				if(mpr121_irq_delay_reg > 32'd10000) begin
					mpr121_irq_reg <= 1'b1;
					mpr121_irq_delay_reg <= 32'b0;
				end else mpr121_irq_delay_reg <= mpr121_irq_delay_reg + 1'b1;
			end else mpr121_irq_reg <= 1'b1;
		end
	end
	*/
	/*
	always @ ( posedge i_CLK, posedge i_RST ) begin
		if(i_RST) begin
			mpr121_irq_reg <= 1'b0;
			mpr121_irq_delay_reg <= 32'b0;
		end else begin
			if(mpr_is_reading_reg) begin
				if(~mpr121_irq) mpr121_irq_reg <= 1'b0;
				else if(mpr121_irq && (~mpr121_irq_reg)) begin
					if(mpr121_irq_delay_reg > 32'd2000000) begin
						mpr121_irq_reg <= 1'b1;
						mpr121_irq_delay_reg <= 32'b0;
					end else mpr121_irq_delay_reg <= mpr121_irq_delay_reg + 1'b1;
				end else mpr121_irq_reg <= 1'b1;
			end else mpr121_irq_reg <= 1'b1;
		end
	end
	*/

	//start of source
	/*
	reg [31:0] wait_timeout_reg;
	always @(posedge i_CLK, posedge i_RST) begin
		if(i_RST) begin

			//UART
			uart_addr_out <= 1'b0;
			uart_chip_select_out <= 1'b0;
			uart_byteenable_out <= 3'b0;
			uart_read_out <= 1'b0;
			uart_write_out <= 1'b0;
			uart_writedata_out <= 8'h00; // transmitted data to PC

			// Sensor Core
			chip_set <= 1'b0;
			first_param_reg <= 8'b0;
			second_param_reg <= 8'b0;

			// MPR121
			mpr121_reg_addr_out <= 8'b0;   // transmitted register address to MPR121 (write data)
			mpr121_data_in_out <= 8'b0;  // transmitted data to MPR121 (write data)
			mpr121_write_enable_out <= 8'b0;
			mpr121_read_enable_out <= 8'b0;
			mpr_is_reading_reg <= 0;
			mpr121_touch_status_out <= 12'b0;
			mpr121_is_error <= 1'b0;
			mpr_run_set <= 1'b0;
			mpr_is_reading_reg <= 0;
			mpr_touch_status_read <= 1'b0;
			mpr_touch_status_0_reg <= 8'b0;
			mpr_touch_status_1_reg <= 8'b0;

			// ADS1292
			ads1292_control_out <= 3'b0; // ADS1292 Control
			ads1292_command_out <= 8'b0; // ADS1292 SPI command
			ads1292_reg_addr_out <= 8'b0; // ADS1292 register address
			ads1292_data_in_out <= 8'b0; // data to write in ADS1292 register

			ads_data_out_reg <= 72'b0;
			ads_data_counter_reg <= 4'b0;

			wait_timeout_reg <= 32'b0;

			pstate <= ST_IDLE;
			lstate <= ST_IDLE;
		end
		else begin
			case (pstate)
					// From here, Uart initialization starts
       		ST_IDLE :
					begin
						// UART
						// turn on read/write interrupt enable
						uart_addr_out <= 1'b1;
						uart_chip_select_out <= 1'b1;
						uart_byteenable_out <= 3'b001;
						uart_read_out <= 1'b0;
						uart_write_out <= 1'b0;
						uart_writedata_out <= 8'h03;

						// Sensor_core
						chip_set <= 1'b0;
						first_param_reg <= 8'b0;
						second_param_reg <= 8'b0;

						// MPR121

						mpr121_write_enable_out <= 1'b0;
						mpr121_read_enable_out <= 1'b0;
						mpr_run_set <= 1'b0;
						mpr_touch_status_read <= 1'b0;
						mpr_is_reading_reg <= 1'b0;
						mpr_touch_status_0_reg <= 8'b0;
						mpr_touch_status_1_reg <= 8'b0;

						// ADS1292
						ads_run_set <= 1'b0;
						ads_data_out_reg <= 72'b0;
						ads_data_counter_reg <= 4'b0;

						wait_timeout_reg <= 32'b0;

						// state
						lstate <= ST_IDLE;
						pstate <= ST_START;
					end

					ST_START:
					begin
						if(!chip_set) pstate <= ST_CHIP_SETTING;
						else pstate <= ST_STANDBY;
					end

					ST_CHIP_SETTING:
					begin
						if(chip_set_counter_reg > 5'd24) begin
							chip_set <= 1'b1;
							chip_set_counter_reg <= 5'd0;
							pstate <= ST_START;
						end
						else begin
							// MPR121 Setting
							if(chip_set_counter_reg == 5'd0) begin
								first_param_reg <= MPR_MHDR_REG;
								second_param_reg <= MPR_MHDR_DATA;
							end

							if(chip_set_counter_reg == 5'd1) begin
								first_param_reg <= MPR_NHDAR_REG;
								second_param_reg <= MPR_NHDAR_DATA;
							end

							if(chip_set_counter_reg == 5'd2) begin
								first_param_reg <= MPR_NCLR_REG;
								second_param_reg <= MPR_NCLR_DATA;
							end

							if(chip_set_counter_reg == 5'd3) begin
								first_param_reg <= MPR_FDLR_REG;
								second_param_reg <= MPR_FDLR_DATA;
							end

							if(chip_set_counter_reg == 5'd4) begin
								first_param_reg <= MPR_MHDF_REG;
								second_param_reg <= MPR_MHDF_DATA;
							end

							if(chip_set_counter_reg == 5'd5) begin
								first_param_reg <= MPR_NHDAF_REG;
								second_param_reg <= MPR_NHDAF_DATA;
							end

							if(chip_set_counter_reg == 5'd6) begin
								first_param_reg <= MPR_NCLF_REG;
								second_param_reg <= MPR_NCLF_DATA;
							end

							if(chip_set_counter_reg == 5'd7) begin
								first_param_reg <= MPR_FDLF_REG;
								second_param_reg <= MPR_FDLF_DATA;
							end

							if(chip_set_counter_reg == 5'd8) begin
								first_param_reg <= MPR_NHDAT_REG;
								second_param_reg <= MPR_NHDAT_DATA;
							end

							if(chip_set_counter_reg == 5'd9) begin
								first_param_reg <= MPR_NCLT_REG;
								second_param_reg <= MPR_NCLT_DATA;
							end

							if(chip_set_counter_reg == 5'd10) begin
								first_param_reg <= MPR_FDLT_REG;
								second_param_reg <= MPR_FDLT_DATA;
							end

							if(chip_set_counter_reg == 5'd11) begin
								first_param_reg <= MPR_DEBOUNCE_REG;
								second_param_reg <= MPR_DEBOUNCE_DATA;
							end

							if(chip_set_counter_reg == 5'd12) begin
								first_param_reg <= MPR_FILTER_CDC_CONFIG_REG;
								second_param_reg <= MPR_FILTER_CDC_CONFIG_DATA;
							end

							if(chip_set_counter_reg == 5'd13) begin
								first_param_reg <= MPR_FILTER_CDT_CONFIG_REG;
								second_param_reg <= MPR_FILTER_CDT_CONFIG_REG;
							end

							if(chip_set_counter_reg == 5'd14) begin
								first_param_reg <= ADS_CONFIG_1_REG;
								second_param_reg <= ADS_CONFIG_1_DATA;
							end

							if(chip_set_counter_reg == 5'd15) begin
								first_param_reg <= ADS_CONFIG_2_REG;
								second_param_reg <= ADS_CONFIG_2_DATA;
							end

							if(chip_set_counter_reg == 5'd16) begin
								first_param_reg <= ADS_LOFF_REG;
								second_param_reg <= ADS_LOFF_DATA;
							end

							if(chip_set_counter_reg == 5'd17) begin
								first_param_reg <= ADS_CH1SET_REG;
								second_param_reg <= ADS_CH1SET_DATA;
							end

							if(chip_set_counter_reg == 5'd18) begin
								first_param_reg <= ADS_CH2SET_REG;
								second_param_reg <= ADS_CH2SET_DATA;
							end

							if(chip_set_counter_reg == 5'd19) begin
								first_param_reg <= ADS_RLD_SENS_REG;
								second_param_reg <= ADS_RLD_SENS_DATA;
							end

							if(chip_set_counter_reg == 5'd20) begin
								first_param_reg <= ADS_LOFF_SENS_REG;
								second_param_reg <= ADS_LOFF_SENS_DATA;
							end

							if(chip_set_counter_reg == 5'd21) begin
								first_param_reg <= ADS_LOFF_STAT_REG;
								second_param_reg <= ADS_LOFF_STAT_DATA;
							end

							if(chip_set_counter_reg == 5'd22) begin
								first_param_reg <= ADS_RESP1_REG;
								second_param_reg <= ADS_RESP1_DATA;
							end

							if(chip_set_counter_reg == 5'd23) begin
								first_param_reg <= ADS_RESP2_REG;
								second_param_reg <= ADS_RESP2_DATA;
							end

							if(chip_set_counter_reg == 5'd24) begin
								first_param_reg <= ADS_GPIO_REG;
								second_param_reg <= ADS_GPIO_DATA;
							end

							//TODO ADS run set

							chip_set_counter_reg <= chip_set_counter_reg + 1'b1;
							lstate <= ST_CHIP_SETTING;
							if(chip_set_counter_reg < 5'd14) pstate <= ST_WRITE_MPR_REG_INIT;
							else pstate <= ST_ADS_WREG_INIT;
						end
					end

					ST_STANDBY:
					begin
						// TODO this code is only for operation couple of chip simultaneously,
						// therefore don't separte mpr and ads state, just combine it? but in case, write state is divided, it may be a good way
						if(run_state) begin
							if(!mpr_run_set) pstate <= ST_MPR_RUN;
							else if(!ads_run_set) pstate <= ST_ADS_RUN;
							else pstate <= ST_READ_STANDBY;
						end else begin
						 	if(mpr_run_set) pstate <= ST_MPR_STOP;
							else if(ads_run_set) pstate <= ST_ADS_STOP;
							else pstate <= ST_STANDBY;
						end

					end

					ST_MPR_RUN:
					begin
						first_param_reg <= MPR_ELE_CONFIG_REG;
						second_param_reg <= MPR_ELE_CONFIG_RUN;
						lstate <= ST_MPR_RUN;
						pstate <= ST_WRITE_MPR_REG_INIT;
					end

					ST_MPR_STOP:
					begin
						first_param_reg <= MPR_ELE_CONFIG_REG;
						second_param_reg <= 8'h00;
						lstate <= ST_MPR_STOP;
						pstate <= ST_WRITE_MPR_REG_INIT;
					end

					ST_ADS_RUN:
					begin
						ads1292_control_out <= ADS_CB_RDATAC;
						ads_run_set <= 1'b1;
						pstate <= ST_STANDBY;
					end

					ST_ADS_STOP:
					begin
						ads1292_control_out <= ADS_CB_SDATAC;
						ads_run_set <= 1'b0;
						pstate <= ST_STANDBY;
					end
						*/
						/*
					ST_READ_STANDBY:
					begin

						// MPR
						if(run_state  && run_ads_state ) begin
							// TODO priority is ADS
							*/
							/*
							if(ads1292_rdatac_ready_in) pstate <= ST_ADS_RDATAC;
							else begin
								if(~mpr121_irq_reg) begin
									first_param_reg <= MPR_TOUCH_STATUS_0_REG; // MPR Touch_0 Status Register addr
									pstate <= ST_READ_MPR_STATUS_INIT;
								end else pstate <= ST_READ_STANDBY;

								if (~mpr121_irq_reg) begin
									first_param_reg <= MPR_TOUCH_STATUS_0_REG; // MPR Touch_0 Status Register addr
									pstate <= ST_READ_MPR_STATUS_INIT;
								end else pstate <= ST_READ_STANDBY;

							end
							*/
							/*
							mpr_is_reading_reg <= 1'b1; // mpr is reading
							if(ads1292_rdatac_ready_in&&(~ads_drdy_readed_reg)) pstate <= ST_ADS_RDATAC;
							else begin
								if(~mpr121_irq_reg) begin
									first_param_reg <= MPR_TOUCH_STATUS_0_REG; // MPR Touch_0 Status Register addr
									pstate <= ST_READ_MPR_STATUS_INIT;
								end else pstate <= ST_READ_STANDBY;
							end
							*/
							/*
							if (~mpr121_irq_reg) begin

								first_param_reg <= MPR_TOUCH_STATUS_0_REG; // MPR Touch_0 Status Register addr
								pstate <= ST_READ_MPR_STATUS_INIT;
							end


							// Continue read for received data
							// Process IRQ signal from MPR sensor


							// Continue read for received data
							// Process IRQ signal from MPR sensor
							// Process notice signals from ADS

							if (ADS_drdy&&(~r_ads_drdy_readed)) begin
								pre_pstate2 <= ST_ADS_RDATAC_SEND_RESULTS;
								pstate <= ST_ADS_SENDPC;
							end
							*/
							/*
						end else begin
							mpr_is_reading_reg <= 1'b0;
							pstate <= ST_STANDBY;
						end

					end

					// Write data to a register of MPR121 then read back
					ST_WRITE_MPR_REG_INIT:
					begin
						mpr121_reg_addr_out <= first_param_reg;
						mpr121_data_in_out <= second_param_reg;
						pstate <= ST_WRITE_MPR_REG_EN;
					end

					ST_WRITE_MPR_REG_EN:
					begin
						mpr121_write_enable_out <= 1'b1;
						mpr121_read_enable_out <= 1'b0;
						pstate <= ST_WRITE_MPR_REG_CONFIRM;
					end

					ST_WRITE_MPR_REG_CONFIRM:
					begin
						mpr121_write_enable_out <= 1'b0;
						mpr121_read_enable_out <= 1'b0;
						if (mpr121_busy_in) pstate <= ST_WRITE_MPR_REG_CONFIRM;
						else begin
							if (mpr121_fail_in) pstate <= ST_MPR_ERROR_REPORT;
							else pstate <= ST_WRITE_MPR_REG_WAIT;
						end
					end

					ST_WRITE_MPR_REG_WAIT:
					begin
						if(lstate == ST_CHIP_SETTING) pstate <= ST_CHIP_SETTING;
						else begin
							if(lstate == ST_MPR_RUN) mpr_run_set <= 1'b1;
							else if(lstate == ST_MPR_STOP) mpr_run_set <= 1'b0;
							pstate <= ST_STANDBY;
						end
					end

					// read data from MPR121
					ST_READ_MPR_STATUS_INIT:
					begin
						mpr121_reg_addr_out <= first_param_reg;
						pstate <= ST_READ_MPR_STATUS_EN;
					end

					ST_READ_MPR_STATUS_EN:
					begin
						mpr121_write_enable_out <= 1'b0;
						mpr121_read_enable_out <= 1'b1;
						pstate <= ST_READ_MPR_STATUS_CONFIRM;
					end

					ST_READ_MPR_STATUS_CONFIRM:
					begin
						mpr121_write_enable_out <= 1'b0;
						mpr121_read_enable_out <= 1'b0;
						if (mpr121_busy_in) pstate <= ST_READ_MPR_STATUS_CONFIRM;
						else begin
							if (mpr121_fail_in) pstate <= ST_MPR_ERROR_REPORT;
							else begin
								if (mpr_touch_status_read == 1'b0) mpr_touch_status_0_reg <= mpr121_data_out_in;
								else mpr_touch_status_1_reg <= mpr121_data_out_in;
								pstate <= ST_READ_MPR_STATUS_CHANGE;
							end
						end
					end

					ST_READ_MPR_STATUS_CHANGE:
					begin
						mpr_touch_status_read <= ~mpr_touch_status_read; // change its read status;
						if(mpr_touch_status_read == 1'b0) begin
							first_param_reg <= MPR_TOUCH_STATUS_1_REG; // change status
							pstate <= ST_READ_MPR_STATUS_INIT;
						end else begin
							mpr121_touch_status_out[11:0] <= {mpr_touch_status_1_reg[3:0], mpr_touch_status_0_reg[7:0]};
							lstate <= ST_READ_MPR_STATUS_CHANGE;
							pstate <= ST_SEND_PC_INIT;
						end
					end

					ST_MPR_ERROR_REPORT:
					begin
						mpr121_is_error <= 1'b1;
						lstate <= ST_MPR_ERROR_REPORT;
						pstate <= ST_STANDBY;
					end

					ST_ADS_WREG_INIT:
					begin
						ads1292_control_out <= ADS_CB_WREG;
						ads1292_reg_addr_out <= first_param_reg;
						ads1292_data_in_out <= second_param_reg;
						pstate <= ST_ADS_WREG_CONFIRM;
					end

					ST_ADS_WREG_CONFIRM:
					begin
						ads1292_control_out <= ADS_CB_IDLE;
						if(ads1292_busy_in) pstate <= ST_ADS_WREG_CONFIRM;
						else begin
							if (lstate == ST_CHIP_SETTING) pstate <= ST_CHIP_SETTING;
							else pstate <= ST_STANDBY; //TODO go where? is there any other case to write reg?
						end
					end

					ST_ADS_RDATAC:
					begin
						ads_data_out_reg <= ads1292_data_out_in; // store data
						lstate <= ST_ADS_RDATAC;
						pstate <= ST_SEND_PC_INIT;
					//
						if(ads1292_rdatac_ready_in) begin
						ads_data_out_reg <= ads1292_data_out_in; // store data
						lstate <= ST_ADS_RDATAC
						pstate <= ST_SEND_PC;
						end else pstate <= ST_ADS_RDATAC;
					//
					end

					//TODO need to control uart address and chip select?
					ST_SEND_PC_INIT:
					begin
						// UART
						// turn on read/write interrupt enable
						//
						uart_addr_out <= 1'b1;
						uart_chip_select_out <= 1'b1;
						uart_read_out <= 1'b0;
						uart_write_out <= 1'b1;
						uart_writedata_out <= 8'h03;
						//
						if(lstate ==  ST_READ_MPR_STATUS_CHANGE) pstate <= ST_SEND_PC_MPR;
						else if(lstate == ST_ADS_RDATAC) pstate <= ST_SEND_PC_ADS;
						else pstate <= ST_SEND_PC_INIT; //TODO need?
					end

					ST_SEND_PC_MPR:
					begin
						uart_addr_out <= 1'b0;
						uart_chip_select_out <= 1'b1;
						uart_byteenable_out <= 3'b001;
						uart_write_out <= 1'b1;
						uart_read_out <= 1'b0;
						//
						uart_writedata_out <= mpr_touch_status_0_reg;
						pstate <= ST_SEND_PC_MPR_1_WAIT;
						//

						lstate <= ST_SEND_PC_MPR;
						if(lstate == ST_READ_MPR_STATUS_CHANGE) begin
							uart_writedata_out <= mpr_touch_status_0_reg;
							pstate <= ST_SEND_PC_MPR;
						end else begin
							if(!uart_irq_in) begin
								uart_writedata_out <= {4'b0000, mpr_touch_status_1_reg[3:0]};
								pstate <= ST_SEND_PC_MPR_FINISH;
							end else pstate <= ST_SEND_PC_MPR;
						end

					end

					ST_SEND_PC_MPR_1_WAIT:
					begin
						//
						if(wait_timeout_reg >32'd1000) begin
							if(!uart_irq_in) begin
								wait_timeout_reg <= 32'b0;
								uart_chip_select_out <= 1'b0;
								uart_write_out <= 1'b0;
								uart_read_out <= 1'b0;
								pstate <= ST_SEND_PC_MPR_2;
							end else pstate <= ST_SEND_PC_MPR_1_WAIT;
						end else begin
							wait_timeout_reg <= wait_timeout_reg + 1'b1;
							pstate <= ST_SEND_PC_MPR_1_WAIT;
						end
						//

						if(!uart_irq_in) begin
							uart_chip_select_out <= 1'b0;
							uart_write_out <= 1'b0;
							uart_read_out <= 1'b0;
							pstate <= ST_SEND_PC_MPR_2;
						end else pstate <= ST_SEND_PC_MPR_1_WAIT;

					end

					ST_SEND_PC_MPR_2:
					begin
						uart_chip_select_out <= 1'b1;
						uart_write_out <= 1'b1;
						uart_read_out <= 1'b0;
						uart_writedata_out <= {4'b0000, mpr_touch_status_1_reg[3:0]};
						pstate <= ST_SEND_PC_MPR_FINISH;
					end

					ST_SEND_PC_MPR_FINISH:
					begin
					//TODO fix?
					//
						uart_write_out <= 1'b1;
						uart_read_out <= 1'b0;
						//
						//
						if(wait_timeout_reg >32'd1000) begin
							if(!uart_irq_in) begin
								wait_timeout_reg <= 32'b0;
								uart_addr_out <= 1'b0;
								uart_chip_select_out <= 1'b0;
								uart_byteenable_out <= 3'b000;
								uart_write_out <= 1'b0;
								uart_read_out <= 1'b0;
								pstate <= ST_READ_STANDBY;
							end else pstate <= ST_SEND_PC_MPR_FINISH;
						end else begin
							wait_timeout_reg <= wait_timeout_reg + 1'b1;
							pstate <= ST_SEND_PC_MPR_FINISH;
						end
						//

						if(!uart_irq_in) begin
							uart_addr_out <= 1'b0;
							uart_chip_select_out <= 1'b0;
							uart_byteenable_out <= 3'b000;
							uart_write_out <= 1'b0;
							uart_read_out <= 1'b0;
							pstate <= ST_READ_STANDBY;
						end
						else pstate <= ST_SEND_PC_MPR_FINISH;

					end

					ST_SEND_PC_ADS:
					begin

						uart_addr_out <= 1'b0;
						uart_chip_select_out <= 1'b1;
						uart_byteenable_out <= 3'b001;
						uart_write_out <= 1'b1;
						uart_read_out <= 1'b0;
						uart_writedata_out <= ads_data_out_reg[71:64];
						pstate <= ST_SEND_PC_ADS_WAIT;
					end

					ST_SEND_PC_ADS_WAIT:
					begin
						if(ads_data_counter_reg > 4'd8) begin
							ads_data_counter_reg <= 4'b0;
							pstate <= ST_SEND_PC_ADS_FINISH;
						end else begin
							if(!uart_irq_in) begin
								ads_data_counter_reg <= ads_data_counter_reg + 1'b1;
								ads_data_out_reg <= {ads_data_out_reg[63:0], 8'b0000_0000}; // shift left
								pstate <=  ST_SEND_PC_ADS;
							end else pstate <= ST_SEND_PC_ADS_WAIT;
						end
					end

					ST_SEND_PC_ADS_FINISH:
					begin
					//TODO fix?
						if(!uart_irq_in) begin
							uart_addr_out <= 1'b0;
							uart_chip_select_out <= 1'b0;
							uart_byteenable_out <= 3'b000;
							uart_write_out <= 1'b0;
							uart_read_out <= 1'b0;
							pstate <= ST_READ_STANDBY;
						end
						else pstate <= ST_SEND_PC_ADS_FINISH;
					//
						uart_write_out <= 1'b1;
						uart_read_out <= 1'b0;

						if(!uart_irq_in) pstate <= ST_READ_STANDBY;
						else pstate <= ST_SEND_PC_MPR_FINISH;

						pstate <= ST_READ_STANDBY;
						//
					end

				default: begin
					pstate <= ST_IDLE;
				end
			endcase
	end
end
*/
