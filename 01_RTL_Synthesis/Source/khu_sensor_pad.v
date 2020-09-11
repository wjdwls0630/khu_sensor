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
  /****************************************************************************
  *                    LEFT (pad1() ~ pad11()) 		                         *
  *****************************************************************************/
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
  //phsoscm3 pad1(.PADA(i_CLK), .E(1'b1), .PI(), .PO(), .YN(~w_clk_p), .PADY(CLK_OUT));
  phbct24 pad1(.PAD(i_CLK), .TN(1'b1), .EN(1'b1), .A(1'b0), .PI(1'b0), .PO(), .Y(w_clk_p));
  vssoh pad2();
  phob12 pad3(.A(w_ads1292_reset_p), .PAD(ADS1292_RESET));
  vssiph pad4();
  phob12 pad5(.A(w_ads1292_start_p), .PAD(ADS1292_START));
  vdd12ih_core pad6();
  phob12 pad7(.A(w_ads1292_csn_p), .PAD(ADS1292_CSN));
  vdd33oph pad8();
  vssoh pad9();
  vdd12ih pad10();
  vssiph pad11();
  //============================================================================
  /****************************************************************************
  *                    Bottom (pad12() ~ pad22())          	                 *
  *****************************************************************************/
  //============================================================================
  phob12 pad12(.A(w_ads1292_sclk_p), .PAD(ADS1292_SCLK));
  vssiph pad13();
  vssoh pad14();
  phic pad15(.PAD(ADS1292_MISO), .PI(1'b0), .Y(w_ads1292_miso_p), .PO());
  vssiph pad16();
  vssoh pad17();
  phob12 pad18(.A(w_ads1292_mosi_p), .PAD(ADS1292_MOSI));
  vdd33oph pad19();
  phic pad20(.PAD(ADS1292_DRDY), .PI(1'b0), .Y(w_ads1292_drdy_p), .PO());
  vdd12ih pad21();
  vssiph pad22();
  //============================================================================
  /****************************************************************************
  *                    Right (pad23() ~ pad33())           	                 *
  *****************************************************************************/
  //============================================================================
  vdd12ih pad23();
  vssiph pad24();
  vdd12ih_core pad25();
  vssiph pad26();
  phob12 pad27(.A(w_uart_tx_p), .PAD(UART_TXD));
  vssoh pad28();
  phic pad29(.PAD(UART_RXD), .PI(1'b0), .Y(w_uart_rx_p), .PO());
  vdd12ih_core pad30();
  vssoh pad31();
  vdd33oph pad32();
  vssiph pad33();
  //============================================================================
  /****************************************************************************
  *                    TOP (pad34() ~ pad44())                                *
  *****************************************************************************/
  //============================================================================
  phbct12 pad34(.PAD(MPR121_SCL), .TN(w_mpr121_scl_en_p), .EN(1'b0), .A(w_mpr121_scl_out_p), .PI(1'b0), .PO(), .Y(w_mpr121_scl_in_p));
  vssoh pad35();
  vssiph pad36();
  phbct12 pad37(.PAD(MPR121_SDA), .TN(w_mpr121_sda_en_p), .EN(1'b0), .A(w_mpr121_sda_out_p), .PI(1'b0), .PO(), .Y(w_mpr121_sda_in_p));
  vssoh pad38();
  vssiph pad39();
  // schmitt trigger for global reset
  phis pad40(.PAD(i_RSTN), .PI(1'b0), .Y(w_rstn_p), .PO());
  vssoh pad41();
  vdd33oph pad42();
  vssiph pad43();
  vdd12ih pad44();
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
