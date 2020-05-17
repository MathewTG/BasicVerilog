// Positive edge triggered SR FF using UDP 
//----------------------------------
// FileName : udp_srpositive.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 19/10/2018
//------------------
// Notes :-
//
primitive udp_srpositive (q,s,r,clk,clr);
input s,r,clk,clr;
output reg q;

 table
// s r clk clr  : q : q_new
   ? ?  ?   1   : ? : 0;
   ? ?  ?  (10) : ? : -;
   0 0 (01) 0   : ? : -;
   0 1 (01) 0   : ? : 0;
   1 0 (01) 0   : ? : 1;
   1 1 (01) 0   : ? : x;
   ? ? (10) 0   : ? : -;
 endtable

endprimitive
