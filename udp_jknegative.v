// Negative edge triggered J K FF using UDP
//----------------------------------
// FileName : udp_jknegative.v
// Type : primitive  
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 19/10/2018
//------------------
// Notes :-
//

primitive udp_jknegative (q,j,k,clk,clr);
input j,k,clk,clr;
output reg q;

 table
// j k clk  clr : q : q_new
   ? ?  ?    1  :  ? : 0; // Clear 
   ? ?  ?  (10) : ?  : -; // ignore falling edge of clear
   0 0 (10)  0  :  ? : -; // No change
   0 1 (10)  0  :  ? : 0; // Reset FF
   1 0 (10)  0  :  ? : 1; // Set FF
   1 1 (10)  0  :  0 : 1; // Toggle
   1 1 (10)  0  :  1 : 0; // Toggle
   ? ? (01)  0  :  ? : -; // No change for +ve edge of clock
 endtable

endprimitive
