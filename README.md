# khu_sensor

## Introduction

## Contents

* [Prerequesites](#prerequisites)
* [BlockDiagram](#BlockDiagram)
* [Modules](#Modules)
   - [khu_sensor_top.v](#khu_sensor_top.v)
   - [ads1292_controller.v](#ads1292_controller.v)
     + [spi_master.v](#spi_master.v)  
   - [mpr121_controller.v](#mpr121_controller.v)
     + [i2c_master.v](#i2c_master.v)
   - [sensor_core.v](#sensor_core.v)
   - [uart_controller.v](#uart_controller.v)
     + [uart_rx.v](#uart_rx.v)
      + [uart_tx.v](#uart_tx.v)




## Prerequisites

- Quartus II (Version 15.0)
- DE2-115 Board (Cyclone IV E, EP4CE115F29C7)
- MPR121 (Touch Sensor)
- ADS1292 (ECG Sensors)


## BlockDiagram
![Block Diagram](khu_sensor_blockdiagram.png)


## Modules

#### khu_sensor_top.v
[khu_sensor_top.v](./khu_sensor/Source/khu_seonsor_top.v) module assigns pins of fpga to parameters. The parameters are used to communicate with ADS1292(SPI), MPR121(I2C), PC(UART).

#### ads1292_controller.v
[ads1292_controller.v](./khu_sensor/Source/ads1292_controller.v) module directly communicates with ADS1292 sensor through [spi_master.v](./khu_sensor/Source/spi_master.v). States are defined in this module, and parameters are set validly to each state. The parameters defined by [ADS1292.pdf](./reference/ADS1292/ADS1292.pdf).        

#### spi_master.v
[spi_master.v](./khu_sensor/Source/spi_master.v) module is communication interface of ads1292.
SPI settings are CPOL = 0 and CPHA = 1.

#### mpr121_controller.v
[mpr121_controller.v](./khu_sensor/Source/mpr121_controller.v) module directly communicates with MPR121 sensor through [i2c_master.v](./khu_sensor/Source/i2c_master.v). States are defined in this module, and parameters are set valid to each state. The parameters defined by [MPR121.pdf](./reference/MPR121/MPR121.pdf).           


#### i2c_master.v
[i2c_master.v](./khu_sensor/Source/i2c_master.v) is communication interface of mpr121.

#### sensor_core.v
#### uart_controller.v
#### uart_rx.v
#### uart-tx.v
