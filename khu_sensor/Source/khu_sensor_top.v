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
	wire CLOCK_25M, CLOCK_5M, CLOCK_100M;
	wire core_reset_n;
	my_pll khu_pll(
		.areset		(!rst_btn),
		.inclk0		(CLOCK_50M),
		.c0				(CLOCK_5M),
		.c2				(CLOCK_25M),
		.c3       (CLOCK_100M),
		.locked		(core_reset_n)
	);

	// System I/O

	wire rst_btn;
	assign rst_btn = KEY_0;

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

  wire [11:0] mpr121_touch_status_out;
	wire mpr121_is_error;
	assign LEDR[17] = mpr121_is_error;
	assign LEDR[11:0] = mpr121_touch_status_out[11:0];
	wire chip_set_wire;
	wire run_wire;
	wire run_set_wire;
	assign LEDG[0] = chip_set_wire;
	assign run_wire = SW_0;
	assign LEDG[1] = run_set_wire;


	sensor_core sensor_core(
		// UART
		.uart_addr_out(uart_addr_wire),
		.uart_chip_select_out(uart_chip_select_wire),
		.uart_byteenable_out(uart_byteenable_wire),
		.uart_read_out(uart_read_wire),
		.uart_write_out(uart_write_wire),
		.uart_writedata_out(uart_writedata_wire[7:0]), // transmitted data to PC
		.uart_readdata_in(uart_readdata_wire[7:0]), // received data from PC
		.uart_irq_in(uart_irq_wire),

		// MPR121
		.mpr121_data_out_in(mpr121_data_out_wire),  // received data from MPR121 (read data)
		.mpr121_reg_addr_out(mpr121_reg_addr_wire),   // transmitted register address to MPR121 (write data)
		.mpr121_data_in_out(mpr121_data_in_wire),  // transmitted data to MPR121 (write data)
		.mpr121_write_enable_out(mpr121_write_enable_wire),
		.mpr121_read_enable_out(mpr121_read_enable_wire),
		.mpr121_busy_in(mpr121_busy_wire),
		.mpr121_fail_in(mpr121_fail_wire),

		// System connection with MPR121 data
		.mpr121_touch_status_out(mpr121_touch_status_out),
		.mpr121_is_error(mpr121_is_error),
		.mpr121_irq_in(MPR121_IRQ),

		// ADS1292
		.ads1292_data_out_in(ads1292_data_out_wire), // read data from ADS1292
		.ads1292_control_out(ads1292_control_wire), // ADS1292 Control
		.ads1292_command_out(ads1292_command_wire), // ADS1292 SPI command
		.ads1292_reg_addr_out(ads1292_reg_addr_wire), // ADS1292 register address
		.ads1292_data_in_out(ads1292_data_in_wire), // data to write in ADS1292 register
		.ads1292_rdatac_ready_in(ads1292_rdatac_ready), // In Read data continue mode,  flag that 72 bits data is ready
		.ads1292_busy_in(ads1292_busy_wire),
		.ads1292_fail_in(ads1292_fail_wire),

		.ads1292_drdy_in(ADS1292_DRDY_N),

		// System I/O
		.chip_set(chip_set_wire),
		.run(run_wire),
		.run_set(run_set_wire),
		.clk(CLOCK_50M),
		.rst(!core_reset_n)
	);

	// ===============================================================================================================================
	// MPR121 Controller

	wire [7:0] mpr121_data_out_wire;
	wire [7:0] mpr121_reg_addr_wire;
	wire [7:0] mpr121_data_in_wire;
	wire mpr121_write_enable_wire;
	wire mpr121_read_enable_wire;
	wire mpr121_busy_wire;
	wire mpr121_fail_wire;

	/*
	GPIO[0] is foor realeasing MPR121 Bus stuck.
	if MPR121_SCL stuck in low, connect MPR121_SCL to GPIO[0] (force to pull up scl)
	*/
	assign GPIO_0 = CLOCK_5M;

	mpr121_controller mpr121_controller(
		.clk(CLOCK_50M), // clock
		.rstn(core_reset_n), // reset

		// Host Side
		.mpr121_data_out(mpr121_data_out_wire),
		.mpr121_reg_addr(mpr121_reg_addr_wire),
		.mpr121_data_in(mpr121_data_in_wire),
		.mpr121_write_enable(mpr121_write_enable_wire),
		.mpr121_read_enable(mpr121_read_enable_wire),
		.mpr121_busy(mpr121_busy_wire),
		.mpr121_fail(mpr121_fail_wire),

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

	ads1292_controller ads1292_controller(
		.clk(CLOCK_50M), // clock
		.rstn(core_reset_n), //reset

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
