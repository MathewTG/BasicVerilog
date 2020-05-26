// TB - Sequence Detector
//----------------------------------
// FileName : sequenceDet.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 26/05/2020
//------------------
// Notes :- 
//

module sequenceDet_tb;
	reg x,clk,reset;
	wire z;
	
	sequenceDet Det(x,clk,reset,z);
	
	initial
	begin
		$dumpfile("sequenceDet.vcd");
		$dumpvars(0,sequenceDet_tb);
		clk = 1'b0;
		reset = 1'b1;
		#15 reset = 1'b0;
	end
	
	always #5 clk = ~clk;
	
	initial
	begin
		#12 x = 0; #10 x = 0; #10 x = 1; #10 x = 1;
		#10 x = 0; #10 x = 0; #10 x = 1; #10 x = 1;
		#10 x = 0; #10 x = 0; #10 x = 1; #10 x = 1;
		#10 x = 0; #10 x = 0; #10 x = 1; #10 x = 1;
		#10 $finish;
	end

endmodule
