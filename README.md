# khu_sensor

## Introduction

## Contents

* [Prerequesites](#prerequisites)
* [BlockDiagram](#BlockDiagram)
* [Modules](#Modules)
	- [khu_sensor_top](#khu_sensor_top)
	- [ads1292_controller](#ads1292_controller)
	  + [spi_master](#spi_master)
	- [mpr121_controller](#mpr121_controller)
	  + [i2c_master](#i2c_master)
	- [sensor_core](#sensor_core)
	- [uart_controller](#uart_controller)
	  + [uart_rx](#uart_rx)
	  + [uart_tx](#uart_tx)
* [Reference](#Reference)




## Prerequisites

- Quartus II (Version 15.0)
- DE2-115 Board (Cyclone IV E, EP4CE115F29C7)
- MPR121 (Touch Sensor)
- ADS1292 (ECG Sensors)


## BlockDiagram
![Block Diagram](./reference/Image/khu_sensor_blockdiagram.png)


## Modules

## khu_sensor_top
'khu_sensor_top' module assigns pins of fpga to parameters. The parameters are used to communicate with ADS1292(SPI), MPR121(I2C), PC(UART).

## ads1292_controller
'ads1292_controller' module directly communicates with ADS1292 sensor through spi_master. States are defined in this module, and parameters are set valid to each state. The parameters defiend by reference/ADS1292/ADS1292.pdf.        

### Input Port

* i_CLK
  * 50MHz

* i_RSTN
  * It is pulled low when reset button(KEY[0]) is clicked.

* [2:0] i_ADS1292_CONTROL : Decide ADS1292's mode     
  * 3'b000 -> IDLE mode      
  * 3'b001 -> SYSCMD mode      
  * 3'b010 -> WREG mode
  * 3'b011 -> RREG mode      
  * 3'b100 -> RDATAC mode      
  * 3'b101 -> SDATAC mode      
  * 3'b111 -> DUMMY mode      

* [7:0] i_ADS1292_COMMAND : Defined opcode command for setting ADS's state   
  * 8'h06 -> RESET        
  * 8'h08 -> START      
  * 8'h0A -> STOP      
  * 8'h10 -> RDATAC        
  * 8'h11 -> SDATAC       

* [7:0] i_ADS1292_REG_ADDR : Register address to write or read data   
  * 8'h01 -> CONFIG1      
  * 8'h02 -> CONFIG2           
  * 8'h03 -> LOFF          
  * 8'h04 -> CH1SET       
  * 8'h05 -> CH2SET         
  * 8'h06 -> RLD_SENS      
  * 8'h07 -> LOFF_SENS       
  * 8'h08 -> LOFF_STAT        
  * 8'h09 -> RESP1        
  * 8'h0A -> RESP2        
  * 8'h0B -> GPIO          

* [7:0] i_ADS1292_DATA_IN : Register data to be written in specific register   
  * 8'h01 -> written in CONFIG1  
  * 8'hE0 -> written in CONFIG2  
  * 8'h10 -> written in LOFF  
  * 8'h00 -> written in CH1SET  
  * 8'h00 -> written in CH2SET  
  * 8'h2C -> written in RLD_SENS  
  * 8'h0E -> written in LOFF_SENS  
  * 8'h00 -> written in LOFF_STAT  
  * 8'h02 -> written in RESP1  
  * 8'h87 -> written in RESP2  
  * 8'h00 -> written in GPIO  

* i_SPI_MISO : 1 bit data that ADS1292 sends to DE2-115    
  * Written data of register : In RREG mode      
  * Conversion data (1bit out of 72bit) : In RDATAC mode      

* i_ADS1292_DRDY : 1bit data that ADS1292 sends to DE2-115 when  conversion data ready   
  * First 1'b0 -> 1'b1 : Go High with start pin
  * First 1'b1 -> 1'b0 : Conversion data is ready
  * Second 1'b0 -> 1'b1 : Output conversion data

### Output Port

* reg [71:0] o_ADS1292_DATA_OUT   
  * In RDATAC mode, a set of 1'bit i_SPI_MISO data.  

* reg o_ADS1292_INIT_SET   
  * It is pulled high when ADS1292 wait for power-on reset.  

* reg o_ADS1292_DATA_READY   
  * In RDATAC mode, it goes high when 72bit conversion data are ready  

* reg o_ADS1292_BUSY   
  * It goes high when ADS1292 operates in a particular mode.  

* reg o_ADS1292_FAIL   

* [15:0] o_ads_reg_c   
  * In RREG mode, o_ads_reg_c is the combination of r_ads_reg_a and r_ads_reg_b.  
	r_ads_reg_a is register address to read.  
	r_ads_reg_b is (number of registers to read at the same time) -1.  

    * Example  
	If you want read CONFIG1, CONFIG2, LOFF at the same time, o_ads_reg_c <= 0010000100000010.    
	If you want read LOFF only, o_ads_reg_c <= 0010001100000000  

* o_SPI_CLK   
  * SCLK determined by CLKS_PER_HALF_BIT is assigned this port.  
  * CLKS_PER_HALF_BIT is 25, so o_SPI_CLK <= 1MHz (50M / (25 * 2))  

* o_SPI_MOSI   
  * It is 1bit piece of bits that DE2-115 sends to ADS1292, including opcode, register addree etc.  

* o_ADS1292_RESET   
  * It is pulled high at idle mode, power on reset state.  

* o_ADS1292_START   
  * It goes high when start pin is pulled high or in RDATAC mode.

* o_SPI_CSN   
  * It remain low when ADS1292 communicate with master.  
	 It goes high in idle mode or waiting specific state.


## mpr121_controller

### Input
* i_CLK, i_RSTN
  * same as ads1292_controller
* [i_MPR121_REG_ADDR](#Register Set) [7:0]
  * MPR121 Register address      
* [i_MPR121_DATA_IN](#Register Set) [7:0]     
  * MPR121 Register value    
* [i_MPR121_WRITE_ENABLE](#i_MPR121_WRITE_ENABLE)    
  * 1'b1 : order MPR to be on write state  
* [i_MPR121_READ_ENABLE](#i_MPR121_READ_ENABLE)    
  * 1'b1 : order MPR to be on data recieve state    


### Output
* [o_MPR121_DATA_OUT](#o_MPR121_DATA_OUT)          
  * alternately recieve touch status from sensor **0~7** and **8~11**        
* [o_MPR121_BUSY](#o_MPR121_BUSY)
  * 1'b1 : MPR either on WRITE or READ state   
* [o_MPR121_FAIL](#o_MPR121_FAIL)
  * 1'b1 : unexpected error occured during process        
* [o_MPR121_INIT_SET](#o_MPR121_INIT_SET)
  * 1'b1 : soft reset. The soft reset does not effect the I2C module, but all others reset the same as power on reset

### Inout
* I2C_SCL I2C_SDA
  * I
*


 - - -


#### i_MPR121_WRITE_ENABLE

#### i_MPR121_READ_ENABLE

#### o_MPR121_DATA_OUT

#### o_MPR121_BUSY  
module is communicating over the bus
<pre>
<code>
if (i_MPR121_WRITE_ENABLE || i_MPR121_READ_ENABLE)
  o_MPR121_BUSY <= 1'b1;
else o_MPR121_BUSY <= 1'b0;
</code>
</pre>

#### o_MPR121_FAIL

#### I2C_SCL, I2C_SDA

## i2c_master
<pre>
<code>
Read
    __    ___ ___ ___ ___ ___ ___ ___         ___ ___ ___ ___ ___ ___ ___ ___     ___ ___ ___ ___ ___ ___ ___ ___        __
sda   \__/_6_X_5_X_4_X_3_X_2_X_1_X_0_\_R___A_/_7_X_6_X_5_X_4_X_3_X_2_X_1_X_0_\_A_/_7_X_6_X_5_X_4_X_3_X_2_X_1_X_0_\_A____/
    ____   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   ____
scl  ST \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ SP

Write
    __    ___ ___ ___ ___ ___ ___ ___ ___     ___ ___ ___ ___ ___ ___ ___ ___     ___ ___ ___ ___ ___ ___ ___ ___ ___    __
sda   \__/_6_X_5_X_4_X_3_X_2_X_1_X_0_/ W \_A_/_7_X_6_X_5_X_4_X_3_X_2_X_1_X_0_\_A_/_7_X_6_X_5_X_4_X_3_X_2_X_1_X_0_/ N \__/
    ____   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   ____
scl  ST \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ SP
</code>
<pre>

### Input
* cmd_address[6:0]
  * MPR121 Slave Address
  * set to 7'b1011_010(0x5A) - ADDR pin connect to Ground
* cmd_start
  * 1'b1 : i2c start
* cmd_read
  * 1'b1 : i2c read (send 0)
* cmd_write
  * 1'b1 : i2c write (send 1)
* cmd_write_multiple
  * 1'b1 : i2c write multiple (until data_in_last)
* cmd_stop
  * 1'b1 : i2c stop
* cmd_valid
  * 1'b1 : command valid
* data_in[7:0]
  * 1 byte data to MPR121 - i2c(master input)
* data_in_valid
  * valid of input data byte
* data_in_last
  * flag of last data to write (using for write multiple)
* data_out_ready
  * ready flag which indicate status that Slave finish to read 1 byte data
* prescale[15:0]      
  * set to 16'd125    
    * set prescale to 1/4 of the minimum clock period in units of input i_CLK cycles
    * prescale = Fclk / (FI2Cclk * 4) = 50M / (100k * 4) = 125
* stop_on_idle
  * set to 1'b1 - automatically issue stop when command input is not valid


### Output
* cmd_ready
  * ready to operate command
* data_in_ready
  * ready flag which indicate status that Master can receive data byte to write when Master finish to write previous data sent
* data_out[7:0]
  * 1 byte data from MPR121 - i2c(master output)
* data_out_valid
  * valid of output data byte
* data_out_last
  * flag of last data to read (In general, we don't know how much long data is)
* missed_ack
  * check nack

## sensor_core
### Input     
##### UART Controller    
* i_UART_DATA_TX_READY       
  * 1'b1: either MPR121 or ADS1292 fully received Bio-signal     
* i_UART_DATA_RX[15:8]     
  * 8'h6D : read setted data from MPR reg address **i_UART_DATA_RX[7:0]**             
  * 8'h61 : read setted data from ADS reg address **i_UART_DATA_RX[7:0]**                     
  * 8'h52 : Alternately get bio_signal from MPR and ADS        
  * 8'h53 : stop getting bio_signal from MPR and ADS      
  * __8'h46 : ???__     
  * __8'h66 : ???__     	
* i_UART_DATA_RX_VALID          
  * 1'b1: FPGA fully recieved single byte info from UART   

##### MPR121     
* i_MPR121_DATA_OUT[7:0]          
  * alternately recieve touch status from sensor **0~7** and **8~11**        
* i_MPR121_INIT_SET      
  * 1'b1 : initiation code successfully passed to MPR      
* i_MPR121_BUSY       
  * 1'b1 : MPR either on WRITE or READ state       
* i_MPR121_FAIL     
  * 1'b1 : unexpected error occured during process         

##### ADS1292      
* i_ADS1292_DATA_OUT       
  * i_ADS1292_DATA_OUT[71:48] : ADS status data      
  * i_ADS1292_DATA_OUT[47:24] ; ADS CH1 data      
  * i_ADS1292_DATA_OUT[23:0] : ADS CH2 data          
* i_ADS1292_INIT_SET       
  * 1'b1 : initiation code successfully passed to ADS       
* i_ADS1292_DATA_READY      
  * 1'b1 : **i_ADS1292_DATA_OUT[71:0]** are ready to be passed by ADS       
* i_ADS1292_BUSY       
  * 1'b1 : ADS either on WRITE or READ state      
* i_ADS1292_FAIL     
  * 1'b1 : unexpected error occured during process      

##### System I/O      
* i_CLK : 25MHz clock    
* i_RST       
   * 1'b1 : reset all process      


### Output       
##### UART Controller        
* o_UART_DATA_TX            
  * o_UART_DATA_TX[79:72]       
    * 8'hBB :  send MPR sensor data        
    * 8'hAA : send ADS sensor data       
    * 8'h6D : send MPR register data      
    * 8'h61 : send ADS register data        
* o_UART_DATA_TX_VALID      
   * 1'b1 : 80bit data are fully recieved      

##### MPR121     
* o_MPR121_REG_ADDR[7:0] : specific register address of MPR to write or read      
* o_MPR121_DATA_IN[7:0] : data to write on specific MPR address    
* o_MPR121_WRITE_ENABLE      
  * 1'b1 : order MPR to be on write state           
* o_MPR121_READ_ENABLE      
  * 1'b1 : order MPR to be on data recieve state       

##### System connection with MPR121 data      
* o_MPR121_TOUCH_STATUS        
  * o_MPR121_TOUCH_STATUS[11:8] : touch sensor 8~11 status       
  * o_MPR121_TOUCH_STATUS[7:0] : touch sensor 0~7 status       
* o_MPR121_ERROR       
  * 1'b1: LEDR[16] light on         

##### ADS1292      
* o_ADS1292_CONTROL [2:0]             
  * 3'b001 : ADS on system command  mode      
  * 3'b010 : ADS on write register mode      
  * 3'b011 : ADS on read register mode      
  * 3'b100 : ADS on read data continuously mode          
  * 3'b101 : ADS on stop data continuously mode       
  * 3'b111 : ADS on send dummy mode        
* o_ADS1292_COMMAND [7:0] : send user defined command according to **o_ADS1292_CONTROL[2:0]**      
* o_ADS1292_REG_ADDR [7:0] : specific register address of ADS to write or read       
* o_ADS1292_DATA_IN[ [7:0] : data to write on specific ADS address     

##### System I/O      
* o_CHIP_SET       
  * 1'b1 :  both MPR and ADS chip set done       
* o_RUN_SET       
  * 1'b1 : both MPR and ADS run set done          
* o_CORE_BUSY        
  * 1'b1 : both MPR and ADS on reading data state

## uart_controller

#### Register Set
If you want to modify value of each register, refer to the description of register in the [datasheet](./reference/MPR121/MPR121.pdf).

|Register Name|Address|Value|Register Name|Address|Value|
|----|----|----|----|----|----|
|8'h2B||||8'|8'|
||8'|8'|h2C|8'|8'|
||8'|8'||8'|8'|
||8'|8'||8'|8'|
||8'|8'||8'|8'|
||8'|8'||8'|8'|
||8'|8'||8'|8'|
||8'|8'||8'|8'|

* 8'h2B : Maximum Half Delta (MHD) Rising Register
* 8'h2C : Noise Half Delta (NHD) Amount Rising Register
* 8'h2D : Noise Count Limit (NCL) Rising Register
* 8'h2E : Filter Delay Count Limit (FDL) Rising Register
* 8'h2F : MHD Falling Register
* 8'h30 : NHD Amount Falling Register
* 8'h31 : NCL Falling Register
* 8'h32 : FDL Falling Register
* 8'h33 : NHD Amount Touched Register
* 8'h34 : NCL Touched Register
* 8'h35 : FDL Touched Register
* 8'h5B : Debounce Touch & Release Register
* 8'h5C : Filter/Global CDC Configuration Register
* 8'h5D : Filter/Global CDT Configuration Register
* 8'h5E : Electrode Configuration (MHD) Register
* 8'h7B : AUTO-CONFIG Control Register 0
* 8'h7D : AUTO-CONFIG USL Register
* 8'h7E : AUTO-CONFIG LSL Register
* 8'h7F : AUTO-CONFIG Target Level Register    
* 8'h80 : Soft Reset Register

#### i_MPR121_DATA_IN
* 8'h01 : Maximum Half Delta (MHD) Rising Register
* 8'h01 : Noise Half Delta (NHD) Amount Rising Register
* 8'h0E : Noise Count Limit (NCL) Rising Register
* 8'h00 : Filter Delay Count Limit (FDL) Rising Register
* 8'h01 : MHD Falling Register
* 8'h05 : NHD Amount Falling Register
* 8'h01 : NCL Falling Register
* 8'h00 : FDL Falling Register
* 8'h00 : NHD Amount Touched Register
* 8'h00 : NCL Touched Register
* 8'h00 : FDL Touched Register
* 8'h00 : Debounce Touch & Release Register
* 8'h10 : Filter/Global CDC Configuration Register
* 8'h20 : Filter/Global CDT Configuration Register
* 8'h8F : Electrode Configuration (MHD) Register
* 8'h0B : AUTO-CONFIG Control Register 0
* 8'h9C : AUTO-CONFIG USL Register
* 8'h65 : AUTO-CONFIG LSL Register
* 8'h8C : AUTO-CONFIG Target Level Register
* 8'
