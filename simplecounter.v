// Simple Counter - Behavioral Model
//----------------------------------
// FileName : simplecounter.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 15/10/2018
//------------------
// Notes :-
// 1. Asynchronous Positive Edge trigerred Active High Reset

module simple_counter (clk, rst, count);
input clk,rst;
output [31:0]count;
reg [31:0]count;

always @(posedge clk or posedge rst)// Asynchronous Positive Edge-triggered                        
begin                               // Active High Reset
	if (rst)
		count = 32'b0;
	else
		count = count+1;
end
endmodule
