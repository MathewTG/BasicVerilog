// 16 : 1 MUX - Structural Model
//------------------------------
// FileName : mux16to1_struc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 16/10/2018
//------------------
// Notes :-
//

module mux16to1_struc (in, out, sel);
input [15:0]in;
input [3:0]sel;
output out;

wire [3:0]t;

mux4to1_struc M0 (in[3:0],sel[1:0],t[0]);
mux4to1_struc M1 (in[7:4],sel[1:0],t[1]);
mux4to1_struc M2 (in[11:8],sel[1:0],t[2]);
mux4to1_struc M3 (in[15:12],sel[1:0],t[3]);
mux4to1_struc M4 (t,sel[3:2],out);

endmodule
