module khu_sensor_pad (
  // System I/O
  input i_CLK, // Clock
  output CLK_OUT, // Clock Out
  input i_RSTN, // Reset

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
  wire w_clk_out_p; // Clock Out
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
  *                    LEFT (pad1() ~ pad52()) (System I/O)		                *
  *****************************************************************************/
  //============================================================================
  // pad1() ~ pad14() : a chip corner, 3.3V supply voltage for PAD IO
  //It is the best way that 3.3V logic is located on the corner of chip,
  //owing to being deprived of connection with main(internal) module.
  // Setting a number of GND PAD as much as possible has advantageous for stabilizing supply voltage,
  // especially periphery of high frequency such as i_CLK.

  // vdd33oph : 3.3V output-driver and pre-driver
  // vssoh : Output-driver GND for 3.3V interface
  vssoh pad1();
  vssoh pad2();
  vssoh pad3();
  vdd33oph pad4();
  vssoh pad5();
  vssoh pad6();
  vssoh pad7();

  vssoh pad8();
  vssoh pad9();
  vssoh pad10();
  vdd33oph pad11();
  vssoh pad12();
  vssoh pad13();
  vssoh pad14();

  // rstn
  // phic/phicd/phicu : 3.3V interface CMOS Level Input Buffers
  // phicd : pull down
  // phicu : pull up
  /*
  truth table
  PAD PI Y PO
  1   1  1 0
  0   x  0 1
  1   0  1 1
  */
  vssoh pad15();
  vssoh pad16();
  // schmitt trigger for global reset
  phis pad17(.PAD(i_RSTN), .PI(1'b0), .Y(w_rstn_p), .PO());
  vssoh pad18();
  vssoh pad19();


  // Placing supply voltage for internal core on every center of chip side is recommended.
  // vdd12ih : 1.2V internal for 3.3V interface
  // vdd12ih_core : 1.2V core only for 3.3V interface
  // vssiph : Internal and pre-driver GND for 3.3V interface
  vssiph pad20();
  vssiph pad21();
  vssiph pad22();
  vdd12ih pad23();
  vssiph pad24();
  vssiph pad25();
  vssiph pad26();

  // phsoscm3 : 3.3V Interface Oscillator Cell with Enable(40M ~ 100MHz)
  vssiph pad27(); // Shield GND for i_CLK
  vssiph pad28(); // Shield GND for i_CLK
  phsoscm3 pad29(.PADA(i_CLK), .E(1'b1), .PI(), .PO(), .YN(w_clk_p), .PADY(CLK_OUT));
  vssiph pad30(); // Shield GND for i_CLK
  vssiph pad31(); // Shield GND for i_CLK

  vssiph pad32();
  vssiph pad33();
  vssiph pad34();
  vdd12ih pad35();
  vssiph pad36();
  vssiph pad37();
  vssiph pad38();

  vssoh pad39();
  vssoh pad40();
  vssoh pad41();
  vdd33oph pad42();
  vssoh pad43();
  vssoh pad44();
  vssoh pad45();

  vssoh pad46();
  vssoh pad47();
  vssoh pad48();
  vdd33oph pad49();
  vssoh pad50();
  vssoh pad51();
  vssoh pad52();
  //============================================================================
  /****************************************************************************
  *                    Bottom (pad53() ~ pad104()) (MPR121)		                 *
  *****************************************************************************/
  //============================================================================
  // vdd33oph : 3.3V output-driver and pre-driver
  // vssoh : Output-driver GND for 3.3V interface
  vssoh pad53();
  vssoh pad54();
  vssoh pad55();
  vdd33oph pad56();
  vssoh pad57();
  vssoh pad58();
  vssoh pad59();

  vssoh pad60();
  vssoh pad61();
  vssoh pad62();
  vdd33oph pad63();
  vssoh pad64();
  vssoh pad65();
  vssoh pad66();

  // MPR121_SCL
  // phbAdYZ : 3.3 Open-Drain Bi-Directional Buffers
  vssoh pad68();
  vssoh pad69();
  // TODO bi-directional -> how? Open-drain or Tri-State
  // TODO en High activate? or Low activate
  phbct12 pad70(.PAD(MPR121_SCL), .TN(~w_mpr121_scl_en_p), .EN(1'b0), .A(w_mpr121_scl_out_p), .PI(1'b0), .PO(), .Y(w_mpr121_scl_in_p));

  vssoh pad71();
  vssoh pad72();

  // Placing supply voltage for internal core on every center of chip side is recommended.
  // vdd12ih : 1.2V internal for 3.3V interface
  // vdd12ih_core : 1.2V core only for 3.3V interface
  // vssiph : Internal and pre-driver GND for 3.3V interface
  vssiph pad73();
  vssiph pad74();
  vssiph pad75();
  vdd12ih_core pad76();
  vssiph pad77();
  vssiph pad78();
  vssiph pad79();

  // MPR121_SDA
  // phbAdYZ : 3.3V Open-Drain Bi-Directional Buffers
  // phbAtYZ : 3.3V Tri-State Bi-Directional Buffers
  vssoh pad80();
  vssoh pad81();
  // TODO bi-directional -> how? Open-drain or Tri-State
  phbct12 pad82(.PAD(MPR121_SDA), .TN(w_mpr121_sda_en_p), .EN(1'b0), .A(w_mpr121_sda_out_p), .PI(1'b0), .PO(), .Y(w_mpr121_sda_in_p));
  vssoh pad83();
  vssoh pad84();

  vssiph pad85();
  vssiph pad86();
  vssiph pad87();
  vdd12ih pad88();
  vssiph pad89();
  vssiph pad90();
  vssiph pad91();

  vssoh pad92();
  vssoh pad93();
  vssoh pad94();
  vdd33oph pad95();
  vssoh pad96();
  vssoh pad97();
  vssoh pad98();

  vssoh pad99();
  vssoh pad100();
  vssoh pad101();
  vdd33oph pad102();
  vssoh pad103();
  vssoh pad104();
  //============================================================================
  /****************************************************************************
  *                    Right (pad105() ~ pad156()) (UART)   	                 *
  *****************************************************************************/
  //============================================================================
  // vdd33oph : 3.3V output-driver and pre-driver
  // vssoh : Output-driver GND for 3.3V interface
  vssoh pad105();
  vssoh pad106();
  vssoh pad107();
  vdd33oph pad108();
  vssoh pad109();
  vssoh pad110();
  vssoh pad111();

  vssoh pad112();
  vssoh pad113();
  vssoh pad114();
  vdd33oph pad115();
  vssoh pad116();
  vssoh pad117();
  vssoh pad118();

  // UART_RXD
  // phic/phicd/phicu : 3.3V interface CMOS Level Input Buffers
  // phicd : pull down
  // phicu : pull up
  /*
  truth table
  PAD PI Y PO
  1   1  1 0
  0   x  0 1
  1   0  1 1
  */
  vssoh pad119();
  vssoh pad120();
  phic pad121(.PAD(UART_RXD), .PI(1'b0), .Y(w_uart_rx_p), .PO());
  vssoh pad122();
  vssoh pad123();

  // Placing supply voltage for internal core on every center of chip side is recommended.
  // vdd12ih : 1.2V internal for 3.3V interface
  // vdd12ih_core : 1.2V core only for 3.3V interface
  // vssiph : Internal and pre-driver GND for 3.3V interface
  vssiph pad124();
  vssiph pad125();
  vssiph pad126();
  vdd12ih_core pad127();
  vssiph pad128();
  vssiph pad129();
  vssiph pad130();

  // UART_TXD
  // phob(2/4/8/12/16/20/24) : 3.3V CMOS Normal Output Buffers
  // number : current drive(mA) -> The higher of current drive, the shorter of delay.
  vssoh pad131();
  vssoh pad132();
  phob12 pad133(.A(w_uart_tx_p), .PAD(UART_TXD));
  vssoh pad134();
  vssoh pad135();

  vssiph pad136();
  vssiph pad137();
  vssiph pad138();
  vdd12ih pad139();
  vssiph pad140();
  vssiph pad141();
  vssiph pad142();

  vssoh pad143();
  vssoh pad144();
  vssoh pad145();
  vdd33oph pad146();
  vssoh pad147();
  vssoh pad148();
  vssoh pad149();

  vssoh pad150();
  vssoh pad151();
  vdd33oph pad152();
  vssoh pad153();
  vdd33oph pad154();
  vssoh pad155();
  vssoh pad156();
  //============================================================================
  /****************************************************************************
  *                    TOP (pad157() ~ pad208()) (ADS1292)   	                 *
  *****************************************************************************/
  //============================================================================
  // vdd33oph : 3.3V output-driver and pre-driver
  // vssoh : Output-driver GND for 3.3V interface
  vssoh pad157();
  vdd33oph pad158();
  vssoh pad159();
  vdd33oph pad160();
  vssoh pad161();

  // ADS1292_SCLK
  // phob(2/4/8/12/16/20/24) : 3.3V CMOS Normal Output Buffers
  // number : current drive(mA) -> The higher of current drive, the shorter of delay.
  vssoh pad162();
  vssoh pad163();
  vssoh pad164();
  phob12 pad165(.A(w_ads1292_sclk_p), .PAD(ADS1292_SCLK));
  vssoh pad166();
  vssoh pad167();
  vssoh pad168();

  // ADS1292_MISO
  // phic/phicd/phicu : 3.3V interface CMOS Level Input Buffers
  // phicd : pull down
  // phicu : pull up
  /*
  truth table
  PAD PI Y PO
  1   1  1 0
  0   x  0 1
  1   0  1 1
  */
  vssoh pad169();
  vssoh pad170();
  phic pad171(.PAD(ADS1292_MISO), .PI(1'b0), .Y(w_ads1292_miso_p), .PO());
  vssoh pad172();
  vssoh pad173();

  // ADS1292_MOSI
  // phob(2/4/8/12/16/20/24) : 3.3V CMOS Normal Output Buffers
  // number : current drive(mA) -> The higher of current drive, the shorter of delay.
  vssoh pad174();
  vssoh pad175();
  phob12 pad176(.A(w_ads1292_mosi_p), .PAD(ADS1292_MOSI));
  vssoh pad177();
  vssoh pad178();

  // Placing supply voltage for internal core on every center of chip side is recommended.
  // vdd12ih : 1.2V internal for 3.3V interface
  // vdd12ih_core : 1.2V core only for 3.3V interface
  // vssiph : Internal and pre-driver GND for 3.3V interface
  vssiph pad179();
  vssiph pad180();
  vdd12ih_core pad181();
  vssiph pad182();
  vssiph pad183();

  // ADS1292_DRDY
  // phic/phicd/phicu : 3.3V interface CMOS Level Input Buffers
  // phicd : pull down
  // phicu : pull up
  /*
  truth table
  PAD PI Y PO
  1   1  1 0
  0   x  0 1
  1   0  1 1
  */
  vssoh pad184();
  vssoh pad185();
  phic pad186(.PAD(ADS1292_DRDY), .PI(1'b0), .Y(w_ads1292_drdy_p), .PO());
  vssoh pad187();
  vssoh pad188();

  // Placing supply voltage for internal core on every center of chip side is recommended.
  // vdd12ih : 1.2V internal for 3.3V interface
  // vdd12ih_core : 1.2V core only for 3.3V interface
  // vssiph : Internal and pre-driver GND for 3.3V interface
  vssiph pad189();
  vssiph pad190();
  vdd12ih pad191();
  vssiph pad192();
  vssiph pad193();

  // ADS1292_RESET ADS1292_START ADS1292_CSN
  // phob(2/4/8/12/16/20/24) : 3.3V CMOS Normal Output Buffers
  // number : current drive(mA) -> The higher of current drive, the shorter of delay.
  vssoh pad194();
  vssoh pad195();
  phob12 pad196(.A(w_ads1292_reset_p), .PAD(ADS1292_RESET));
  phob12 pad197(.A(w_ads1292_start_p), .PAD(ADS1292_START));
  phob12 pad198(.A(w_ads1292_csn_p), .PAD(ADS1292_CSN));
  vssoh pad199();
  vssoh pad200();

  vssoh pad201();
  vdd33oph pad202();
  vssoh pad203();
  vssoh pad204();
  vdd33oph pad205();
  vdd33oph pad206();
  vssoh pad207();
  vssoh pad208();
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
