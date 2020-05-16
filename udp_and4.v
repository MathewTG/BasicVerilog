// 4 input AND using UDP
//----------------------------------
// FileName : udp_and4.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/20118
//------------------
// Notes :-
//
primitive udp_and4 (f,a,b,c,d);
input a,b,c,d;
output f;

 table
// a b c d : f
   0 ? ? ? : 0;
   ? 0 ? ? : 0;
   ? ? 0 ? : 0;
   ? ? ? 0 : 0;
   1 1 1 1 : 1;
 endtable

endprimitive
