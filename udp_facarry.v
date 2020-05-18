// User Defined Primitive - Full Adder Carry
//----------------------------------
// FileName : udp_facarry.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :-
//
primitive udp_facarry (carry,a,b,c);
input a,b,c;
output carry;

 table 
// a b c : carry
   0 0 ? : 0;
   0 ? 0 : 0;
   ? 0 0 : 0;
   1 1 ? : 1;
   1 ? 1 : 1;
   ? 1 1 : 1;
 endtable

endprimitive
