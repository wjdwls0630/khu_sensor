module ads1292_controller (
	input i_CLK, // clock
	input i_RSTN, //reset

	// Host Side
	output reg [71:0] o_ADS1292_DATA_OUT, // read data from ADS1292
	input [2:0] i_ADS1292_CONTROL, // ADS1292 Control
	input [7:0] i_ADS1292_COMMAND, // ADS1292 SPI command
	input [7:0] i_ADS1292_REG_ADDR, // ADS1292 register address
	input [7:0] i_ADS1292_DATA_IN, // data to write in ADS1292 register
	output reg o_ADS1292_RDATAC_READY, // In Read data continue mode,  flag that 72 bits data is ready
	output reg o_ADS1292_BUSY,
	output reg o_ADS1292_FAIL,  //TODO delete not  use

	//	ADS1292, SPI Side
	output o_SPI_CLK,
	input i_SPI_MISO, // SPI data form ADS - Master input Slave output (read)
	output o_SPI_MOSI, // SPI data to ADS - Master Output Slave Input (write)
	input i_ADS1292_DRDY, // Data Ready (active low)
	output reg o_ADS1292_RESET,
	output reg o_ADS1292_START,
	output reg o_SPI_CSN // Chip Select Negative (active low)
	// When CS is taken high, the serial interface is reset, SCLK and DIN are ignored, and DOUT enters a high-impedance state
	);

	/* ADS1292 Pins (ADS192.pdf p.12 PIN ASSIGNMENTS)
	Name 	 						Terminal  		Function					   Description
	SCLK 								20 					Digital input 				SPI clock
	CSN 								18				 	Digital input 				Chip select
	DIN(o_SPI_MOSI)		  19					Digital input 				SPI data in (Master - SPI Master, Slave - ADS1292 Chip)
	DOUT(i_SPI_MISO) 		21 					Digital output 				SPI data out (Master - SPI Master, Slave - ADS1292 Chip)
	START 							16 					Digital input 				Start conversion
	PWDN/RESET(N) 			15 					Digital input 				Power-down or system reset;(active low)
	DRDY(N) 						22 					Digital output 				Data ready; (active low)

	Slave Chip Select
	Chip Select (CS)
	CS selects the ADS1291, ADS1292(We use), and ADS1292R for SPI communication. CS must remain *low for the entire
	duration of the serial communication. After the serial communication is finished, always wait four or more tCLK
	cycles before taking CS high. When CS is taken *high, the serial interface is *reset, SCLK and DIN are ignored,
	and DOUT enters a high-impedance state. DRDY asserts when data conversion is complete, regardless of
	whether CS is high or low.
	*/

	/*
	reg == input of spi_master
	wire == output of spi_master
	*/
	// Master (SPI)(write)(transmit) - Slave (ADS1292)(receive)
	reg [7:0] r_spi_data_in; // 1byte data to ADS1292 - spi(master input)
	reg r_spi_data_in_valid; // valid of input data byte
	wire w_spi_data_in_ready; // ready flag which indicate status that Master can receive data byte to write when Master finish to write previous data sent

	// Master (SPI)(read)(receive) - Slave (ADS1292)(transmit)
	wire [7:0] w_spi_data_out;  // 1 byte data from ADS1292 - spi(master output)
	wire w_spi_data_out_valid; //  valid of output data byte

	/*
	Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)
	0   |             0             |        0

	CLKS_PER_HALF_BIT(2) - Sets frequency of o_SPI_Clk.  o_SPI_Clk is derived from i_Clk.
	Set to integer number of clocks for each half-bit of SPI data.
	E.g. 100 MHz i_Clk, CLKS_PER_HALF_BIT = 2 would create o_SPI_CLK of 25 MHz.  Must be >= 2
	*/
	/*#(.SPI_MODE(0), .CLKS_PER_HALF_BIT(2))*/
	spi_master #(.SPI_MODE(0),
	 						 .CLKS_PER_HALF_BIT(4))
	spi_master( // following default setting of spi
		// Control/Data Signals,
		.i_Rst_L(i_RSTN),     // FPGA Reset (i_Rst_L - active low)
		.i_Clk(i_CLK),       // FPGA Clock

		// TX(Master Transimit) (MOSI) Signals (write)
		.i_TX_Byte(r_spi_data_in),        // Byte to transmit on MOSI
		.i_TX_DV(r_spi_data_in_valid),          // Data Valid Pulse with i_TX_Byte
		.o_TX_Ready(w_spi_data_in_ready),       // Transmit Ready for next byte, it trigger sclk

		// RX(Master Receive) (MISO) Signals (read)
		.o_RX_DV(w_spi_data_out_valid),     // Data Valid pulse (1 clock cycle)
		.o_RX_Byte(w_spi_data_out),   // Byte received on MISO

		// SPI Interface
		.o_SPI_Clk(o_SPI_CLK),
		.i_SPI_MISO(i_SPI_MISO),
		.o_SPI_MOSI(o_SPI_MOSI)
		);

	// State

	reg [7:0] r_pstate; // present state
	reg [7:0] r_lstate; // last state

	parameter ST_IDLE = 8'd0;

	// SYSCMD 8'b0000_xxxx (>8'd0)
	parameter ST_SYSCMD_INIT = 8'd1;
	parameter ST_SYSCMD_SEND_CMD = 8'd2;

	// WREG 8'b0001_xxxx
	parameter ST_WREG_INIT = 8'd16;
	parameter ST_WREG_SEND_REG_ADDR = 8'd17;
	parameter ST_WREG_SEND_REG_NUM = 8'd18;
	parameter ST_WREG_SEND_DATA = 8'd19;

	// RREG 8'b0010_xxxx
	parameter ST_RREG_INIT = 8'd32;
	parameter ST_RREG_SEND_REG_ADDR = 8'd33;
	parameter ST_RREG_SEND_REG_NUM = 8'd34;
	parameter ST_RREG_GET_DATA = 8'd35;

	// RDATAC 8'b0011_xxxx
	parameter ST_RDATAC_INIT = 8'd48;
	parameter ST_RDATAC_WAIT_START_SETTLING = 8'd49;
	parameter ST_RDATAC_WAIT_DRDY = 8'd50;
	parameter ST_RDATAC_WAIT_DATA_SETTLING = 8'd51;
	parameter ST_RDATAC_GET_DATA = 8'd52;

	// SDATAC 8'b0100_xxxx
	parameter ST_SDATAC_INIT = 8'd64;

	// SPI  8'b0101_xxxx
	parameter ST_SPI_SELECT = 8'd80;
	parameter ST_SPI_CLK_WAIT = 8'd81;


	/*
	Notation
	SYSCMD : System Command (start, and stop we only control by pin)
	WREG : Write Register (we only write on only one register)
	RREG : Read Register (we only read one register)
	RDATAC : Read Data Continuously
	SDATAC : Stop Read Data Continuously
	*/
	//TODO indent
	// Command byte by i_ADS1292_COMMAND , do not use i_ADS1292_REG_ADDR
	parameter CM_RESET = 8'h06;
	parameter CM_START = 8'h08;
	parameter CM_STOP = 8'h0A;
	parameter CM_RDATAC = 8'h10;
	parameter CM_SDATAC = 8'h11;

	// WREG, RREG by i_ADS1292_REG_ADDR, do not use i_ADS1292_COMMAND
	/*
	Data Sheet - ADS1292.pdf p.38
	Read First opcode byte
	First opcode byte: 001r rrrr, where r rrrr is the starting register address (Read)
	First opcode byte: 010r rrrr, where r rrrr is the starting register address (Write)
	Second opcode byte
	000n nnnn, where n nnnn is the number of registers to write(or read) – 1.
	e.g 1 register to write(or read) opcode = 8'b0000_0000
	*/
	parameter OP_READ_REG = 3'b001;
	parameter OP_WRITE_REG = 3'b010;
	parameter OP_NUM_REG = 8'b0000_0000;

	/*
	ADS1292 Control Cases: (User defined) (exclude other mode in data sheet)
														i_ADS1292_CONTROL
	0. IDLE :											3'b000
	1. System control:						3'b001 (use i_ADS1292_COMMAND, do not use i_ADS1292_REG_ADDR)
	2. Write Register:						3'b010 (use i_ADS1292_REG_ADDR, do not use i_ADS1292_COMMAND)
	3. Read Register:							3'b011 (use i_ADS1292_REG_ADDR, do not use i_ADS1292_COMMAND)
	4. Read Data Continue:				3'b100 (only works by control bits)
	5. Stop Read Data Continue : 	3'b101 (only works if controller is rdatac_mode, and works by control bits)
	*/

	parameter CB_IDLE = 3'b000;
	parameter CB_SYSCMD = 3'b001;
	parameter CB_WREG = 3'b010;
	parameter CB_RREG = 3'b011;
	parameter CB_RDATAC = 3'b100;
	parameter CB_SDATAC = 3'b101;

	// mode register
	reg r_idle_mode;
	reg r_syscmd_mode;
	reg r_wreg_mode;
	reg rreg_mode_reg;
	reg rdatac_mode_reg;
	reg sdatac_mode_reg;

	// For turn on/off mode
	always @ ( posedge i_CLK, negedge i_RSTN ) begin
		if(!i_RSTN) begin
			r_idle_mode <= 1'b0;
			r_syscmd_mode <= 1'b0;
			r_wreg_mode <= 1'b0;
			rreg_mode_reg <= 1'b0;
			rdatac_mode_reg <= 1'b0;
			sdatac_mode_reg <= 1'b0;
		end else begin
			// default
			r_idle_mode <= 1'b0;
			r_syscmd_mode <= 1'b0;
			r_wreg_mode <= 1'b0;
			rreg_mode_reg <= 1'b0;
			rdatac_mode_reg <= 1'b0;
			sdatac_mode_reg <= 1'b0;

			if (i_ADS1292_CONTROL == CB_IDLE) r_idle_mode <= 1'b1;
			else if(i_ADS1292_CONTROL == CB_SYSCMD) r_syscmd_mode <= 1'b1;
			else if(i_ADS1292_CONTROL == CB_WREG) r_wreg_mode <= 1'b1;
			else if(i_ADS1292_CONTROL == CB_RREG) rreg_mode_reg <= 1'b1;
			else if(i_ADS1292_CONTROL == CB_RDATAC) rdatac_mode_reg <= 1'b1;
			else if(i_ADS1292_CONTROL ==CB_SDATAC) sdatac_mode_reg <= 1'b1;
			else r_idle_mode <= 1'b1;
		end
	end

	// For store data
	reg [7:0] ads_command_reg; // command byte
	reg [7:0] ads_reg_addr_reg; // register addr byte
	reg [7:0] ads_data_in_reg; // register data to write
	reg [9:0] clk_counter_reg; // wait clock
	reg [3:0] data_counter_reg; // data counter for RDATAC
	reg ldrdy_reg;
	reg pdrdy_reg;
	reg [3:0] drdy_counter_reg;

	always @ ( posedge i_CLK, negedge i_RSTN ) begin
		if(!i_RSTN) begin
			// SPI interface

			// Master (SPI)(write)(transmit) - Slave (ADS1292)(receive)
			r_spi_data_in <= 8'b0; // 1byte data to ADS1292 - spi(master input)
			r_spi_data_in_valid <= 1'b0; // valid of input data byte
			// w_spi_data_in_ready

			// Master (SPI)(read)(receive) - Slave (ADS1292)(transmit)
			//w_spi_data_out;
			//w_spi_data_out_valid;

			// ADS1292_Controller Output
			o_ADS1292_DATA_OUT <= 72'b0; // read data from ADS1292 Status(24 bits) - CH1(24 bits) - CH2(24 - bits)
			o_ADS1292_RDATAC_READY <= 1'b0; // Read data continue flag
			o_ADS1292_BUSY <= 1'b0;
			o_ADS1292_FAIL <= 1'b0;

			//	ADS1292, SPI Side
			o_ADS1292_RESET <= 1'b1; // Reset activ low, don't reset even KEY[0] is pressed.
			// This is because, we already have reset switch on ads chip, however mpr doesn't have reset
			o_ADS1292_START <= 1'b0;
			o_SPI_CSN <= 1'b1; // Chip Select Negative (active low) if csn is high, then reset serial interface

			ads_command_reg <= 8'b0;
			ads_reg_addr_reg <= 8'b0;
			ads_data_in_reg <= 8'b0;
			clk_counter_reg <= 10'b0;

			data_counter_reg <= 4'b0;
			ldrdy_reg <= 1'b0;
			pdrdy_reg <= 1'b0;
			drdy_counter_reg <= 4'b0;

			// State
			r_pstate <= ST_IDLE;
		end else begin
			case (r_pstate)
				ST_IDLE:
				begin
					// SPI interface

					// Master (SPI)(write)(transmit) - Slave (ADS1292)(receive)
					r_spi_data_in <= 8'b0;
					r_spi_data_in_valid  <= 1'b0;

					// store input data
					ads_command_reg <= i_ADS1292_COMMAND; // using it command
					ads_reg_addr_reg <= i_ADS1292_REG_ADDR;
					ads_data_in_reg <= i_ADS1292_DATA_IN;
					clk_counter_reg <= 10'b0;
					data_counter_reg <= 4'b0;
					ldrdy_reg <= 1'b0;
					pdrdy_reg <= 1'b0;
					drdy_counter_reg <= 4'b0;


					o_ADS1292_RESET <= 1'b1;

					// CSN must remain low for the entire duration of the serial communication
					// After the serial communication is finished, always wait 4 CLK or more cycles before taking CSN high
					if(r_syscmd_mode) begin

						o_ADS1292_START <= 1'b0;
						o_SPI_CSN <= 1'b0;
						o_ADS1292_BUSY <= 1'b1;
						r_pstate <= ST_SYSCMD_INIT;
					end else if(r_wreg_mode) begin
						o_ADS1292_START <= 1'b0;
						o_SPI_CSN <= 1'b0;
						o_ADS1292_BUSY <= 1'b1;
						r_pstate <= ST_WREG_INIT;
					end else if(rreg_mode_reg) begin
						o_ADS1292_START <= 1'b0;
						o_SPI_CSN <= 1'b0;
						o_ADS1292_BUSY <= 1'b1;
						r_pstate <= ST_RREG_INIT;
					end else if(rdatac_mode_reg) begin
						/*
						To retrieve data from the device after RDATAC command is issued,
						make sure either the START pin is high or the START command is issued.
						*/
						o_ADS1292_START <= 1'b1;
						o_SPI_CSN <= 1'b0;
						o_ADS1292_BUSY <= 1'b1;
						r_pstate <= ST_RDATAC_INIT;
						//	if ADS1292 is not RDATAC_MODE, SDATAC is meaningless
					end else begin
						o_ADS1292_START <= 1'b0;
						o_SPI_CSN <= 1'b1;
						o_ADS1292_BUSY <= 1'b0;
						r_pstate <= ST_IDLE;
					end
				end

				ST_SYSCMD_INIT:
				begin
					/*
					START pin low to control conversions by Command
					The START pin must be set high or the START command sent to begin conversions

					when control by command, send START command and keep START pin Low(0)
					If you use start control by command, keep the start pin low untill the STOP command is issued (unused)

					when control START or STOP by pin set START pin High(1) (we choose)

					Summary:
					we only control START, STOP, RESET by ADS1292_START or ADS1292_RESET pin
					if you want to START , set ADS1292_START pin High, or want to STOP, set pin Low
					if you want to RESET, set ADS1292_RESET pin Low;
					*/
					if (ads_command_reg == CM_START) begin
						o_ADS1292_START <= 1'b1;
						r_pstate <= ST_SPI_SELECT; // skip send command
					end else if(ads_command_reg == CM_STOP) begin
						o_ADS1292_START <= 1'b0;
						r_pstate <= ST_SPI_SELECT;
					end else if(ads_command_reg == CM_RESET) begin
						o_ADS1292_RESET <= 1'b0;
						r_pstate <= ST_SPI_SELECT;
					end else begin
						r_spi_data_in <= ads_command_reg; // using it command byte
						r_spi_data_in_valid <= 1'b1; // triggering sclk condition
						r_pstate <= ST_SYSCMD_SEND_CMD;
					end

					if((r_lstate != ST_RDATAC_INIT) && (r_lstate != ST_SDATAC_INIT)) r_lstate <= ST_SYSCMD_INIT;

				end
				ST_SYSCMD_SEND_CMD:
				begin
					//TODO if sdatac command is not work, keep in mind the description below this
					/*
					there is a keep out zone of 4 t CLK cycles around the DRDY pulse
					where SDATAC command cannot be issued in.
					then wait reading process
					*/
					if(!w_spi_data_in_ready) begin
						r_spi_data_in_valid <= 1'b0;
						r_pstate <= ST_SYSCMD_SEND_CMD;
					end else begin
						if((r_lstate != ST_RDATAC_INIT) && (r_lstate != ST_SDATAC_INIT)) r_lstate <= ST_SYSCMD_SEND_CMD;
						r_pstate <= ST_SPI_SELECT;
					end
				end

				ST_WREG_INIT:
				begin
					// we write only one register
					r_spi_data_in <= {OP_WRITE_REG, ads_reg_addr_reg[4:0]};
					r_spi_data_in_valid <= 1'b1;
					r_pstate <= ST_WREG_SEND_REG_ADDR;
				end

				ST_WREG_SEND_REG_ADDR:
				begin
					if(!w_spi_data_in_ready) begin
						r_spi_data_in <= OP_NUM_REG;
						r_spi_data_in_valid <= 1'b0;
						r_pstate <= ST_WREG_SEND_REG_ADDR;
					end else begin
						r_spi_data_in <= OP_NUM_REG;
						r_spi_data_in_valid <= 1'b1;
						r_pstate <= ST_WREG_SEND_REG_NUM;
					end
				end

				ST_WREG_SEND_REG_NUM:
				begin
					if(!w_spi_data_in_ready) begin
						r_spi_data_in_valid <= 1'b0;
						r_pstate <= ST_WREG_SEND_REG_NUM;
					end else begin
						r_spi_data_in <= ads_data_in_reg;
						r_spi_data_in_valid <= 1'b1;
						r_pstate <= ST_WREG_SEND_DATA;
					end
				end

				ST_WREG_SEND_DATA:
				begin
					if(!w_spi_data_in_ready) begin
						r_spi_data_in_valid <= 1'b0;
						r_pstate <= ST_WREG_SEND_DATA;
					end else r_pstate <= ST_SPI_SELECT;
				end

				ST_RREG_INIT:
				begin
					// we only read one register
					r_spi_data_in <= {OP_READ_REG, ads_reg_addr_reg[4:0]};
					r_spi_data_in_valid <= 1'b1;
					r_pstate <= ST_RREG_SEND_REG_ADDR;
				end

				ST_RREG_SEND_REG_ADDR:
				begin
					if(!w_spi_data_in_ready) begin
						r_spi_data_in_valid <= 1'b0; // for stopping sclk when 8 bits is all sent
						r_pstate <= ST_RREG_SEND_REG_ADDR;
					end else begin
						r_spi_data_in <= OP_NUM_REG;
						r_spi_data_in_valid <= 1'b1; // active sclk
						r_pstate <= ST_RREG_SEND_REG_NUM;
					end
				end

				ST_RREG_SEND_REG_NUM:
				begin
					if(!w_spi_data_in_ready) begin
						r_spi_data_in_valid <= 1'b0; // for stopping sclk when 8 bits is all sent
						r_pstate <= ST_RREG_GET_DATA;
					end else begin
						r_spi_data_in <= 8'b0;	 // send dummy data
						r_spi_data_in_valid <= 1'b1; // active sclk for reading
						r_pstate <= ST_RREG_GET_DATA;
					end
				end

				ST_RREG_GET_DATA:
				begin
					r_spi_data_in_valid <= 1'b0;
					if(w_spi_data_out_valid) begin //TODO if this condition statement can't catch out valid signal, then delete the condition
						o_ADS1292_DATA_OUT[7:0] <= w_spi_data_out;
						r_pstate <= ST_SPI_SELECT;
					end else r_pstate <= ST_RREG_GET_DATA;
				end

				ST_RDATAC_INIT:
				begin
					ads_command_reg <= CM_RDATAC;
					o_ADS1292_RDATAC_READY <= 1'b0;
					r_lstate <= ST_RDATAC_INIT;
					r_pstate <= ST_SYSCMD_INIT;
				end

				// ads1292.pdf p31
				// TODO wait three time, and on fourth , settled data is available
				ST_RDATAC_WAIT_START_SETTLING:
				begin
					// catch drdy edges
					if(ldrdy_reg != pdrdy_reg) drdy_counter_reg <= drdy_counter_reg + 1'b1;
					ldrdy_reg <= pdrdy_reg;
					pdrdy_reg <= i_ADS1292_DRDY;
					if(drdy_counter_reg > 4'd5) begin
						drdy_counter_reg <= 4'b0;
						r_pstate <= ST_RDATAC_WAIT_DRDY;
					end
					else r_pstate <= ST_RDATAC_WAIT_START_SETTLING;
				end

				ST_RDATAC_WAIT_DRDY:
				begin
					if(i_ADS1292_DRDY) begin
						r_pstate <= ST_RDATAC_WAIT_DATA_SETTLING;
					end else begin
						if (sdatac_mode_reg) r_pstate <= ST_SDATAC_INIT;
						else r_pstate <= ST_RDATAC_WAIT_DRDY;
					end
				end

				// settling time ads1292.pdf p.31
				ST_RDATAC_WAIT_DATA_SETTLING:
				begin
					if(clk_counter_reg > 10'd500) begin
						clk_counter_reg <= 10'b0;
						o_ADS1292_RDATAC_READY <= 1'b0;
						r_spi_data_in <= 8'b0; // send dummy for reading
						r_spi_data_in_valid <= 1'b1; // active sclk for reading
						r_pstate <= ST_RDATAC_GET_DATA;
					end else begin
						clk_counter_reg <= clk_counter_reg + 1'b1;
						r_pstate <= ST_RDATAC_WAIT_DATA_SETTLING;
					end
				end



				ST_RDATAC_GET_DATA:
				begin
					r_lstate <= ST_RDATAC_GET_DATA;
					if(!w_spi_data_in_ready) begin
						r_spi_data_in_valid <= 1'b0;
						r_pstate <= ST_RDATAC_GET_DATA;
					end else begin
						if(w_spi_data_out_valid) begin
							o_ADS1292_DATA_OUT <= {o_ADS1292_DATA_OUT[63:0], w_spi_data_out};
							if(data_counter_reg > 4'd7) begin // read 8 byte, since we already triggerd one byte sclk in ST_RDATAC_WAIT_DATA_SETTLING
								data_counter_reg <= 4'b0; // reset data counter
								o_ADS1292_RDATAC_READY <= 1'b1; // data is ready
								r_pstate <= ST_SPI_SELECT;
							end else begin
								// read 72bit
								r_spi_data_in <= 8'b0;  // send dummy for reading
								r_spi_data_in_valid <= 1'b1;  // active sclk for reading
								data_counter_reg <= data_counter_reg + 1'b1;
								r_pstate <= ST_RDATAC_GET_DATA;
							end
						end else r_pstate <= ST_RDATAC_GET_DATA;
					end
				end

				ST_SDATAC_INIT:
				begin
					// there is a keep out zone of 4 t_CLK cycles around the DRDY pulse where this command cannot be issued in
					ads_command_reg <= CM_SDATAC;
					r_lstate <= ST_SDATAC_INIT;
					r_pstate <= ST_SYSCMD_INIT;
				end

				ST_SPI_SELECT:
				begin
					if(r_lstate == ST_SYSCMD_INIT) begin
						o_ADS1292_BUSY <= 1'b0;
						r_pstate <= ST_IDLE;
					end

					if(r_lstate == ST_SYSCMD_SEND_CMD) r_pstate <= ST_SPI_CLK_WAIT;

					if(r_lstate == ST_WREG_SEND_DATA) r_pstate <= ST_SPI_CLK_WAIT;

					if(r_lstate == ST_RREG_GET_DATA) r_pstate <= ST_SPI_CLK_WAIT;

					if(r_lstate == ST_RDATAC_INIT) r_pstate <= ST_RDATAC_WAIT_START_SETTLING;
					if(r_lstate == ST_RDATAC_GET_DATA) r_pstate <= ST_RDATAC_WAIT_DRDY;
					if(r_lstate == ST_SDATAC_INIT) begin
						o_ADS1292_START <= 1'b0; // turn off conversion
						o_ADS1292_RDATAC_READY <= 1'b0;
						r_pstate <= ST_SPI_CLK_WAIT;
					end
				end

				ST_SPI_CLK_WAIT:
				begin
					// After the serial communication is finished, always wait 4 CLK or more cycles before taking CSN high
					if (clk_counter_reg > 10'd4) begin
						// wait 4 CLK
						clk_counter_reg <= 10'b0;  // reset counter for ST_CLK_WAIT
						o_ADS1292_BUSY <= 1'b0;
						o_SPI_CSN <= 1'b1;
						r_pstate <= ST_IDLE;
					end else begin
						clk_counter_reg <= clk_counter_reg + 1'b1;
						r_pstate <= ST_SPI_CLK_WAIT;
					end
				end

				default:
				begin
					r_pstate <= ST_IDLE;
				end
			endcase
		end
	end
endmodule
