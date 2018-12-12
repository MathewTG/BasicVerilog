// TestBench 16:1 MUX
//----------------------------------
// FileName : mux16to1_test.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 16/10/2018
//------------------
// Notes :-
//

module mux16to1_test;
 reg [15:0]A;
 reg [3:0]S;
 wire F;

mux16to1_beh M(.in(A),.sel(S),.out(F));

initial
 begin
  $dumpfile ("mux16to1.vcd"); // Set the name of the Value Change Dump (VCD) file.
  $dumpvars (0,mux16to1_test); // Set Mode to 0 - 
  $monitor ($time," - A=%h, S=%h, F=%b",A,S,F); // Intelligent print fn -  
  // Prints at the end of the cycle if any change of varibales in sensitivity list. 
  #5 A=16'h3f0a; S=4'h0;
  #5 S=4'h1;
  #5 S=4'h6;
  #5 S=4'hc;
  #5 $finish; // End of Simulation
 end
endmodule
