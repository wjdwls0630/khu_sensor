module khu_sensor_pad (
  // System I/O
  input i_CLK, // Clock
  input i_RSTN, // Reset
  //output CLK_OUT,
  // RS232 UART
  input UART_RXD,
  output UART_TXD,

  // DUT IO: for MPR121 (I2C)
  inout MPR121_SCL,
  inout MPR121_SDA,

  // DUT IO: for ADS1292 (SPI)
  output ADS1292_SCLK,
  input ADS1292_MISO,
  output ADS1292_MOSI,
  input ADS1292_DRDY,
  output ADS1292_RESET,
  output ADS1292_START,
  output ADS1292_CSN
  );
  /*
  4x4mm core
  maximum port number : 208
  52 ports are allocated on each side.  (.tdf file)(include coordinate data)
  */
  /*
  Input : output-driver(3.3V) -> pre-driver (3.3V) -> internal(1.2V)
  Output : internal(1.2V) -> pre-driver (3.3V) -> output-driver(3.3V)
  */

  /****************************************************************************
	*                           	   PAD Output Signal : _p			                *
	*****************************************************************************/
  //=========================Internal Connection===============================
  // Actual Signal input to main core/module(khu_sensor_top)
  // System I/O
  wire w_clk_p; // Clock
  //wire w_clk_out_p; // Clock Out
  wire w_rstn_p; // Reset

  wire w_clk_half_p;
  wire w_clk_half_out_p;
  // RS232 UART
  wire w_uart_rx_p;
  wire w_uart_tx_p;

  // DUT IO: for MPR121 (I2C)
  wire w_mpr121_scl_in_p;
  wire w_mpr121_sda_in_p;
  wire w_mpr121_scl_out_p;
  wire w_mpr121_sda_out_p;
  wire w_mpr121_scl_en_p;
  wire w_mpr121_sda_en_p;

  // DUT IO: for ADS1292 (SPI)
  wire w_ads1292_sclk_p;
  wire w_ads1292_miso_p;
  wire w_ads1292_mosi_p;
  wire w_ads1292_drdy_p;
  wire w_ads1292_reset_p;
  wire w_ads1292_start_p;
  wire w_ads1292_csn_p;
  //============================================================================
  //============================================================================
  //It is the best way that 3.3V logic is located on the corner of chip,
  //owing to being deprived of connection with main(internal) module.
  // Setting a number of GND PAD as much as possible has advantageous for stabilizing supply voltage,
  // especially periphery of high frequency such as i_CLK.

  // vdd33oph : 3.3V output-driver and pre-driver
  // vssoh : Output-driver GND for 3.3V interface
  // phob(2/4/8/12/16/20/24) : 3.3V CMOS Normal Output Buffers
  // number : current drive(mA) -> The higher of current drive, the shorter of delay.
  // Placing supply voltage for internal core on every center of chip side is recommended.
  // vdd12ih : 1.2V internal for 3.3V interface
  // vdd12ih_core : 1.2V core only for 3.3V interface
  // vssiph : Internal and pre-driver GND for 3.3V interface
  // if input does not require a big driver, input PAD or bi-directional PAD
  // can be used for oscillator
  //============================================================================
  /****************************************************************************
  *                    LEFT (pad1() ~ pad14()) 		                            *
  *****************************************************************************/
  //phsoscm3 pad1(.PADA(i_CLK), .E(1'b1), .PI(), .PO(), .YN(~w_clk_p), .PADY(CLK_OUT));
  vdd33oph pad1();
  phbct24 pad2(.PAD(i_CLK), .TN(1'b1), .EN(1'b1), .A(1'b0), .PI(1'b0), .PO(), .Y(w_clk_p));
  vssoh pad3();
  vdd12ih_core pad4();
  vssoh pad5();
  vssiph pad6();
  vdd12ih pad7();
  vdd33oph pad8();
  vssoh pad9();
  phob12 pad10(.A(w_ads1292_reset_p), .PAD(ADS1292_RESET));
  phob12 pad11(.A(w_ads1292_start_p), .PAD(ADS1292_START));
  vssiph pad12();
  vdd12ih pad13();
  phob12 pad14(.A(w_ads1292_csn_p), .PAD(ADS1292_CSN));
  //============================================================================
  /****************************************************************************
  *                    Bottom (pad15() ~ pad28())          	                 *
  *****************************************************************************/
  //============================================================================
  vdd33oph pad15();
  phob12 pad16(.A(w_ads1292_sclk_p), .PAD(ADS1292_SCLK));
  vssoh pad17();
  vssiph pad18();
  vdd12ih pad19();
  vdd33oph pad20();
  phic pad21(.PAD(ADS1292_MISO), .PI(1'b0), .Y(w_ads1292_miso_p), .PO());
  vssiph pad22();
  vdd12ih pad23();
  phob12 pad24(.A(w_ads1292_mosi_p), .PAD(ADS1292_MOSI));
  vdd12ih_core pad25();
  vdd33oph pad26();
  phic pad27(.PAD(ADS1292_DRDY), .PI(1'b0), .Y(w_ads1292_drdy_p), .PO());
  vssoh pad28();
  //============================================================================
  /****************************************************************************
  *                    Right (pad29() ~ pad42())           	                 *
  *****************************************************************************/
  //============================================================================
  vssoh pad29();
  vssiph pad30();
  vdd12ih pad31();
  vdd33oph pad32();
  phob12 pad33(.A(w_uart_tx_p), .PAD(UART_TXD));
  vssoh pad34();
  vdd12ih_core pad35();
  vdd33oph pad36();
  phic pad37(.PAD(UART_RXD), .PI(1'b0), .Y(w_uart_rx_p), .PO());
  vdd33oph pad38();
  vssoh pad39();
  vssiph pad40();
  vdd12ih pad41();
  vssoh pad42();
  //============================================================================
  /****************************************************************************
  *                    TOP (pad43() ~ pad56())                                *
  *****************************************************************************/
  //============================================================================
  phbct12 pad43(.PAD(MPR121_SCL), .TN(w_mpr121_scl_en_p), .EN(1'b0), .A(w_mpr121_scl_out_p), .PI(1'b0), .PO(), .Y(w_mpr121_scl_in_p));
  vdd12ih_core pad44();
  vssoh pad45();
  phbct12 pad46(.PAD(MPR121_SDA), .TN(w_mpr121_sda_en_p), .EN(1'b0), .A(w_mpr121_sda_out_p), .PI(1'b0), .PO(), .Y(w_mpr121_sda_in_p));
  vssoh pad47();
  vssiph pad48();
  vdd12ih pad49();
  vdd33oph pad50();
  // schmitt trigger for global reset
  phis pad51(.PAD(i_RSTN), .PI(1'b0), .Y(w_rstn_p), .PO());
  vdd33oph pad52();
  vssiph pad53();
  vdd12ih pad54();
  vssoh pad55();
  vdd12ih_core pad56();
  //============================================================================
	/****************************************************************************
	*                           async_rstn_glitch_synchronizer                                   *
	*****************************************************************************/
// reset synchronizer with glitch filter for Reset recovery time and dont fall to metastability
wire w_rstn;
async_rstn_glitch_synchronizer async_rstn_glitch_synchronizer (
    .i_CLK(i_CLK),
    .i_RSTN(w_rstn_p),
    .o_RSTN(w_rstn)
    );
  /****************************************************************************
  *                           khu_sensor_top   		                          	*
  *****************************************************************************/
  //=========================Internal Connection===============================
  khu_sensor_top khu_sensor_top(
  	// System I/O
  	.i_CLK(w_clk_p), // Clock
  	.i_RSTN(w_rstn), // Reset

  	// RS232 UART
  	.UART_RXD(w_uart_rx_p),
  	.UART_TXD(w_uart_tx_p),

  	// DUT IO: for MPR121 (I2C)
  	.MPR121_SCL_IN(w_mpr121_scl_in_p),
  	.MPR121_SDA_IN(w_mpr121_sda_in_p),
  	.MPR121_SCL_OUT(w_mpr121_scl_out_p),
  	.MPR121_SDA_OUT(w_mpr121_sda_out_p),
  	.MPR121_SCL_EN(w_mpr121_scl_en_p),
  	.MPR121_SDA_EN(w_mpr121_sda_en_p),

  	// DUT IO: for ADS1292 (SPI)
  	.ADS1292_SCLK(w_ads1292_sclk_p),
  	.ADS1292_MISO(w_ads1292_miso_p),
  	.ADS1292_MOSI(w_ads1292_mosi_p),
  	.ADS1292_DRDY(w_ads1292_drdy_p),
  	.ADS1292_RESET(w_ads1292_reset_p),
  	.ADS1292_START(w_ads1292_start_p),
  	.ADS1292_CSN(w_ads1292_csn_p)
  	);
endmodule //khu_sensor_pad
