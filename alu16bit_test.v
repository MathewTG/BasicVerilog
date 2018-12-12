// TestBench 16 bit ALU
//----------------------
// FileName : alu16bit_test.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/2018
//------------------
// Notes :-
//
module alu16bit_test;
 reg [15:0]X,Y;
 wire [15:0]Z;
 wire S,ZR,CY,P,V;

 alu16bit_struc DUT (X,Y,Z,S,ZR,CY,P,V);

 initial
  begin
   $dumpfile ("alu16bit_struc.vcd"); $dumpvars (0,alu16bit_test);
   $monitor ($time," - X = %h, Y = %h, Z = %h, S = %b, Z = %b, CY = %b, P = %b, V = %b",
             X,Y,Z,S,ZR,CY,P,V);
   #5 X = 16'h8fff; Y = 16'h8000;
   #5 X = 16'hfffe; Y = 16'h0002;
   #5 X = 16'hAAAA; Y = 16'h5555;
   #5 $finish;
  end
endmodule
