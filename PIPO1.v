// MUL - Datapath - PIPO
//----------------------------------
// FileName : PIPO1.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 24/06/2020
//------------------
// Notes :- Parallel-In Parallel-Out Register
//

module PIPO1 (dout,din,ld,clk);
	input ld,clk;
	input [15:0] din;
	output reg [15:0] dout;

	always @ (posedge clk)
		if (ld) dout <= din;
endmodule
