module ads1292_controller (
	input clk, // clock
	input rstn, //reset

	// Host Side
	output reg [71:0] ads1292_data_out, // read data from ADS1292
	input [2:0] ads1292_control, // ADS1292 Control
	input [7:0] ads1292_command, // ADS1292 SPI command
	input [7:0] ads1292_reg_addr, // ADS1292 register address
	input [7:0] ads1292_data_in, // data to write in ADS1292 register
	output reg ads1292_rdatac_ready, // In Read data continue mode,  flag that 72 bits data is ready
	output reg ads1292_busy,
	output reg ads1292_fail,  //TODO delete not  use

	//	ADS1292, SPI Side
	output spi_clk,
	input spi_miso, // SPI data form ADS - Master input Slave output (read)
	output spi_mosi, // SPI data to ADS - Master Output Slave Input (write)
	input ads1292_drdy, // Data Ready (active low)
	output reg ads1292_reset,
	output reg ads1292_start,
	output reg spi_csn // Chip Select Negative (active low)
	// When CS is taken high, the serial interface is reset, SCLK and DIN are ignored, and DOUT enters a high-impedance state
	);

	/* ADS1292 Pins (ADS192.pdf p.12 PIN ASSIGNMENTS)
	Name 	 						Terminal  		Function					   Description
	SCLK 								20 					Digital input 				SPI clock
	CSN 								18				 	Digital input 				Chip select
	DIN(spi_mosi)		    19					Digital input 				SPI data in (Master - SPI Master, Slave - ADS1292 Chip)
	DOUT(spi_miso) 			21 					Digital output 				SPI data out (Master - SPI Master, Slave - ADS1292 Chip)
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
	reg == input of SPI_Master
	wire == output of SPI_Master
	*/
	// Master (SPI)(write)(transmit) - Slave (ADS1292)(receive)
	reg [7:0] spi_data_in_reg; // 1byte data to ADS1292 - spi(master input)
	reg spi_data_in_valid_reg; // valid of input data byte
	wire spi_data_in_ready_wire; // ready flag which indicate status that Master can receive data byte to write when Master finish to write previous data sent

	// Master (SPI)(read)(receive) - Slave (ADS1292)(transmit)
	wire [7:0] spi_data_out_wire;  // 1 byte data from ADS1292 - spi(master output)
	wire spi_data_out_valid_wire; //  valid of output data byte

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
		.i_Rst_L(rstn),     // FPGA Reset (i_Rst_L - active low)
		.i_Clk(clk),       // FPGA Clock

		// TX(Master Transimit) (MOSI) Signals (write)
		.i_TX_Byte(spi_data_in_reg),        // Byte to transmit on MOSI
		.i_TX_DV(spi_data_in_valid_reg),          // Data Valid Pulse with i_TX_Byte
		.o_TX_Ready(spi_data_in_ready_wire),       // Transmit Ready for next byte, it trigger sclk

		// RX(Master Receive) (MISO) Signals (read)
		.o_RX_DV(spi_data_out_valid_wire),     // Data Valid pulse (1 clock cycle)
		.o_RX_Byte(spi_data_out_wire),   // Byte received on MISO

		// SPI Interface
		.o_SPI_Clk(spi_clk),
		.i_SPI_MISO(spi_miso),
		.o_SPI_MOSI(spi_mosi)
		);

		// State

		reg [7:0] pstate; // present state
		reg [7:0] lstate; // last state

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

		// Command byte by ads1292_command , do not use ads1292_reg_addr
		parameter CM_RESET = 8'h06;
		parameter CM_START = 8'h08;
		parameter CM_STOP = 8'h0A;
		parameter CM_RDATAC = 8'h10;
		parameter CM_SDATAC = 8'h11;

		// WREG, RREG by ads1292_reg_addr, do not use ads1292_command
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
															ads1292_control
		0. IDLE :											3'b000
		1. System control:						3'b001 (use ads1292_command, do not use ads1292_reg_addr)
		2. Write Register:						3'b010 (use ads1292_reg_addr, do not use ads1292_command)
		3. Read Register:							3'b011 (use ads1292_reg_addr, do not use ads1292_command)
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
		reg idle_mode_reg;
		reg syscmd_mode_reg;
		reg wreg_mode_reg;
		reg rreg_mode_reg;
		reg rdatac_mode_reg;
		reg sdatac_mode_reg;

		// For turn on/off mode
		always @ ( posedge clk, negedge rstn ) begin
			if(!rstn) begin
				idle_mode_reg <= 1'b0;
				syscmd_mode_reg <= 1'b0;
				wreg_mode_reg <= 1'b0;
				rreg_mode_reg <= 1'b0;
				rdatac_mode_reg <= 1'b0;
				sdatac_mode_reg <= 1'b0;
			end else begin
				// default
				idle_mode_reg <= 1'b0;
				syscmd_mode_reg <= 1'b0;
				wreg_mode_reg <= 1'b0;
				rreg_mode_reg <= 1'b0;
				rdatac_mode_reg <= 1'b0;
				sdatac_mode_reg <= 1'b0;

				if (ads1292_control == CB_IDLE) idle_mode_reg <= 1'b1;
				else if(ads1292_control == CB_SYSCMD) syscmd_mode_reg <= 1'b1;
				else if(ads1292_control == CB_WREG) wreg_mode_reg <= 1'b1;
				else if(ads1292_control == CB_RREG) rreg_mode_reg <= 1'b1;
				else if(ads1292_control == CB_RDATAC) rdatac_mode_reg <= 1'b1;
				else if(ads1292_control ==CB_SDATAC) sdatac_mode_reg <= 1'b1;
				else idle_mode_reg <= 1'b1;
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

		always @ ( posedge clk, negedge rstn ) begin
			if(!rstn) begin
				// SPI interface

				// Master (SPI)(write)(transmit) - Slave (ADS1292)(receive)
				spi_data_in_reg <= 8'b0; // 1byte data to ADS1292 - spi(master input)
				spi_data_in_valid_reg <= 1'b0; // valid of input data byte
				// spi_data_in_ready_wire

				// Master (SPI)(read)(receive) - Slave (ADS1292)(transmit)
				//spi_data_out_wire;
				//spi_data_out_valid_wire;

				// ADS1292_Controller Output
				ads1292_data_out <= 72'b0; // read data from ADS1292 Status(24 bits) - CH1(24 bits) - CH2(24 - bits)
				ads1292_rdatac_ready <= 1'b0; // Read data continue flag
				ads1292_busy <= 1'b0;
				ads1292_fail <= 1'b0;

				//	ADS1292, SPI Side
				ads1292_reset <= 1'b1; // Reset activ low, don't reset even KEY[0] is pressed.
				// This is because, we already have reset switch on ads chip, however mpr doesn't have reset
				ads1292_start <= 1'b0;
				spi_csn <= 1'b1; // Chip Select Negative (active low) if csn is high, then reset serial interface

				ads_command_reg <= 8'b0;
				ads_reg_addr_reg <= 8'b0;
				ads_data_in_reg <= 8'b0;
				clk_counter_reg <= 10'b0;

				data_counter_reg <= 4'b0;
				ldrdy_reg <= 1'b0;
				pdrdy_reg <= 1'b0;
				drdy_counter_reg <= 4'b0;

				// State
				pstate <= ST_IDLE;
			end else begin
				case (pstate)
					ST_IDLE:
					begin
						// SPI interface

						// Master (SPI)(write)(transmit) - Slave (ADS1292)(receive)
						spi_data_in_reg <= 8'b0;
						spi_data_in_valid_reg  <= 1'b0;

						// store input data
						ads_command_reg <= ads1292_command; // using it command
						ads_reg_addr_reg <= ads1292_reg_addr;
						ads_data_in_reg <= ads1292_data_in;
						clk_counter_reg <= 10'b0;
						data_counter_reg <= 4'b0;
						ldrdy_reg <= 1'b0;
						pdrdy_reg <= 1'b0;
						drdy_counter_reg <= 4'b0;


						ads1292_reset <= 1'b1;

						// CSN must remain low for the entire duration of the serial communication
						// After the serial communication is finished, always wait 4 CLK or more cycles before taking CSN high
						if(syscmd_mode_reg) begin

							ads1292_start <= 1'b0;
							spi_csn <= 1'b0;
							ads1292_busy <= 1'b1;
							pstate <= ST_SYSCMD_INIT;
						end else if(wreg_mode_reg) begin
							ads1292_start <= 1'b0;
							spi_csn <= 1'b0;
							ads1292_busy <= 1'b1;
							pstate <= ST_WREG_INIT;
						end else if(rreg_mode_reg) begin
							ads1292_start <= 1'b0;
							spi_csn <= 1'b0;
							ads1292_busy <= 1'b1;
							pstate <= ST_RREG_INIT;
						end else if(rdatac_mode_reg) begin
							/*
							To retrieve data from the device after RDATAC command is issued,
							make sure either the START pin is high or the START command is issued.
							*/
							ads1292_start <= 1'b1;
							spi_csn <= 1'b0;
							ads1292_busy <= 1'b1;
							pstate <= ST_RDATAC_INIT;
							//	if ADS1292 is not RDATAC_MODE, SDATAC is meaningless
						end else begin
							ads1292_start <= 1'b0;
							spi_csn <= 1'b1;
							ads1292_busy <= 1'b0;
							pstate <= ST_IDLE;
						end
					end

					ST_SYSCMD_INIT:
					begin
						//


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
							ads1292_start <= 1'b1;
							pstate <= ST_SPI_SELECT; // skip send command
						end else if(ads_command_reg == CM_STOP) begin
							ads1292_start <= 1'b0;
							pstate <= ST_SPI_SELECT;
						end else if(ads_command_reg == CM_RESET) begin
							ads1292_reset <= 1'b0;
							pstate <= ST_SPI_SELECT;
						end else begin
							spi_data_in_reg <= ads_command_reg; // using it command byte
							spi_data_in_valid_reg <= 1'b1; // triggering sclk condition
							pstate <= ST_SYSCMD_SEND_CMD;
						end

						if((lstate != ST_RDATAC_INIT) && (lstate != ST_SDATAC_INIT)) lstate <= ST_SYSCMD_INIT;

					end
					ST_SYSCMD_SEND_CMD:
					begin
						//TODO if sdatac command is not work, keep in mind the description below this
						/*
						there is a keep out zone of 4 t CLK cycles around the DRDY pulse
						where SDATAC command cannot be issued in.
						then wait reading process
						*/
						if(!spi_data_in_ready_wire) begin
							spi_data_in_valid_reg <= 1'b0;
							pstate <= ST_SYSCMD_SEND_CMD;
						end else begin
							if((lstate != ST_RDATAC_INIT) && (lstate != ST_SDATAC_INIT)) lstate <= ST_SYSCMD_SEND_CMD;
							pstate <= ST_SPI_SELECT;
						end
					end

					ST_WREG_INIT:
					begin
						// we write only one register
						spi_data_in_reg <= {OP_WRITE_REG, ads_reg_addr_reg[4:0]};
						spi_data_in_valid_reg <= 1'b1;
						pstate <= ST_WREG_SEND_REG_ADDR;
					end

					ST_WREG_SEND_REG_ADDR:
					begin
						if(!spi_data_in_ready_wire) begin
							spi_data_in_reg <= OP_NUM_REG;
							spi_data_in_valid_reg <= 1'b0;
							pstate <= ST_WREG_SEND_REG_ADDR;
						end else begin
							spi_data_in_reg <= OP_NUM_REG;
							spi_data_in_valid_reg <= 1'b1;
							pstate <= ST_WREG_SEND_REG_NUM;
						end
					end

					ST_WREG_SEND_REG_NUM:
					begin
						if(!spi_data_in_ready_wire) begin
							spi_data_in_valid_reg <= 1'b0;
							pstate <= ST_WREG_SEND_REG_NUM;
						end else begin
							spi_data_in_reg <= ads_data_in_reg;
							spi_data_in_valid_reg <= 1'b1;
							pstate <= ST_WREG_SEND_DATA;
						end
					end

					ST_WREG_SEND_DATA:
					begin
						if(!spi_data_in_ready_wire) begin
							spi_data_in_valid_reg <= 1'b0;
							pstate <= ST_WREG_SEND_DATA;
						end else pstate <= ST_SPI_SELECT;
					end

					ST_RREG_INIT:
					begin
						// we only read one register
						spi_data_in_reg <= {OP_READ_REG, ads_reg_addr_reg[4:0]};
						spi_data_in_valid_reg <= 1'b1;
						pstate <= ST_RREG_SEND_REG_ADDR;
					end

					ST_RREG_SEND_REG_ADDR:
					begin
						if(!spi_data_in_ready_wire) begin
							spi_data_in_valid_reg <= 1'b0; // for stopping sclk when 8 bits is all sent
							pstate <= ST_RREG_SEND_REG_ADDR;
						end else begin
							spi_data_in_reg <= OP_NUM_REG;
							spi_data_in_valid_reg <= 1'b1; // active sclk
							pstate <= ST_RREG_SEND_REG_NUM;
						end
					end

					ST_RREG_SEND_REG_NUM:
					begin
						if(!spi_data_in_ready_wire) begin
							spi_data_in_valid_reg <= 1'b0; // for stopping sclk when 8 bits is all sent
							pstate <= ST_RREG_GET_DATA;
						end else begin
							spi_data_in_reg <= 8'b0;	 // send dummy data
							spi_data_in_valid_reg <= 1'b1; // active sclk for reading
							pstate <= ST_RREG_GET_DATA;
						end
					end

					ST_RREG_GET_DATA:
					begin
						spi_data_in_valid_reg <= 1'b0;
						if(spi_data_out_valid_wire) begin //TODO if this condition statement can't catch out valid signal, then delete the condition
							ads1292_data_out[7:0] <= spi_data_out_wire;
							pstate <= ST_SPI_SELECT;
						end else pstate <= ST_RREG_GET_DATA;
					end

					ST_RDATAC_INIT:
					begin
						ads_command_reg <= CM_RDATAC;
						ads1292_rdatac_ready <= 1'b0;
						lstate <= ST_RDATAC_INIT;
						pstate <= ST_SYSCMD_INIT;
					end

					// ads1292.pdf p31
					// TODO wait three time, and on fourth , settled data is available
					ST_RDATAC_WAIT_START_SETTLING:
					begin
						if(ldrdy_reg != pdrdy_reg) drdy_counter_reg <= drdy_counter_reg + 1'b1;
						ldrdy_reg <= pdrdy_reg;
						pdrdy_reg <= ads1292_drdy;
						if(drdy_counter_reg > 4'd2) begin
							drdy_counter_reg <= 4'b0;
							pstate <= ST_RDATAC_WAIT_DRDY;
						end
						else pstate <= ST_RDATAC_WAIT_START_SETTLING;
					end

					ST_RDATAC_WAIT_DRDY:
					begin
						if(ads1292_drdy) begin
							pstate <= ST_RDATAC_WAIT_DATA_SETTLING;
						end else begin
							if (sdatac_mode_reg) pstate <= ST_SDATAC_INIT;
							else pstate <= ST_RDATAC_WAIT_DRDY;
						end
					end

					// settling time ads1292.pdf p.31
					ST_RDATAC_WAIT_DATA_SETTLING:
					begin
						if(clk_counter_reg > 10'd500) begin
							clk_counter_reg <= 10'b0;
							ads1292_rdatac_ready <= 1'b0;
							spi_data_in_reg <= 8'b0; // send dummy for reading
							spi_data_in_valid_reg <= 1'b1; // active sclk for reading
							//if(ads1292_drdy)
							pstate <= ST_RDATAC_GET_DATA;
						end else begin
							clk_counter_reg <= clk_counter_reg + 1'b1;
							pstate <= ST_RDATAC_WAIT_DATA_SETTLING;
						end
						/*
						if(ads1292_drdy) begin
							ads1292_rdatac_ready <= 1'b0;
							spi_data_in_reg <= 8'b0; // send dummy for reading
							spi_data_in_valid_reg <= 1'b1; // active sclk for reading
							pstate <= ST_RDATAC_GET_DATA;
						end else pstate <= ST_RDATAC_WAIT_DRDY_1;
						*/
					end



					ST_RDATAC_GET_DATA:
					begin
					/*
					if(!spi_data_in_ready_wire) begin
						spi_data_in_valid_reg <= 1'b0;
						pstate <= ST_RDATAC_GET_DATA;
					end else begin
					ads1292_data_out <= {ads1292_data_out[63:0], spi_data_out_wire};
					if(data_counter_reg > 4'd8) begin
						data_counter_reg <= 4'b0; // reset data counter
						ads1292_rdatac_ready <= 1'b1; // data is ready
						pstate <= ST_SPI_SELECT;
					end else begin
						// read 72bit
						spi_data_in_reg <= 8'b0;  // send dummy for reading
						spi_data_in_valid_reg <= 1'b1;  // active sclk for reading
						data_counter_reg <= data_counter_reg + 1'b1;
						pstate <= ST_RDATAC_GET_DATA;
					end
					end
					*/
						/*
						spi_data_in_valid_reg <= 1'b0;
						if(spi_data_out_valid_wire) begin
							ads1292_data_out <= {ads1292_data_out[63:0], spi_data_out_wire};
							if(data_counter_reg > 4'd8) begin
								data_counter_reg <= 4'b0; // reset data counter
								ads1292_rdatac_ready <= 1'b1; // data is ready
								pstate <= ST_SPI_SELECT;
							end else begin
								// read 72bit
								spi_data_in_reg <= 8'b0;  // send dummy for reading
								spi_data_in_valid_reg <= 1'b1;  // active sclk for reading
								data_counter_reg <= data_counter_reg + 1'b1;
								pstate <= ST_RDATAC_GET_DATA;
							end
						end else pstate <= ST_RDATAC_GET_DATA;
						*/
					/*
					spi_data_in_valid_reg <= 1'b0; // for stopping sclk when 8 bits is all sent
					ads1292_data_out <= {ads1292_data_out[63:0], spi_data_out_wire};
					if(data_counter_reg > 4'd8) begin
						data_counter_reg <= 4'b0; // reset data counter
						ads1292_rdatac_ready <= 1'b1; // data is ready
						pstate <= ST_SPI_SELECT;
					end else begin
						// read 72bit
						spi_data_in_reg <= 8'b0;  // send dummy for reading
						spi_data_in_valid_reg <= 1'b1;  // active sclk for reading
						data_counter_reg <= data_counter_reg + 1'b1;
						pstate <= ST_RDATAC_GET_DATA;
					end
					*/

						if(!spi_data_in_ready_wire) begin
							spi_data_in_valid_reg <= 1'b0;
							pstate <= ST_RDATAC_GET_DATA;
						end else begin
							if(spi_data_out_valid_wire) begin
								ads1292_data_out <= {ads1292_data_out[63:0], spi_data_out_wire};
								if(data_counter_reg > 4'd7) begin // read 8 byte, since we already triggerd one byte sclk in ST_RDATAC_WAIT_DATA_SETTLING
									data_counter_reg <= 4'b0; // reset data counter
									ads1292_rdatac_ready <= 1'b1; // data is ready
									pstate <= ST_SPI_SELECT;
								end else begin
									// read 72bit
									spi_data_in_reg <= 8'b0;  // send dummy for reading
									spi_data_in_valid_reg <= 1'b1;  // active sclk for reading
									data_counter_reg <= data_counter_reg + 1'b1;
									pstate <= ST_RDATAC_GET_DATA;
								end
							end else pstate <= ST_RDATAC_GET_DATA;
						end

						/*
						if(!spi_data_in_ready_wire) begin
							spi_data_in_valid_reg <= 1'b0;
							if(spi_data_out_valid_wire) begin
								ads1292_data_out <= {ads1292_data_out[63:0], spi_data_out_wire};
								if(data_counter_reg > 4'd8) begin
									data_counter_reg <= 4'b0; // reset data counter
									ads1292_rdatac_ready <= 1'b1; // data is ready
									pstate <= ST_SPI_SELECT;
								end else begin
									// read 72bit
									spi_data_in_reg <= 8'b0;  // send dummy for reading
									spi_data_in_valid_reg <= 1'b1;  // active sclk for reading
									data_counter_reg <= data_counter_reg + 1'b1;
									pstate <= ST_RDATAC_GET_DATA;
								end
							end else pstate <= ST_RDATAC_GET_DATA;
						end else begin
							ads1292_data_out <= {ads1292_data_out[63:0], spi_data_out_wire};
							if(data_counter_reg > 4'd8) begin
								data_counter_reg <= 4'b0; // reset data counter
								ads1292_rdatac_ready <= 1'b1; // data is ready
								pstate <= ST_SPI_SELECT;
							end else begin
								// read 72bit
								spi_data_in_reg <= 8'b0;  // send dummy for reading
								spi_data_in_valid_reg <= 1'b1;  // active sclk for reading
								data_counter_reg <= data_counter_reg + 1'b1;
								pstate <= ST_RDATAC_GET_DATA;
							end
						end
						*/
						/*
						spi_data_in_valid_reg <= 1'b0; // for stopping sclk when 8 bits is all sent
						if(spi_data_out_valid_wire) begin
							ads1292_data_out <= {ads1292_data_out[63:0], spi_data_out_wire};
							if(data_counter_reg > 4'd8) begin
								data_counter_reg <= 4'b0; // reset data counter
								ads1292_rdatac_ready <= 1'b1; // data is ready
								pstate <= ST_SPI_SELECT;
							end else begin
								// read 72bit
								spi_data_in_reg <= 8'b0;  // send dummy for reading
								spi_data_in_valid_reg <= 1'b1;  // active sclk for reading
								data_counter_reg <= data_counter_reg + 1'b1;
								pstate <= ST_RDATAC_GET_DATA;
							end
						end else pstate <= ST_RDATAC_GET_DATA;
						*/

					end

					ST_SDATAC_INIT:
					begin
						// there is a keep out zone of 4 t CLK cycles around the DRDY pulse where this command cannot be issued in
						ads_command_reg <= CM_SDATAC;
						lstate <= ST_SDATAC_INIT;
						pstate <= ST_SYSCMD_INIT;
					end

					ST_SPI_SELECT:
					begin
					//	pstate <= ST_SPI_CLK_WAIT; // default
						if(lstate == ST_SYSCMD_INIT) begin
							ads1292_busy <= 1'b0;
							pstate <= ST_IDLE;
						end

						if(lstate == ST_SYSCMD_SEND_CMD) pstate <= ST_SPI_CLK_WAIT;

						if(lstate == ST_WREG_SEND_DATA) pstate <= ST_SPI_CLK_WAIT;

						if(lstate == ST_RREG_GET_DATA) pstate <= ST_SPI_CLK_WAIT;

						if(lstate == ST_RDATAC_INIT) pstate <= ST_RDATAC_WAIT_START_SETTLING;
						if(lstate == ST_RDATAC_GET_DATA) pstate <= ST_RDATAC_WAIT_DRDY;
						if(lstate == ST_SDATAC_INIT) begin
							ads1292_start <= 1'b0; // turn off conversion
							ads1292_rdatac_ready <= 1'b0;
							pstate <= ST_SPI_CLK_WAIT;
						end
					end

					ST_SPI_CLK_WAIT:
					begin
						// After the serial communication is finished, always wait 4 CLK or more cycles before taking CSN high
						if (clk_counter_reg > 10'd4) begin
							// wait 8 CLK
							clk_counter_reg <= 10'b0;  // reset counter for ST_CLK_WAIT
							ads1292_busy <= 1'b0;
							spi_csn <= 1'b1;
							pstate <= ST_IDLE;
						end else begin
							clk_counter_reg <= clk_counter_reg + 1'b1;
							pstate <= ST_SPI_CLK_WAIT;
						end
					end

					default:
					begin
						pstate <= ST_IDLE;
					end
				endcase
			end
		end
endmodule
