/** Top module **/
module khu_sensor_top(
	// System I/O
	input wire CLOCK_50M,
	input KEY_0,
	input SW_0, // for SRAM address (manual test)
	output [17:0] LEDR,
	output [7:0] LEDG,

	// RS232 UART
	input wire UART_RXD,
	output wire UART_TXD,

	output GPIO_0, // GPIO[0] == CLOCK_5M

	// DUT IO: for MPR121 (I2C)
	input wire MPR121_IRQ, //GPIO[7]
	inout wire MPR121_SCL, // GPIO[8]
	inout wire MPR121_SDA, // GPIO[9]

	// DUT IO: for ADS1292 (SPI)
	output ADS1292_SCLK, // GPIO[26]
	input ADS1292_MISO,  // GPIO[27]
	output ADS1292_MOSI,  // GPIO[28]
	input ADS1292_DRDY,  // GPIO[29]
	output ADS1292_RESET,  // GPIO[30]
	output ADS1292_START,  // GPIO[31]
	output ADS1292_CSN  // GPIO[32]
);

	// PLL
	wire CLOCK_5M, CLOCK_25M, CLOCK_100M;
	wire w_core_rstn;
	my_pll khu_pll(
		.areset		(!rstn_btn),
		.inclk0		(CLOCK_50M),
		.c0				(CLOCK_5M),
		.c2				(CLOCK_25M),
		.c3       (CLOCK_100M),
		.locked		(w_core_rstn)
	);

	// System I/O

	wire rstn_btn;
	assign rstn_btn = KEY_0;

	wire uart_addr_wire;
	wire uart_chip_select_wire;
	wire [2:0] uart_byteenable_wire;
	wire uart_read_wire;
	wire uart_write_wire;
	wire [31:0] uart_writedata_wire;
	wire [31:0] uart_readdata_wire;
	wire uart_irq_wire;
	/*
	rs232_uart rs232_uart(
		.address(uart_addr_wire),    // avalon_rs232_slave.address
		.chipselect(uart_chip_select_wire), //                   .chipselect
		.byteenable(uart_byteenable_wire), //                   .byteenable
		.read(uart_read_wire),       //                   .read
		.write(uart_write_wire),      //                   .write
		.writedata(uart_writedata_wire),  //                   .writedata
		.readdata(uart_readdata_wire),   //                   .readdata
		.clk(CLOCK_50M),        //                clk.clk
		.UART_RXD(UART_RXD),   // external_interface.RXD
		.UART_TXD(UART_TXD),   //                   .TXD
		.irq(uart_irq_wire),        //          interrupt.irq
		.reset(~rst_btn)       //              reset.reset
		);
		*/

	// ===============================================================================================================================
	// Sensor_Core

  wire [11:0] w_mpr121_touch_status_out;
	assign LEDR[11:0] = w_mpr121_touch_status_out;

	wire w_mpr121_error;
	assign LEDR[16] = w_mpr121_error;

	wire w_chip_set;
	wire w_run;
	wire w_run_set;
	assign LEDG[0] = w_chip_set;
	assign w_run = SW_0;
	assign LEDG[1] = w_run_set;

	wire w_core_busy;
	assign LEDR[17] = w_core_busy;

	sensor_core sensor_core(
		// MPR121
		.i_MPR121_DATA_OUT(w_mpr121_data_out),  // received data from MPR121 (read data)
		.o_MPR121_REG_ADDR(w_mpr121_reg_addr),   // transmitted register address to MPR121 (write data)
		.o_MPR121_DATA_IN(w_mpr121_data_in),  // transmitted data to MPR121 (write data)
		.o_MPR121_WRITE_ENABLE(w_mpr121_write_enable),
		.o_MPR121_READ_ENABLE(w_mpr121_read_enable),
		.i_MPR121_BUSY(w_mpr121_busy),
		.i_MPR121_FAIL(w_mpr121_fail),

		// System connection with MPR121 data
		.o_MPR121_TOUCH_STATUS(w_mpr121_touch_status_out),
		.o_MPR121_ERROR(w_mpr121_error),

		// ADS1292
		/*
		.ads1292_data_out_in(ads1292_data_out_wire), // read data from ADS1292
		.ads1292_control_out(ads1292_control_wire), // ADS1292 Control
		.ads1292_command_out(ads1292_command_wire), // ADS1292 SPI command
		.ads1292_reg_addr_out(ads1292_reg_addr_wire), // ADS1292 register address
		.ads1292_data_in_out(ads1292_data_in_wire), // data to write in ADS1292 register
		.ads1292_rdatac_ready_in(ads1292_rdatac_ready), // In Read data continue mode,  flag that 72 bits data is ready
		.ads1292_busy_in(ads1292_busy_wire),
		.ads1292_fail_in(ads1292_fail_wire),

		.ads1292_drdy_in(ADS1292_DRDY_N),
		*/
		// System I/O
		.o_CHIP_SET(w_chip_set),
		.i_RUN(w_run),
		.o_RUN_SET(w_run_set),
		.o_CORE_BUSY(w_core_busy),
		.i_CLK(CLOCK_25M),
		.i_RST(!w_core_rstn)
	);

	// ===============================================================================================================================
	// MPR121 Controller

	wire [7:0] w_mpr121_data_out;
	wire [7:0] w_mpr121_reg_addr;
	wire [7:0] w_mpr121_data_in;
	wire w_mpr121_write_enable;
	wire w_mpr121_read_enable;
	wire w_mpr121_busy;
	wire w_mpr121_fail;

	/*
	GPIO[0] is for realeasing MPR121 Bus stuck.
	if MPR121_SCL stuck in low, connect MPR121_SCL to GPIO[0] (force to pull up scl)
	*/
	assign GPIO_0 = CLOCK_5M;

	mpr121_controller mpr121_controller(
		.clk(CLOCK_50M), // clock
		.rstn(w_core_rstn), // reset

		// Host Side
		.mpr121_data_out(w_mpr121_data_out),
		.mpr121_reg_addr(w_mpr121_reg_addr),
		.mpr121_data_in(w_mpr121_data_in),
		.mpr121_write_enable(w_mpr121_write_enable),
		.mpr121_read_enable(w_mpr121_read_enable),
		.mpr121_busy(w_mpr121_busy),
		.mpr121_fail(w_mpr121_fail),

		//	I2C Side
		.i2c_scl(MPR121_SCL),
		.i2c_sda(MPR121_SDA)
		);

	// ===============================================================================================================================
	// ADS1292 Controller
	wire [71:0] ads1292_data_out_wire;
	wire [2:0] ads1292_control_wire;
	wire [7:0] ads1292_command_wire;
	wire [7:0] ads1292_reg_addr_wire;
	wire [7:0] ads1292_data_in_wire;
	wire ads1292_rdatac_ready;
	wire ads1292_busy_wire;
	wire ads1292_fail_wire;
	wire ADS1292_DRDY_N;
	assign ADS1292_DRDY_N = ~ADS1292_DRDY;
	//wire ADS1292_SCLK_N;
	//assign ADS1292_SCLK = ~ADS1292_SCLK_N
	ads1292_controller ads1292_controller(
		.clk(CLOCK_50M), // clock
		.rstn(w_core_rstn), //reset

		// Host Side
		.ads1292_data_out(ads1292_data_out_wire), // read data from ADS1292
		.ads1292_control(ads1292_control_wire), // ADS1292 Control
		.ads1292_command(ads1292_command_wire), // ADS1292 SPI command
		.ads1292_reg_addr(ads1292_reg_addr_wire), // ADS1292 register address
		.ads1292_data_in(ads1292_data_in_wire), // data to write in ADS1292 register
		.ads1292_rdatac_ready(ads1292_rdatac_ready), // In Read data continue mode,  flag that 72 bits data is ready
		.ads1292_busy(ads1292_busy_wire),
		.ads1292_fail(ads1292_fail_wire),

		//	ADS1292, SPI Side
		.spi_clk(ADS1292_SCLK),
		.spi_miso(ADS1292_MISO), // SPI data form ADS - Master input Slave output (read)
		.spi_mosi(ADS1292_MOSI), // SPI data to ADS - Master Output Slave Input (write)
		.ads1292_drdy(ADS1292_DRDY_N), // Data Ready (active low)
		.ads1292_reset(ADS1292_RESET),
		.ads1292_start(ADS1292_START),
		.spi_csn(ADS1292_CSN), // Chip Select Negative (active low)
		// When CS is taken high, the serial interface is reset, SCLK and DIN are ignored, and DOUT enters a high-impedance state
		);
endmodule
