//
//----------------------------------
// FileName : adder4bit_struc
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/2018
//------------------
// Notes :- Structural Model

module adder4bit_struc (S,cout,A,B,cin);
input [3:0]A,B;
input cin;
output [3:0]S;
output cout;

wire c1,c2,c3;

fa_struc FA0 (S[0],c1,A[0],B[0],cin);
fa_struc FA1 (S[1],c2,A[1],B[1],c1);
fa_struc FA2 (S[2],c3,A[2],B[2],c2);
fa_struc FA3 (S[3],cout,A[3],B[3],c3);

endmodule
