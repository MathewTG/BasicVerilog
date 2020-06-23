// TB - Serial Adder FSM
//----------------------------------
// FileName : serialAdderFSM_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 23/06/2020
//------------------
// Notes :- 
//

module serialAdderFSM_tb;
	reg a,b,clk,reset;
	wire sum,carry;

	serialAdderFSM dut (a,b,clk,reset,sum,carry);

	initial
	begin
		$dumpfile("serialAdderFSM.vcd");
		$dumpvars(0,serialAdderFSM_tb);
		clk = 1'b0;
		reset = 1'b1;
		#15 reset = 1'b0;
	end

	always #5 clk = ~clk;

	initial
	begin
		#2 a = 1; b = 1;
		#10 a = 0; b = 0;
		#10 a = 0; b = 1;
		#10 a = 1; b = 0;
		#10 a = 1; b = 1;
		#10 a = 0; b = 1;
		#10 a = 1; b = 0;
		#10 a = 1; b = 1;
		#10 a = 0; b = 0;
		#10 $finish;	
	end
endmodule

