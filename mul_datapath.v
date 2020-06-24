// MUL - Datapath
//----------------------------------
// FileName : mul_datapath.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 24/06/2020
//------------------
// Notes :- Datapath of Multiplier
//	    Multiplication through repeated addition

module mul_datapath(LdA,LdB,LdP,clrP,decB,eqz,data_in,clk);
	input LdA,LdB,LdP,clrP,decB,clk;
	input [15:0] data_in;
	output eqz;

	wire [15:0] X,Y,Z,B_out,Bus;

	PIPO1 A (X,data_in,LdA,clk);
	PIPO2 P (Y,Z,LdP,clrP,clk);
	CNTR B (B_out,data_in,LdB,decB,clk);
	ADD AD (Z,X,Y);
	
	assign eqz = ~|B_out;
	
endmodule
