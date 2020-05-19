// 2-bit Equality Checker TB
//----------------------------------
// FileName : equCheck2_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/05/2020
//------------------
// Notes :-
//
`timescale 1ns/100ps
module equCheck2_tb;
reg [1:0]x,y;
wire z;

equCheck2 C_2b (.x(x), .y(y), .z(z));

initial
begin
$dumpfile ("equCheck2.vcd");
$dumpvars (0,equCheck2_tb);
x = 2'b01; y = 2'b00;
#10 x = 2'b10; y = 2'b10;
#10 x = 2'b01; y = 2'b11;
#10 $finish;
end

initial 
begin
$monitor ("t = %d x = 2%b y = 2%b z = %d", $time, x, y, z);
end
endmodule  