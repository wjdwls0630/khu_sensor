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




## Prerequisites

- Quartus II (Version 15.0)
- DE2-115 Board (Cyclone IV E, EP4CE115F29C7)
- MPR121 (Touch Sensor)
- ADS1292 (ECG Sensors)


## BlockDiagram
![Block Diagram](khu_sensor_blockdiagram.png)


## Modules

#### khu_sensor_top
[khu_sensor_top](./khu_sensor/Source/khu_sensor_top_manual.md) module assigns pins of fpga to parameters. The parameters are used to communicate with ADS1292(SPI), MPR121(I2C), PC(UART).

#### ads1292_controller
[ads1292_controller](./khu_sensor/Source/ADS1292/ads1292_controller_manual.md) module directly communicates with ADS1292 sensor through spi_master. States are defined in this module, and parameters are set validly to each state. The parameters defined by [ADS1292.pdf](./reference/ADS1292/ADS1292.pdf).        

#### spi_master
[spi_master](./khu_sensor/Source/ADS1292/spi_master.v) module is communication interface of ads1292. This follows the spi protocol. For more information about the spi protocol, click [here](http://www.ti.com/lit/ug/sprugp2a/sprugp2a.pdf).
SPI settings are CPOL = 0 and CPHA = 1.

#### mpr121_controller
[mpr121_controller](./khu_sensor/Source/MPR121/mpr121_controller_manual.md) module directly communicates with MPR121 sensor through i2c_master. States are defined in this module, and parameters are set valid to each state. The parameters defined by [MPR121.pdf](./reference/MPR121/MPR121.pdf).           


#### i2c_master
[i2c_master](./khu_sensor/Source/MPR121/i2c_master.v) is communication interface of mpr121. This follows the i2c protocol. For more information about the ic2 protocol, click [here](https://www.nxp.com/docs/en/user-guide/UM10204.pdf).

#### sensor_core
#### uart_controller
#### uart_rx
#### uart-tx
