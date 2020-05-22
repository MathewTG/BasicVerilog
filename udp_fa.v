// Full Adder using the User Defined Primitives
//----------------------------------
// FileName : udp_fa.v
// Type : primitive
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :-
//
module udp_fa (sum,carry,a,b,c);
input a,b,c;
output sum,carry;

udp_fasum SUM (sum,a,b,c);
udp_facarry CARRY (carry,a,b,c);

endmodule
