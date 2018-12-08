// N-bit counter - Behavioural Model
//----------------------------------
// FileName : counter_N.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 15/10/2018
//------------------
// Notes :-
//
module counter_N (clr, clk, count);
parameter N=5;
input clk,clr;
output [0:N]count; reg [0:N]count; // Only reg type on the LHS of 'always'
                                   // Since old value may need to be stored
always @(negedge clk)
	if (clr)
		count <= 0;
	else
		count <= count+1;
endmodule
