/** Top module **/
module khu_sensor_top(
	// System I/O
	input wire CLOCK_50M,
	input KEY_0, // KEY[0]
	input SW_0, // SW[0]
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
	/****************************************************************************
	*                           	   FPGA				                               	*
	*****************************************************************************/
	//=========================Internal Connection===============================
	wire rstn_btn;
	assign rstn_btn = KEY_0;
	//============================================================================

	/****************************************************************************
	*                           	   ALTPLL 		                               	*
	*****************************************************************************/
	//=========================Internal Connection===============================
	wire w_CLOCK_5M, w_CLOCK_25M, w_CLOCK_100M;
	wire w_core_rstn;

	my_pll khu_pll(
		.areset		(!rstn_btn),
		.inclk0		(CLOCK_50M),
		.c0				(w_CLOCK_5M),
		.c2				(w_CLOCK_25M),
		.c3       (w_CLOCK_100M),
		.locked		(w_core_rstn)
		);
	//============================================================================

	/****************************************************************************
	*                           uart_controller			                          	*
	*****************************************************************************/
	//=========================Internal Connection===============================
	wire [39:0] w_uart_data_tx;
	wire w_uart_data_tx_valid;
	wire w_uart_data_tx_ready;
	wire [15:0] w_uart_data_rx;
	wire w_uart_data_rx_valid;

	uart_controller uart_controller(
		// TX
		.i_UART_DATA_TX(w_uart_data_tx),
		.i_UART_DATA_TX_VALID(w_uart_data_tx_valid),
		.o_DATA_TX_READY(w_uart_data_tx_ready),
		// RX
		.o_UART_DATA_RX(w_uart_data_rx),
		.o_UART_DATA_RX_VALID(w_uart_data_rx_valid),

		.i_CORE_BUSY(w_core_busy),
		// System I/O
		.i_UART_RXD(UART_RXD), // external_interface.RXD
		.o_UART_TXD(UART_TXD), // external_interface.TXD
		.i_CLK(w_CLOCK_25M),
		.i_RST(!w_core_rstn)
		);
	//============================================================================

	/****************************************************************************
	*                           	sensor_core			        		                 	*
	*****************************************************************************/
	//=========================Internal Connection===============================
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
		// UART Controller
		// TX
		.o_UART_DATA_TX(w_uart_data_tx), // tx data which send to PC
		.o_UARTA_DATA_TX_VALID(w_uart_data_tx_valid), // tx data valid
		.i_UART_DATA_TX_READY(w_uart_data_tx_ready), // tx Ready for next byte

		// RX
		.i_UART_DATA_RX(w_uart_data_rx), // rx data which receive from PC
		.i_UART_DATA_RX_VALID(w_uart_data_rx_valid), // rx data valid pulse

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
		.i_ADS1292_DATA_OUT(w_ads1292_data_out), // read data from ADS1292
		.o_ADS1292_CONTROL(w_ads1292_control), // ADS1292 Control
		.o_ADS1292_COMMAND(w_ads1292_command), // ADS1292 SPI command
		.o_ADS1292_REG_ADDR(w_ads1292_reg_addr), // ADS1292 register address
		.o_ADS1292_DATA_IN(w_ads1292_data_in), // data to write in ADS1292 register
		.i_ADS1292_DATA_READY(w_ads1292_data_ready), // In Read data continue mode,  flag that 72 bits data is ready
		.i_ADS1292_BUSY(w_ads1292_busy),
		.i_ADS1292_FAIL(w_ads1292_fail),

		// System I/O
		.o_CHIP_SET(w_chip_set),
		.i_RUN(w_run),
		.o_RUN_SET(w_run_set),
		.o_CORE_BUSY(w_core_busy),
		.i_CLK(w_CLOCK_25M),
		.i_RST(!w_core_rstn)
	);
	//============================================================================

	/****************************************************************************
	*                           	mpr121_controller		     		                 	*
	*****************************************************************************/
	//=========================Internal Connection===============================
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
	//============================================================================

	/****************************************************************************
	*                           	ads1292_controller		   		                 	*
	*****************************************************************************/
	//=========================Internal Connection===============================
	wire [71:0] w_ads1292_data_out;
	wire [2:0] w_ads1292_control;
	wire [7:0] w_ads1292_command;
	wire [7:0] w_ads1292_reg_addr;
	wire [7:0] w_ads1292_data_in;
	wire w_ads1292_data_ready;
	wire w_ads1292_busy;
	wire w_ads1292_fail;
	wire w_ADS1292_DRDY_N;
	assign w_ADS1292_DRDY_N = ~ADS1292_DRDY;
	//wire ADS1292_SCLK_N;
	//assign ADS1292_SCLK = ~ADS1292_SCLK_N
	ads1292_controller ads1292_controller(
		.clk(CLOCK_50M), // clock
		.rstn(w_core_rstn), //reset

		// Host Side
		.ads1292_data_out(w_ads1292_data_out), // read data from ADS1292
		.ads1292_control(w_ads1292_control), // ADS1292 Control
		.ads1292_command(w_ads1292_command), // ADS1292 SPI command
		.ads1292_reg_addr(w_ads1292_reg_addr), // ADS1292 register address
		.ads1292_data_in(w_ads1292_data_in), // data to write in ADS1292 register
		.ads1292_rdatac_ready(w_ads1292_data_ready), // In Read data continue mode,  flag that 72 bits data is ready
		.ads1292_busy(w_ads1292_busy),
		.ads1292_fail(w_ads1292_fail),

		//	ADS1292, SPI Side
		.spi_clk(ADS1292_SCLK),
		.spi_miso(ADS1292_MISO), // SPI data form ADS - Master input Slave output (read)
		.spi_mosi(ADS1292_MOSI), // SPI data to ADS - Master Output Slave Input (write)
		.ads1292_drdy(w_ADS1292_DRDY_N), // Data Ready (active low) (change it active high)
		.ads1292_reset(ADS1292_RESET),
		.ads1292_start(ADS1292_START),
		.spi_csn(ADS1292_CSN), // Chip Select Negative (active low)
		// When CS is taken high, the serial interface is reset, SCLK and DIN are ignored, and DOUT enters a high-impedance state
		);
	//============================================================================
endmodule
