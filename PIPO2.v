// MUL - Datapath - PIPO2
//----------------------------------
// FileName : PIPO2.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 24/06/2020
//------------------
// Notes :- Parallel-In Parallel-Out Register with clr
//

module PIPO2 (dout,din,ld,clr,clk);
	input ld,clr,clk;
	input [15:0] din;
	output reg [15:0] dout;

	always @ (posedge clk)
		if (clr) dout <= 16'b0;
		else if (ld) dout <= din;
endmodule

