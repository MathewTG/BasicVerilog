// TB - Sequence Detector 2
//----------------------------------
// FileName : sequenceDet2_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 22/06/2020
//------------------
// Notes :- 
//

module sequenceDet2_tb;
	reg x,clk,reset;
	wire z;
	
	sequenceDet2 Det(x,clk,reset,z);
	
	initial
	begin
		$dumpfile("sequenceDet2.vcd");
		$dumpvars(0,sequenceDet2_tb);
		clk = 1'b0;
		reset = 1'b1;
		#15 reset = 1'b0;
	end
	
	always #5 clk = ~clk;
	
	initial
	begin
		#12 x = 0; #10 x = 0; #10 x = 1; #10 x = 0;
		#10 x = 1; #10 x = 0; #10 x = 1; #10 x = 0;
		#10 x = 0; #10 x = 0; #10 x = 1; #10 x = 0;
		#10 x = 1; #10 x = 0; #10 x = 1; #10 x = 1;
		#10 $finish;
	end

endmodule
