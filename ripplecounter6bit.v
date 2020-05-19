// 6 bit Ripple Counter using udp_tff
//----------------------------------
// FileName : ripplecounter6bit.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 19/10/2018
//------------------
// Notes :-
//
module ripplecounter6bit (count,clk,clr);
input clk,clr;
output [5:0]count;

udp_tff F0 (count[0],clk,clr);
udp_tff F1 (count[1],count[0],clr);
udp_tff F2 (count[2],count[1],clr);
udp_tff F3 (count[3],count[2],clr);
udp_tff F4 (count[4],count[3],clr);
udp_tff F5 (count[5],count[4],clr);

endmodule

