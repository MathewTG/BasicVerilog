// 4 : 1 MUX - Structural Model
//-----------------------------
// FileName : mux4to1_struc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 16/10/2018
//------------------
// Notes :-
//

module mux4to1_struc (in,sel,out);
input [3:0]in;
input [1:0]sel;
output out;

wire [1:0]t;

mux2to1_struc M0(in[1:0],sel[0],t[0]);
mux2to1_struc M1(in[3:2],sel[0],t[1]);
mux2to1_struc M2(t,sel[1],out);

endmodule
