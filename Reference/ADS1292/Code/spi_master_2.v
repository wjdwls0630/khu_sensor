/*
SPI master
by trangdld
10/2019
include:
+ clock generator
+ shift registers
//              CLKS_PER_HALF_BIT - Sets frequency of o_SPI_Clk.  o_SPI_Clk is
//              derived from i_Clk.  Set to integer number of clocks for each
//              half-bit of SPI data.  E.g.25 MHz clk, CLKS_PER_HALF_BIT 8
//              would create o_SPI_CLK of 1.5625 MHz.  Must be >= 2

// SPI_MODE, can be 0, 1, 2, or 3.
//              Can be configured in one of 4 modes:
//              Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)
//               0   |             0             |        0
//               1   |             0             |        1
//               2   |             1             |        0
//               3   |             1             |        1
*/
module spi_master
#(parameter SPI_MODE = 0,
  parameter CLKS_PER_HALF_BIT = 64)
(
	clk,
	rstn,
	din,
	din_valid,
	tx_ready,
	dout,
	dout_valid,
	sclk,
	miso,
	mosi
);

input clk;
input rstn;
input [7:0] din;
input din_valid;		// Data Valid Pulse with din
output reg tx_ready; // transmit done, ready for next byte
output reg [7:0] dout;
output reg dout_valid;
output reg sclk;
input miso;
output reg mosi;


// SPI Interface (All Runs at SPI Clock Domain)
wire w_CPOL;     // Clock polarity
wire w_CPHA;     // Clock phase
// $clog2(CLKS_PER_HALF_BIT*2)= 4
reg [7:0] r_sclk_count;
reg r_sclk;
reg [7:0] r_sclk_edges;
reg r_Leading_Edge;
reg r_Trailing_Edge;
reg       r_din_valid;
reg [7:0] r_din;

reg [7:0] r_RX_Bit_Count;
reg [7:0] r_TX_Bit_Count;

// CPOL: Clock Polarity
// CPOL=0 means clock idles at 0, leading edge is rising edge.
// CPOL=1 means clock idles at 1, leading edge is falling edge.
assign w_CPOL  = (SPI_MODE == 2) | (SPI_MODE == 3);
// CPHA: Clock Phase
// CPHA=0 means the "out" side changes the data on trailing edge of clock
//              the "in" side captures data on leading edge of clock
// CPHA=1 means the "out" side changes the data on leading edge of clock
//              the "in" side captures data on the trailing edge of clock
assign w_CPHA  = (SPI_MODE == 1) | (SPI_MODE == 3);

// Purpose: Generate SPI Clock correct number of times when din_valid pulse comes
always @(posedge clk or negedge rstn)
begin
 if (~rstn)
 begin
	tx_ready      <= 1'b0;
	r_sclk_edges <= 0;
	r_Leading_Edge  <= 1'b0;
	r_Trailing_Edge <= 1'b0;
	r_sclk       <= w_CPOL; // assign default state to idle state
	r_sclk_count <= 0;
 end
 else
 begin

	// Default assignments
	r_Leading_Edge  <= 1'b0;
	r_Trailing_Edge <= 1'b0;
	
	if (din_valid)
	begin
	  tx_ready      <= 1'b0;
	  r_sclk_edges <= 8'd16;  // Total # edges in one byte ALWAYS 16
	end
	else if (r_sclk_edges > 0)
	begin
	  tx_ready <= 1'b0;
	  if (r_sclk_count == CLKS_PER_HALF_BIT*2-1)
	  begin
		 r_sclk_edges <= r_sclk_edges - 8'd1;
		 r_Trailing_Edge <= 1'b1;
		 r_sclk_count <= 0;
		 r_sclk       <= ~r_sclk;
	  end
	  else if (r_sclk_count == CLKS_PER_HALF_BIT-1)
	  begin
		 r_sclk_edges <= r_sclk_edges - 8'd1;
		 r_Leading_Edge  <= 1'b1;
		 r_sclk_count <= r_sclk_count + 8'd1;
		 r_sclk       <= ~r_sclk;
	  end
	  else
	  begin
		 r_sclk_count <= r_sclk_count + 8'd1;
	  end
	end  
	else
	begin
	  tx_ready <= 1'b1;
	end
 end // else: if(~rstn)
end // always @(posedge clk or negedge rstn)

// Purpose: Register din when Data Valid is pulsed.
// Keeps local storage of byte in case higher level module changes the data
always @(posedge clk or negedge rstn)
begin
 if (~rstn)
 begin
	r_din <= 8'h00;
	r_din_valid   <= 1'b0;
 end
 else
	begin
	  r_din_valid <= din_valid; // 1 clock cycle delay
	  if (din_valid)
	  begin
		 r_din <= din;
	  end
	end 
end 

// Purpose: Generate MOSI data
// Works with both CPHA=0 and CPHA=1
always @(posedge clk or negedge rstn)
begin
 if (~rstn)
 begin
	mosi     <= 1'b0;
	r_TX_Bit_Count <= 8'b0000_0111; // send MSb first
 end
 else
 begin
	// If ready is high, reset bit counts to default
	if (tx_ready)
	begin
	  r_TX_Bit_Count <= 8'b0000_0111;
	end
	// Catch the case where we start transaction and CPHA = 0
	else if (r_din_valid & ~w_CPHA)
	begin
	  mosi     <= r_din[8'b0000_0111];
	  r_TX_Bit_Count <= 8'b0000_0110;
	end
	else if ((r_Leading_Edge & w_CPHA) | (r_Trailing_Edge & ~w_CPHA))
	begin
	  r_TX_Bit_Count <= r_TX_Bit_Count - 1;
	  mosi     <= r_din[r_TX_Bit_Count];
	end
 end
end


// Purpose: Read in MISO data.
always @(posedge clk or negedge rstn)
begin
 if (~rstn)
 begin
	dout      <= 8'h00;
	dout_valid        <= 1'b0;
	r_RX_Bit_Count <= 8'b0000_0111;
 end
 else
 begin

	// Default Assignments
	//dout_valid   <= 1'b0;

	if (tx_ready) // Check if ready is high, if so reset bit count to default
	begin
	  r_RX_Bit_Count <= 8'b0000_0111;
	  dout_valid   <= 1'b0;
	end
	//else if ((r_Leading_Edge & ~w_CPHA) | (r_Trailing_Edge & w_CPHA))
	
	// Trang: Due to the delay of signal from slave toward master
	//  	  so I need to capture input data at falling edge
	else if ((r_Trailing_Edge & ~w_CPHA) | (r_Leading_Edge & w_CPHA))
	begin
	  dout[r_RX_Bit_Count] <= miso;  // Sample data
	  r_RX_Bit_Count            <= r_RX_Bit_Count - 1;
	  if (r_RX_Bit_Count == 8'b000)
	  begin
		 dout_valid   <= 1'b1;   // Byte done, pulse Data Valid
	  end
	end
 end
end
  
 
// Purpose: Add clock delay to signals for alignment.
always @(posedge clk or negedge rstn)
begin
 if (~rstn)
 begin
	sclk  <= w_CPOL;
 end
 else
	begin
	  sclk <= r_sclk;
	end 
end 
  
endmodule
