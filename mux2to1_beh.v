// 2 : 1 MUX - Behavioural Model
//----------------------------------
// FileName : mux2to1_beh.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 16/10/2018
//------------------
// Notes :-
//

module mux2to1_beh (in,sel,out);
input [1:0]in;
input sel;
output out;

assign out = in[sel];

endmodule
