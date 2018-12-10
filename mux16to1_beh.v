// 16:1 MUX - Behavioral Model
//----------------------------
// FileName : mux16to1_beh.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 16/10/2018
//------------------
// Notes :-
//

module mux16to1_beh (in,sel,out);
 input [15:0]in;
 input [3:0]sel;
 output out;

 assign out = in[sel]; // Here, the Synthesis tool will create a HW MUX element

endmodule
