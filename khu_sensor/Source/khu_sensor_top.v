/** Top module **/
module khu_sensor_top(
	// System I/O
	input wire CLOCK_50M,
	input KEY_0, // KEY[0]
	output [17:0] LEDR,
	output [7:0] LEDG,

	// RS232 UART
	input wire UART_RXD,
	output wire UART_TXD,

	output [1:0] GPIO, // GPIO[0] == CLOCK_5M, GPIO[1] == ADS1292_DRDY;

	// DUT IO: for MPR121 (I2C)
	inout wire MPR121_SCL, // GPIO[8]
	inout wire MPR121_SDA, // GPIO[9]

	// DUT IO: for ADS1292 (SPI)
	output wire ADS1292_SCLK, // GPIO[26]
	input wire ADS1292_MISO,  // GPIO[27]
	output wire ADS1292_MOSI,  // GPIO[28]
	input wire ADS1292_DRDY,  // GPIO[29]
	output wire ADS1292_RESET,  // GPIO[30]
	output wire ADS1292_START,  // GPIO[31]
	output wire ADS1292_CSN  // GPIO[32]
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
	wire [31:0] w_uart_data_tx;
	wire w_uart_data_tx_valid;
	wire w_uart_data_tx_ready;
	wire [15:0] w_uart_data_rx;
	wire w_uart_data_rx_valid;

	uart_controller uart_controller(
		// TX
		.i_UART_DATA_TX(w_uart_data_tx),
		.i_UART_DATA_TX_VALID(w_uart_data_tx_valid),
		.o_UART_DATA_TX_READY(w_uart_data_tx_ready),
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
	wire w_run_set;
	wire w_core_busy;
	assign LEDG[0] = w_mpr121_init_set & w_ads1292_init_set;
	assign LEDG[1] = w_chip_set;
	assign LEDG[2] = w_run_set;
	assign LEDR[17] = w_core_busy;

	sensor_core sensor_core(
		// UART Controller
		// TX
		.o_UART_DATA_TX(w_uart_data_tx), // tx data which send to PC
		.o_UART_DATA_TX_VALID(w_uart_data_tx_valid), // tx data valid
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
		.i_MPR121_INIT_SET(w_mpr121_init_set),
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
		.i_ADS1292_INIT_SET(w_ads1292_init_set), // signal that start to read data in RDATAC mode
		.i_ADS1292_DATA_READY(w_ads1292_data_ready), // In Read data continue mode,  flag that 72 bits data is ready (active posedge)
		.i_ADS1292_BUSY(w_ads1292_busy),
		.i_ADS1292_FAIL(w_ads1292_fail),

		// System I/O
		.o_CHIP_SET(w_chip_set),
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
	wire w_mpr121_init_set;
	wire w_mpr121_busy;
	wire w_mpr121_fail;

	/*
	GPIO[0] is for realeasing MPR121 Bus stuck.
	if MPR121_SCL stuck in low, connect MPR121_SCL to GPIO[0] (force to pull up scl)
	*/
	assign GPIO[0] = w_CLOCK_5M;

	mpr121_controller mpr121_controller(

		.i_CLK(CLOCK_50M), // clock
		.i_RSTN(w_core_rstn), // reset

		// Host Side
		.o_MPR121_DATA_OUT(w_mpr121_data_out), // read data from MPR121
		.o_MPR121_REG_ADDR(w_mpr121_reg_addr), // MPR121 register address
		.i_MPR121_DATA_IN(w_mpr121_data_in), // data to write in MPR121 register
		.i_MPR121_WRITE_ENABLE(w_mpr121_write_enable), // write enable
		.i_MPR121_READ_ENABLE(w_mpr121_read_enable), // read enable
		.o_MPR121_INIT_SET(w_mpr121_init_set),
		.o_MPR121_BUSY(w_mpr121_busy),
		.o_MPR121_FAIL(w_mpr121_fail),

		//	I2C Side
		.I2C_SCL(MPR121_SCL),
		.I2C_SDA(MPR121_SDA)
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
	wire w_ads1292_init_set;
	wire w_ads1292_busy;
	wire w_ads1292_fail;

	assign GPIO[1] = ADS1292_DRDY;
	ads1292_controller ads1292_controller(
		.i_CLK(CLOCK_50M), // clock
		.i_RSTN(w_core_rstn), //reset

		// Host Side
		.o_ADS1292_DATA_OUT(w_ads1292_data_out), // read data from ADS1292
		.i_ADS1292_CONTROL(w_ads1292_control), // ADS1292 Control
		.i_ADS1292_COMMAND(w_ads1292_command), // ADS1292 SPI command
		.i_ADS1292_REG_ADDR(w_ads1292_reg_addr), // ADS1292 register address
		.i_ADS1292_DATA_IN(w_ads1292_data_in), // data to write in ADS1292 register
		.o_ADS1292_INIT_SET(w_ads1292_init_set), // signal that start to read data in RDATAC mode
		.o_ADS1292_DATA_READY(w_ads1292_data_ready), // In Read data continue mode,  flag that 72 bits data is ready (active posedge)
		.o_ADS1292_BUSY(w_ads1292_busy),
		.o_ADS1292_FAIL(w_ads1292_fail),

		//	ADS1292, SPI Side
		.o_SPI_CLK(ADS1292_SCLK),
		.i_SPI_MISO(ADS1292_MISO), // SPI data form ADS - Master input Slave output (read)
		.o_SPI_MOSI(ADS1292_MOSI), // SPI data to ADS - Master Output Slave Input (write)
		.i_ADS1292_DRDY(ADS1292_DRDY), // Data Ready (active low) (change it active high)
		.o_ADS1292_RESET(ADS1292_RESET),
		.o_ADS1292_START(ADS1292_START),
		.o_SPI_CSN(ADS1292_CSN) // Chip Select Negative (active low)
		// When CS is taken high, the serial interface is reset, SCLK and DIN are ignored, and DOUT enters a high-impedance state
		);
	//============================================================================
endmodule
