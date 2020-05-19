// 4-bit Shift register
//----------------------------------
// FileName : shiftreg4b_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/05/2020
//------------------
// Notes :-
//

module shiftreg4b_tb;
reg clk,clr,in;
wire out;

shiftreg4b DUT (clk,clr,in,out);

initial
 begin
 clk = 1'b0;
 #2 clr = 1'b0;
 #5 clr = 1'b1;
 end

always #5 clk = ~clk;

initial
 begin
 #2;
 repeat(2)
  begin
  #10 in = 1'b0;
  #10 in = 1'b0;
  #10 in = 1'b1;
  #10 in = 1'b1;
  end
 end

initial
 begin
 $dumpfile("shiftreg4b.vcd");
 $dumpvars(0,shiftreg4b_tb);
 #200 $finish;
 end
endmodule
