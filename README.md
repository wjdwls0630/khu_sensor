## Sensor_core.v         
<span style="color=red"> Input </span>

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



- - -
