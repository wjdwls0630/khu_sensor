<h1 align="center"> khu_sensor </h1>

khu_sensor is a processor that communicates with MPR121 and ADS1292 and sends filtered **HoD & ECG** data to PC through RS232.  

### Design Manual [pdf]()


### khu_sensor layer
<img src="./03_Physical_Synthesis/pictures/08_chip_finish.png" alt="khu_sensor_pad" width="600" height="600"/>

#### Final Design Specification

|  Spec    |   Value  |
|----------|----------|
| Technology | S130nm |
| Operating Condition | SS 1.08V 125°C (Worst)|
| Main Clock | 58 MHz |
| Slack | 0.0589 ns |
| Die Area |  1.4mm x 1.4mm (56 I/O PAD)  |
| Design Area |  93007.58 µm^2  |
| Power | 3.0130 mW |

### 01_RTL_Synthesis

###### khu_sensor_pad
<img src="./01_RTL_Synthesis/pictures/khu_sensor_pad.png" alt="khu_sensor_pad" width="600" height="600"/>

###### khu_sensor_top
<img src="./01_RTL_Synthesis/pictures/khu_sensor_top.png" alt="khu_sensor_top" width="600" height="600"/>

###### ads1292_filter
<img src="./01_RTL_Synthesis/pictures/ads1292_filter.png" alt="ads1292_filter" width="600" height="600"/>

###### async_rstn_glitch_synchronizer
<img src="./01_RTL_Synthesis/pictures/async_glitch_synchronizer.png" alt="async_glitch_synchronizer" width="750" height="300"/>

###### clock_gating_cell
<img src="./01_RTL_Synthesis/pictures/clock_gate_cell.png" alt="clock_gate_cell" width="450" height="300"/>

#### Design Performance

|  Spec (SS 1.08V 125°C)   |   Compile  | Re-time | Clock-Gating |
|----------|------------|--------|-------------|
| Slack (ns) | 0.0 | 0.0  | 4.74  |
| Design Area (µm^2) |  91019.26  | 89087.26 | 86101.93 |
| Power (mw) | 110.4946 | 110.4860 | 3.0130 |

### 03_Physical_Synthesis

#### 00_read_design

<img src="./03_Physical_Synthesis/pictures/00_read_design.png" alt="00_read_design" width="600" height="600"/>

#### 01_floorplan

<img src="./03_Physical_Synthesis/pictures/01_floorplan.png" alt="01_floorplan" width="600" height="600"/>

#### 02_powerplan

<img src="./03_Physical_Synthesis/pictures/02_powerplan.png" alt="02_powerplan" width="600" height="600"/>

<img src="./03_Physical_Synthesis/pictures/02_powerplan_VDD_VSS_check.png" alt="02_powerplan_VDD_VSS_check" width="300" height="300"/>
<img src="./03_Physical_Synthesis/pictures/02_powerplan_VDD_12I_check.png" alt="02_powerplan_VDD_12I_check" width="300" height="300"/>

#### 03_place_opt

<img src="./03_Physical_Synthesis/pictures/03_place_opt_zoom.png" alt="03_place_opt_zoom" width="600" height="600"/>

#### 04_clock_opt_cts

<img src="./03_Physical_Synthesis/pictures/04_clock_opt_cts_clock_view.png" alt="04_clock_opt_cts_clock_view" width="600" height="600"/>
<img src="./03_Physical_Synthesis/pictures/04_clock_opt_cts_clock_view_zoom_1.png" alt="04_clock_opt_cts_clock_view_zoom_1" width="600" height="400"/>

#### 05_clock_opt_post_cts

#### 06_route

<img src="./03_Physical_Synthesis/pictures/06_route_zoom.png" alt="06_route_zoom" width="600" height="300"/>
<img src="./03_Physical_Synthesis/pictures/06_route_zoom_1.png" alt="06_route_zoom_1" width="600" height="300"/>

#### 07_route_opt + clock_shielding

<img src="./03_Physical_Synthesis/pictures/07_route_opt_clock_shielding.png" alt="07_route_opt_clock_shielding" width="600" height="300"/>

#### 08_chip_finish

<img src="./03_Physical_Synthesis/pictures/08_chip_finish.png" alt="khu_sensor_pad" width="600" height="600"/>
