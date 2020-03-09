# khu_sensor

##Introduction

## Contents

* [Prerequesites](#prerequisites)
* [BlockDiagram](#BlockDiagram)
* [Modules](#Modules)
	- [khu_sensor_top](#khu_sensor_top)
	- [ads1292_controller](#ads1292_controller)
	  + [spi_master : communication interface of ads1292](#spi_master : communication interface of ads1292)  
	- [mpr121_controller](#mpr121_controller)
	  + [i2c_master : communication interface of mpr121](#i2c_master : communication interface of mpr121)
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
'ads1292_controller' module directly communicates with ADS1292 sensor through spi_master. States are defined in this module, and parameters are set validly to each state. The parameters defiend by reference/ADS1292/ADS1292.pdf.        

ads1292_controller have six modes     
1. Idle mode
2. SYSCMD(System Command) mode
3. WREG(Write Register) mode
4. RREG(Read Register) mode
5. RDATAC(Read Data Continue) / SDATAC(Stop Data Continue) mode
6. SPI mode
Except Idle mode, each mode consists of detail states.

* ST_IDLE     
ST_IDLE is first state of ADS1292 after reset. Next state is decided by i_ADS1292_CONTROL transferred by sensor_core module.     
![ST_IDLE_Table](ST_IDLE_Table.png)       

* SYSCMD(system Command) mode
  - ST_SYSCMD_INIT       
    In this state, opcode is transferred to spi_master for system configuration.            

		There are four conditions in this state          
		1. r_ads_command == CM_START
		2. r_ads_command == CM_STOP
		3. r_ads_command == CM_RESET
		4. else(same with r_ads_command == CM_RDATAC or CM_SDATAC)            

  	But we don't use 1, 2, 3 condition because r_ads_command will never come to CM_START or CM_STOP or CM_RESET.
		As mentioned above, two methods are defined in ADS1292's start/stop/reset : use opcode <or> use physical sensor pin(start pin, reset pin) through tuning.
		Our chip is remodeled to have start pin and reset pin and these pins can be controlled directly by DE2-115, so we don't need to use opcode for start, stop, reset.
		So we use this state only for CM_RDATAC or CM_SDATAC, each transferred by ST_RDATAC_INIT or ST_SDATAC_INIT

	- ST_SYSCMD_SEND_CMD   

* WREG(Write Register) mode
  - ST_WREG_INIT       
		This state is start of writing register. 'r_spi_data_in' corresponds to DIN(Data Input) of datasheet. According to Table 13 of datasheet, DIN has to be 010rrrrr, rrrrr meaing register address being writed.                
		010 is defiend as 'OP_WRITE_REG' as PARAMETER at upper part of code, and rrrrr corresponds to r_ads_reg_addr, which is assigned by i_ADS1292_REG_ADDR received from sensor_core's ST_ADS_WREG_INIT state.
		'r_spi_data_in is sent to spi_master module, with 'r_spi_data_in_valid' used to generating sclk and MOSI.                   
		After sending to spi_master module, state moves to ST_WREG_SEND_REG_ADDR.

  - ST_WREG_SEND_REG_ADDR     
  - ST_WREG_SEND_REG_NUM     
  - ST_WREG_SEND_DATA     

* RREG(Read Register) mode
  - ST_RREG_INIT     
  - ST_RREG_SEND_REG_ADDR     
  - ST_RREG_SEND_REG_NUM     
  - ST_RREG_GET_DATA     
  - ST_RREG_WAIT_SCLK

* RDATAC(Read Data Continue) / SDATAC(Stop Data Continue) mode    
  - ST_RDATAC_INIT     
  - ST_RDATAC_WAIT_DRDY     
  - ST_RDATAC_WAIT_SETTILING_TIME     
  - ST_RDATAC_WAIT_SETTLED_DATA     
  - ST_RDATAC_WAIT_DRDY_PULSE     
  - ST_RDATAC_GET_DATA     
  - ST_RDATAC_WAIT_SCLK     
  - ST_SDATAC_INIT  

* SPI mode   
  - ST_SPI_SELECT     
  - ST_SPI_CLK_WAIT     


## spi_master : communication interface of ads1292
SPI settings are CPOL = 0 and CPHA = 1.

## mpr121_controller
## i2c_master : communication interface of mpr121

## sensor_core
* ADS1292
  - ST_ADS_WREG_CONFIRM
	This state controls writing value in register(register setting).
	If ADS1292 is busy, ADS1292's state remains here and ads1292_controller's state change to ST_IDLE.
	When ADS1292 is not busy, state changes to ST_ADS_SETTING and register setting task is continued.

## uart_controller
## uart_rx
## uart-tx



## Reference
[ADS1292 Datasheet](./reference/ADS1292/ADS1292.pdf)
