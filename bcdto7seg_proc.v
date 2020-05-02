//
//----------------------------------
// FileName : bcdto7seg_proc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/2018
//------------------
// Notes :- BCD to 7 segment decoder - Procedural Model

module bcdto7seg_proc (bcd,seg);
input [3:0]bcd;
output reg [6:0]seg;

always @(bcd)
 case (bcd)
      0 : seg = 6'b0000001;
      1 : seg = 6'b1001111;
      2 : seg = 6'b0010010;
      3 : seg = 6'b0000110;
      4 : seg = 6'b1001100;
      5 : seg = 6'b0100100;
      6 : seg = 6'b0100000;
      7 : seg = 6'b0001111;
      8 : seg = 6'b0000000;
      9 : seg = 6'b0000100;
default : seg = 6'b1111111;
endcase
endmodule
