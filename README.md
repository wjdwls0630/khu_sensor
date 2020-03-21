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
![Block Diagram](khu_sensor_blockdiagram.png)


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
  * 8'h0E -> written in vLOFF_SENS  
  * 8'h00 -> written in LOFF_STAT  
  * 8'h02 -> written in RESP1  
  * 8'h87 -> written in RESP2  
  * 8'h00 -> written in GPIO  

* i_SPI_MISO : 1bit data that ADS1292 sends to DE2-115    
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

* reg o_ADS1292_RESET   
 * It is pulled high at idle mode, power on reset state.  

* reg o_ADS1292_START   
 * It goes high when start pin is pulled high or in RDATAC mode.

* reg o_SPI_CSN   
 * It remain low when ADS1292 communicate with master.  
	 It goes high in idle mode or waiting specific state.

## mpr121_controller


## sensor_core

## uart_controller
## uart_rx
## uart-tx
