## mpr121_controller.v
### Input

* i_CLK : 25MHz clock    
* i_RSTN       
   * 1'b1 : reset all process      
* [i_MPR121_REG_ADDR](#i_MPR121_REG_ADDR) [7:0] : MPR121 Register address
* [i_MPR121_DATA_IN](#i_MPR121_DATA_IN) [7:0] : data to write in MPR121 Register
* [i_MPR121_WRITE_ENABLE](#i_MPR121_WRITE_ENABLE)    
  * 1'b1 : order MPR to be on write state  
* [i_MPR121_READ_ENABLE](#i_MPR121_READ_ENABLE)    
  * 1'b1 : order MPR to be on data recieve state

### Output
* [o_MPR121_DATA_OUT](#o_MPR121_DATA_OUT) : read data from MPR121
* [o_MPR121_BUSY](#o_MPR121_BUSY)
  * 1'b1 : MPR either on WRITE or READ state   
* [o_MPR121_FAIL](#o_MPR121_FAIL)
  * 1'b1 : unexpected error occured during process         

### Inout
* I2C_SCL
* I2C_SDA


 - - -

#### i_MPR121_REG_ADDR
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

#### i_MPR121_WRITE_ENABLE
<pre>
<code>
</code>
</pre>
#### i_MPR121_READ_ENABLE
<pre>
<code>
</code>
</pre>
#### o_MPR121_DATA_OUT
Send the touch location of the MPR121 chip from ELE0 to ELE11.

#### o_MPR121_BUSY
<pre>
<code>
if (i_MPR121_WRITE_ENABLE || i_MPR121_READ_ENABLE)
  o_MPR121_BUSY <= 1'b1;
else o_MPR121_BUSY <= 1'b0;
</code>
</pre>

**not busy**   
SDA, SCL all high   
**busy**   
Start : 'Start' is change point of state when SDA changes from high to low.     
Stop : 'Stop' is change point of state when SDA changes from high to low.


#### o_MPR121_FAIL
<pre>
<code>
</code>
</pre>

#### I2C_SCL, I2C_SDA
<pre>
<code>
</code>
</pre>
