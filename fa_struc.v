// Full Adder - Structural Model
//------------------------------
// FileName : adder4bit_struc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/2018
//------------------
// Notes :-
//

module fa_struc (s,cout,a,b,c);
input a,b,c;
output s,cout;

wire s1,c1,c2;

// Implementation of FA with min no. of gates
xor G1 (s1,a,b), G2 (s,s1,c), G3 (cout,c2,c1);
and G4 (c1,a,b), G5 (c2,s1,c);

endmodule
