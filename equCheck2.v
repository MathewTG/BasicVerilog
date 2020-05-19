//2-bit Equlaity Checker
//----------------------------------
// FileName : equCheck2.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/05/2020
//------------------
// Notes :-
// 
`timescale 1ns/100ps // timescale <unit of #>/<resolution of sim accuracy>
module equCheck2 (x,y,z);
input [1:0] x, y;
output z;

assign z = (x[0]&y[0]&x[1]&y[1])|(~x[0]&~y[0]&x[1]&y[1])|(x[0]&y[0]&~x[1]&~y[1])|(~x[0]&~y[0]&~x[1]&y[1]);

endmodule
