// N-bit counter - TB
//----------------------------------
// FileName : counter_N_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 15/10/2018
//------------------
// Notes :-
//

module counter_N_tb;
parameter N = 7;
reg clk,clr;
wire [0:N-1] count;

counter_N #(N) C1 (clr,clk,count);

initial clk = 1'b0;

always #5 clk = ~clk;

initial
 begin
 clr = 1'b1;
 #15 clr = 1'b0;
 #200 clr = 1'b1;
 #10 $finish;
 end

initial
 begin
 $dumpfile ("counter_N.vcd");
 $dumpvars (0,counter_N_tb);
 $monitor ($time, " Count: %d", count);
 end
endmodule 