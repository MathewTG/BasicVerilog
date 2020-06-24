// MUL - Datapath - Adder
//----------------------------------
// FileName : ADD.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 24/06/2020
//------------------
// Notes :- 
//

module ADD (out,in1,in2);
	input [15:0] in1,in2;
	output reg [15:0] out;

	always @ (*)
	 out = in1 + in2;
endmodule
