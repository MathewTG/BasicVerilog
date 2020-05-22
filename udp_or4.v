// 4 input OR using UDP 
//----------------------------------
// FileName : udp_or4.v
// Type : primitive 
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :-
//
primitive udp_or4 (f,a,b,c,d);
input a,b,c,d;
output f;

 table
// a b c d : f
   1 ? ? ? : 1;
   ? 1 ? ? : 1;
   ? ? 1 ? : 1;
   ? ? ? 1 : 1;
   0 0 0 0 : 0;
 endtable

endprimitive
