// MUL - Datapath - Down Counter
//----------------------------------
// FileName : CNTR.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 24/06/2020
//------------------
// Notes :- Down Counter used as one of the operands
//

module CNTR (dout,din,ld,dec,clk);
	input ld,dec,clk;
	input [15:0] din;
	output reg [15:0] dout;
	
	always @ (posedge clk)
		if (ld) dout <= din;
		else if (dec) dout <= dout - 1;
endmodule
