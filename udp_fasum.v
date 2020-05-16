// User Defined Primitives - Full Adder Sum Generation
//----------------------------------
// FileName : udp_fasum.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/20118
//------------------
// Notes :-
//
primitive udp_fasum (sum, a,b,c);
input a,b,c;
output sum;
 table
// a b c : sum
   0 0 0 : 0;
   0 0 1 : 1;
   0 1 0 : 1;
   0 1 1 : 0;
   1 0 0 : 1;
   1 0 1 : 0;
   1 1 0 : 0;
   1 1 1 : 1;
 endtable
endprimitive
