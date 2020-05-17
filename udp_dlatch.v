// D latch using UDP
//----------------------------------
// FileName : udp_dlatch.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 19/10/20118
//------------------
// Notes :-
//
primitive udp_dlatch (q,d,clk,clr);
 input d,clk,clr;
 output reg q;

 initial 
  q = 0; // This is optional

 table
// d clk clr : q : q_new
   ?  ?   1  : ? : 0;  // Latch is cleared
   0  1   0  : ? : 0;  // Latch is reset
   1  1   0  : ? : 1;  // Latch is set
   ?  0   0  : ? : -;  // Retains previous value
 endtable

endprimitive
