module mpr121_controller (
	input clk, // clock
	input rstn, // reset

	// Host Side
	output reg [7:0] mpr121_data_out, // read data from MPR121
	input [7:0] mpr121_reg_addr, // MPR121 register address
	input [7:0] mpr121_data_in, // data to write in MPR121 register
	input mpr121_write_enable, // write enable
	input mpr121_read_enable, // read enable
	output reg mpr121_busy,
	output reg mpr121_fail,

	//	I2C Side
	inout wire i2c_scl,
	inout wire i2c_sda
	);
	/* MPR121 Pins

	//========== Power Pins ==========//
	Vin - this is the power pin. Since the chip uses 3 VDC, we have included a voltage regulator on board that will
	take 3-5VDC and safely convert it down. To power the board, give it the same power as the logic level of your
	microcontroller - e.g. for a 5V micro like Arduino, use 5V

	3Vo - this is the 3.3V output from the voltage regulator, you can grab up to 100mA from this if you like

	GND - common ground for power and logic

	//========== I2C Pins ==========//
	SCL - I2C clock pin, connect to your microcontrollers I2C clock line.
	SDA - I2C data pin, connect to your microcontrollers I2C data line.

	//========== others ==========//
	ADDR - the I2C address select pin. By default this is pulled down to ground with a 100K resistor, for an I2C
	address of 0x5A. You can also connect it to the 3Vo pin for an address of 0x5B, the SDA pin for 0x5C or SCL for
	address 0x5D (Unused)

	IRQ - the Interrupt Request signal pin. It is pulled up to 3.3V on the breakout and when the sensor chip detects a
	change in the touch sense switches, the pin goes to 0V until the data is read over i2c (Unused)

	Slave address
	we can assign 4 I2C addresses to the MPR121 depending on the connection of the ADDR pin
	MPR121 Slave address (AN3895.pdf - p.3 )
	ADDR Pin Connection      I2C Address (7bit) (MPR121 slave's address)
	VSS (not connected) 							                0x5A
	3Vo (tied to 3V)                     							0x5B (we choose)
	SDA (tied to SDA)                     						0x5C
	SCL (tied to SCL)                     						0x5D
	*/
	// we will use VDD for MPR121 Slave addresss (There is no matter which one we assig)
	parameter I2C_MPR121_ADDR = 7'b1011_011; // ADDR pin con-nnectino 3Vo - 0x5B

	//I2C instantiation
  //CHANGED side to connection
  //I2C connection
  /*
  I2C protocol (On the I2C_master file, there is more precise description of operation)
  - I2C(Inter-Integrated Circuit) is a bus with a clock(SCL : Serial Clock Line) and data(SDA : Serial Data Line) lines with 7-bit addressing
  bus is formed with two nodes that operate different roles.
  Master node – node that generates the clock and initiates communication with slaves.
  Slave node – node that receives the clock and responds when addressed by the master.

  The bus is a multi-master bus which means that any number of master noedes can be present.

  There is four modes of operation for a given bus device
  master – master node is sending data to a slave,
  master receive – master node is receiving data from a slave,
  slave transmit – slave node is sending data to the master,
  slave receive – slave node is receiving data from the master.

  In addition to 0 and 1 data bits, the I2C bus allows special START and STOP signals
  which act as message delimiters and are distinct from the data bits. (This is in contrast to the start bits and stop bits used in asynchronous serial communication, which are distinguished from data bits only by their timing.)

  The master is initially in master transmit mode by sending a START followed by the 7-bit address of the slave it wishes to communicate with,
  which is finally followed by a single bit representing whether it wishes to write (0) to or read (1) from the slave.

  If the slave exists on the bus then it will respond with an ACK bit
  (active low for acknowledged : 0000110_2 or 0x06_16 -> indicate that it is operating normally)
  for that address.
  When the master is transmitting to the MPR121, the MPR121 generates the acknowledge bit,
  since the MPR121 is the recipient.
  When the MPR121 is transmitting to the master, the master generates the acknowledge bit,
  since the master is the recipient.

  masters                    slaves (complementary mode of master)
  transmit write(0)          receive  --slave generate ACK bits on 9th clock pulse
  receive  read(1)           transmit --master generate ACK bits on 9th clock pulse

  // master

  transmit mode (write (0))
  If the master wishes to write to the slave,
  then it repeatedly sends a byte with the slave sending an ACK bit.
  (In this situation, the master is in master transmit mode, and the slave is in slave receive mode.)

  // master receive mode (read (1))
  If the master wishes to read from the slave,
  then it repeatedly receives a byte from the slave, the master sending an ACK bit after every byte except the last one.
  (In this situation, the master is in master receive mode, and the slave is in slave transmit mode.)

  start condition

  SCL               SDA
  ------ (High)     ----
                        |______     (High to Low)

  stop condition

  SCL               SDA
  ------ (High)          ------
                    ____|            (
                    Low to High)

  All other

  SCL               SDA
           (Low)    ----- ------ 1
  _______            ____X______ 0    (High to Low, Low to High)

  The address and the data bytes are sent MSB first.

  In this case MPR121(chip) to be slave, and need to make I2C master module. (Source/I2C_master)

  Hierarchy
  MPR121_controller
          |
          |
  I2C_master(master)
          |
          |
  MPR121_chip(slave)

	Message format for writing or reading the MPR121
	Configuration of Serial data MPR121 received (Write data to the MPR121)

	S(Start or Stop bit) - Slave Address(7bit)(in our case is 1011011_2) W(Write(0)) - ACK - Command byte(8bit)(register of the MPR121 eg.0x00 --> ELE0 - ELE7 Touch Status) - ACK - Data byte(8bit)(data to write)

	Configuration of Serial data Master received (Read data from the MPR121)
	S(Start or Stop bit) - Slave Address(7bit)(in our case is 1011011_2) W(Write(0)) - ACK - Command byte(8bit)(register of the MPR121 eg.0x00 --> ELE0 - ELE7 Touch Status) - ACK - S(Start or Stop bit) - Slave Address(7bit)(in our case is 1011011_2) R(Read(1)) - ACK - Data byte(8bit)(data to write)

	Write mode of Slave Address in our case
	I2C_MPR121_addr_Write -> 8'b1011_0110

	Read mode of Slave Address in our case
	I2C_MPR121_addr_Read -> 8'b1011_0111
	*/


	/*
		reg == input of I2C_Master
		wire == output of I2C_Master
	*/
	// i2c cmd
	reg i2c_rst_reg; // i2c reset
	reg i2c_start_reg; // i2c start condition
	reg i2c_read_reg; // i2c read bit (1)
	reg i2c_write_reg; // i2c write bit (0)
	reg i2c_write_multiple_reg; // write successively
	reg i2c_stop_reg; // i2c stop condition
	reg i2c_cmd_valid_reg; // valid of command byte
	wire i2c_cmd_ready_wire; // ready to operate command

	// Master (I2C)(write)(transmit) - Slave (MPR121)(receive)
	reg [7:0] i2c_data_in_reg; // 1byte data to MPR121 - i2c(master input)
	reg i2c_data_in_valid_reg; // valid of input data byte
	wire i2c_data_in_ready_wire; // ready flag which indicate status that Master can receive data byte to write when Master finish to write previous data sent
	reg i2c_data_in_last_reg; // flag of last data to write (using for write multiple)

	// Master (I2C)(read)(receive) - Slave (MPR121)(transmit)
	wire [7:0] i2c_data_out_wire; // 1 byte data from MPR121 - i2c(master output)
	wire i2c_data_out_valid_wire; //  valid of output data byte
	reg i2c_data_out_ready_reg;  // ready flag which indicate status that Slave finish to read 1 byte data
	wire i2c_data_out_last_wire; //  flag of last data to read (In general, we don't know how much long data is )
	wire i2c_missed_ack_wire; //  check missed ack (nak)?

  // data to store
  reg [7:0] i2c_reg_addr_reg; // mpr121's register address
  reg [7:0] i2c_reg_data_in_reg; // data to write in register

	/*
	I2C interface
	Example of interfacing with tristate pins:
	(this will work for any tristate bus)
	assign scl_i = scl_pin;
	assign scl_pin = scl_t ? 1'bz : scl_o;
	assign sda_i = sda_pin;
	assign sda_pin = sda_t ? 1'bz : sda_o;
	*/
	wire scl_in, scl_out, scl_out_enable;
	wire sda_in, sda_out, sda_out_enable;

	assign i2c_scl = scl_out_enable ? 1'bz : scl_out;
	assign i2c_sda = sda_out_enable ? 1'bz : sda_out;
	assign sda_in = i2c_sda;  //i2c_sda -> inout wire
	assign scl_in = i2c_scl; //i2c_scl -> inout wire

	i2c_master i2c_master(
    .clk(clk),
    .rst(i2c_rst_reg),

    // Host interface
    .cmd_address(I2C_MPR121_ADDR), // MPR121 (slave) address
    .cmd_start(i2c_start_reg),
    .cmd_read(i2c_read_reg),
    .cmd_write(i2c_write_reg),
    .cmd_write_multiple(i2c_write_multiple_reg),
    .cmd_stop(i2c_stop_reg),
    .cmd_valid(i2c_cmd_valid_reg),
    .cmd_ready(i2c_cmd_ready_wire),

		// Master (I2C)(write)(transmit) - Slave (MPR121)(receive)
    .data_in(i2c_data_in_reg),
    .data_in_valid(i2c_data_in_valid_reg),
    .data_in_ready(i2c_data_in_ready_wire),
    .data_in_last(i2c_data_in_last_reg),

		// Master (I2C)(read)(receive) - Slave (MPR121)(transmit)
    .data_out(i2c_data_out_wire),
    .data_out_valid(i2c_data_out_valid_wire),
    .data_out_ready(i2c_data_out_ready_reg),
    .data_out_last(i2c_data_out_last_wire),


  	// I2C interface
    .scl_i(scl_in),
    .scl_o(scl_out),
    .scl_t(scl_out_enable),
    .sda_i(sda_in),
    .sda_o(sda_out),
    .sda_t(sda_out_enable),

		// Status
    .busy(),
    .bus_control(),
    .bus_active(),
    .missed_ack(i2c_missed_ack_wire),


    // Configuration
    .prescale(16'd125),
    .stop_on_idle(1'b1) // stop_on_idle automatically issue stop when command input is not valid
		);

	/*
	Common I²C bus speeds are the 100 kbit/s standard mode
	prescale
	set prescale to 1/4 of the minimum clock period in units
	of input clk cycles (prescale = Fclk / (FI2Cclk * 4))
	(Basic frequency of altera board)50M/(400k*4) = 125
	*/

	// State machine

	reg [7:0] pstate; // state machine

	parameter ST_IDLE	= 8'd0;

	// Write Status 8'b0000_xxxx
	parameter ST_WRITE_INIT = 8'd1;
	parameter ST_WRITE_START = 8'd2;
	parameter ST_WRITE_SEND_REG_ADDR = 8'd3;
	parameter ST_WRITE_REG_ADDR_WAIT = 8'd4;
	parameter ST_WRITE_SEND_DATA = 8'd5;
	parameter ST_WRITE_SEND_DATA_1 = 8'd6;
	parameter ST_WRITE_SEND_DATA_2 = 8'd7;
	parameter ST_WRITE_STOP = 8'd8;
	parameter ST_WRITE_FINISH = 8'd9;

	// Read Status 8'b0001_xxxx
	parameter ST_READ_INIT = 8'd17;
	parameter ST_READ_START = 8'd18;
	parameter ST_READ_SEND_REG_ADDR = 8'd19;
	parameter ST_READ_REG_ADDR_WAIT	= 8'd20;
	parameter ST_READ_REAPEAT_START = 8'd21;
	parameter ST_READ_START_2 = 8'd22;
	parameter ST_READ_GET_DATA = 8'd23;
	parameter ST_READ_FINISH	= 8'd24;

	reg [31:0] wait_timeout_reg;
	always@(posedge clk or negedge rstn) begin
		if(!rstn) begin

				// Host interface
				i2c_start_reg <= 1'b0;
				i2c_read_reg <= 1'b0;
				i2c_write_reg <= 1'b0;
				i2c_write_multiple_reg <= 1'b0;
				i2c_stop_reg <= 1'b0;
				i2c_cmd_valid_reg <= 1'b0;
				//i2c_cmd_ready_wire

				// Master (I2C)(write)(transmit) - Slave (MPR121)(receive)
				i2c_data_in_reg <= 8'b0;
				i2c_data_in_valid_reg <= 1'b0;
				//i2c_data_in_ready_wire
				i2c_data_in_last_reg <= 1'b0;

				// Master (I2C)(read)(receive) - Slave (MPR121)(transmit)
	      // i2c_data_out
	      // i2c_data_out_valid
	      i2c_data_out_ready_reg <= 1'b0;
	      // i2c_data_out_last

				// MPR121_Controller Output
				mpr121_data_out <= 8'b0;
				mpr121_busy <= 1'b0;
				mpr121_fail <= 1'b0;

				wait_timeout_reg <= 32'b0;

				// State
				pstate <=	ST_IDLE;
		end
		else begin
			case (pstate)
				ST_IDLE: begin
					// Host interface
					i2c_start_reg <= 1'b0;
					i2c_read_reg <= 1'b0;
					i2c_write_reg <= 1'b0;
					i2c_write_multiple_reg <= 1'b0;
					i2c_stop_reg <= 1'b0;
					i2c_cmd_valid_reg <= 1'b0;

					// Master (I2C)(write)(transmit) - Slave (MPR121)(receive)
					i2c_data_in_reg <= 8'b0;
					i2c_data_in_valid_reg <= 1'b0;
					i2c_data_in_last_reg <= 1'b0;

					// Master (I2C)(read)(receive)(input) - Slave (MPR121)(transmit)(output)
					i2c_data_out_ready_reg <= 1'b0;

					// store input data
					i2c_reg_addr_reg <= mpr121_reg_addr;
					i2c_reg_data_in_reg <= mpr121_data_in;

					// MPR121_Controller Output
					mpr121_busy <= 1'b0;
					mpr121_fail <= 1'b0;

					wait_timeout_reg <= 32'b0;

					if (mpr121_write_enable) begin
						mpr121_busy <= 1'b1;
						pstate <= ST_WRITE_INIT;
					end else if (mpr121_read_enable) begin
						mpr121_busy <= 1'b1;
						pstate <= ST_READ_INIT;
					end
					else begin
						pstate <= ST_IDLE;
					end
				end

				ST_WRITE_INIT:
				begin
				  // S(Start or Stop bit)- Slave Address(7bit)(in our case is 1011011_2) W(Write(0))
					i2c_start_reg <= 1'b1;
					i2c_read_reg <= 1'b0;
					i2c_write_reg <= 1'b0;
					i2c_write_multiple_reg <= 1'b1;  // for reg addr, and reg data
					i2c_stop_reg <= 1'b0;
					i2c_cmd_valid_reg <= 1'b0;
					i2c_data_in_valid_reg <= 1'b0;
					i2c_data_in_last_reg <= 1'b0;
					i2c_data_out_ready_reg <= 1'b0;
					pstate <= ST_WRITE_START;
				end

				ST_WRITE_START:
				begin
					i2c_cmd_valid_reg <= 1'b1; // send cmd is valid to i2c master
					pstate <= ST_WRITE_SEND_REG_ADDR;
				end

				ST_WRITE_SEND_REG_ADDR:
				begin
					if (i2c_data_in_ready_wire) begin // wait for the slave address send
						// if master wrote slave address, then write reg addr
						i2c_data_in_reg <= i2c_reg_addr_reg; // MPR121 register address
						i2c_data_in_valid_reg <= 1'b1; // if (data_in_ready & data_in_valid) i2c_master
						pstate <= ST_WRITE_REG_ADDR_WAIT;
					end else pstate <= ST_WRITE_SEND_REG_ADDR;
				end

				ST_WRITE_REG_ADDR_WAIT:
				begin
					if (!i2c_data_in_ready_wire) begin // reg_addr sending
						i2c_data_in_valid_reg <= 1'b0; // release valid set for write reg addr again
						pstate <= ST_WRITE_SEND_DATA;
					end else pstate <= ST_WRITE_REG_ADDR_WAIT;
				end

				ST_WRITE_SEND_DATA:
				begin
					if (i2c_data_in_ready_wire) begin // wait for the reg addr send
						// if master wrote reg addr, then write reg data
						i2c_data_in_reg <= i2c_reg_data_in_reg;
						i2c_data_in_valid_reg <= 1'b1;
						i2c_data_in_last_reg <= 1'b1; // send this data is last to write
						pstate <= ST_WRITE_SEND_DATA_1;
					end else pstate <= ST_WRITE_SEND_DATA;
				end

				ST_WRITE_STOP:
				begin
					i2c_cmd_valid_reg <= 1'b0;
					pstate <= ST_WRITE_FINISH;
				end

				ST_WRITE_FINISH:
				begin
					/*
					mpr121_busy <= 1'b0;
					if (!mpr121_write_enable) pstate <= ST_IDLE;
					else pstate <= ST_WRITE_FINISH;
					*/

					if(wait_timeout_reg > 32'd10000) begin
						wait_timeout_reg <= 32'b0;
						mpr121_busy <= 1'b0;
						if (!mpr121_write_enable) pstate <= ST_IDLE;
						else pstate <= ST_WRITE_FINISH;
					end else begin
						wait_timeout_reg <= wait_timeout_reg + 1'b1;
						pstate <= ST_WRITE_FINISH;
					end

				end

				ST_READ_INIT:
				begin
					// S(Start or Stop bit)- Slave Address(7bit)(in our case is 1011011_2) W(Write(0))
					i2c_start_reg <= 1'b1;
					i2c_read_reg <= 1'b0;
					i2c_write_reg <= 1'b1; // only write reg addr
					i2c_write_multiple_reg <= 1'b0;
					i2c_stop_reg <= 1'b0;
					i2c_cmd_valid_reg <= 1'b0;
					i2c_data_in_valid_reg <= 1'b0;
					i2c_data_in_last_reg <= 1'b1;
					i2c_data_out_ready_reg <= 1'b0;
					pstate <= ST_READ_START;
				end

				ST_READ_START:
				begin
					i2c_cmd_valid_reg <= 1'b1; // send cmd is valid to i2c master
					pstate <= ST_READ_SEND_REG_ADDR;
				end

				ST_READ_SEND_REG_ADDR:
				begin
					if (i2c_data_in_ready_wire) begin // wait for the slave address send
						// if master wrote slave address, then write reg addr
						i2c_data_in_reg <= i2c_reg_addr_reg; // MPR121 register address
						i2c_data_in_valid_reg <= 1'b1; // if (data_in_ready & data_in_valid) i2c_master
						pstate <= ST_READ_REG_ADDR_WAIT;
					end else pstate <= ST_READ_SEND_REG_ADDR;
				end

				ST_READ_REG_ADDR_WAIT:
				begin
					if (!i2c_data_in_ready_wire) begin // reg_addr sending
						i2c_data_in_valid_reg <= 1'b0; // release valid set for write reg addr again
						pstate <= ST_READ_REAPEAT_START;
					end else pstate <= ST_READ_REG_ADDR_WAIT;
				end

				ST_READ_REAPEAT_START:
				begin
					i2c_start_reg <= 1'b1; // repeated start signal
					i2c_read_reg <= 1'b1; // turn on , master write again slave address
					i2c_write_reg <= 1'b0;
					i2c_write_multiple_reg<= 1'b0;
					i2c_stop_reg<= 1'b0;
					i2c_cmd_valid_reg<= 1'b0;
					i2c_data_in_valid_reg<= 0;
					i2c_data_in_last_reg<= 1'b0;
					i2c_data_out_ready_reg<= 1'b0;
					i2c_data_in_reg <= 8'b0;
					pstate <= ST_READ_START_2;
				end

				ST_READ_START_2:
				begin
					i2c_cmd_valid_reg <= 1'b1; // send cmd is valid to i2c master
					pstate <= ST_READ_GET_DATA;
				end

				ST_READ_GET_DATA:
				begin
					if (i2c_data_out_valid_wire) begin // wait data
						i2c_cmd_valid_reg <= 1'b0;
						i2c_stop_reg <= 1'b1;
						i2c_data_out_ready_reg = 1'b1;
						mpr121_data_out <= i2c_data_out_wire;
						pstate <= ST_READ_FINISH;
					end else pstate <= ST_READ_GET_DATA;
				end

				ST_READ_FINISH:
				begin

					if(wait_timeout_reg > 32'd10000) begin
						wait_timeout_reg <= 32'b0;
						mpr121_busy <= 1'b0;
						if (!mpr121_read_enable) pstate <= ST_IDLE;
						else pstate <= ST_READ_FINISH;
					end else begin
						wait_timeout_reg <= wait_timeout_reg + 1'b1;
						pstate <= ST_READ_FINISH;
					end

					/*
					mpr121_busy <= 1'b0;
					if (!mpr121_read_enable) pstate <= ST_IDLE;
					else pstate <= ST_READ_FINISH;
					*/
				end

				default:
				begin
					pstate <= ST_IDLE;
				end
			endcase
		end
	end
endmodule
