// Negative edge T FF using UDP 
//----------------------------------
// FileName : udp_tff.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 19/10/2018
//------------------
// Notes :-
//
primitive udp_tff (q,clk,clr);
input clk,clr;
output reg q;

table
// clk clr : q : q_new
   ?     1   : ? : 0;
   ?    (10) : ? : -;
   (10)  0   : 1 : 0;
   (10)  0   : 0 : 1;
   (0?)  0   : ? : -;
endtable

endprimitive
