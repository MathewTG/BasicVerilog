// TB for Even Parity Generator using FSM
//----------------------------------
// FileName : evenParityGen_FSM_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 26/05/2020
//------------------
// Notes :-
//

module evenParityGen_FSM_tb;
	reg x,clk;
	wire z;
	
	evenParityGen Gen_DUT (x,clk,z);
	
	initial
	begin
		$dumpfile("evenParityGen_FSM.vcd");
		$dumpvars(0,evenParityGen_FSM_tb);
		clk = 1'b0;
	end
	
	always #5 clk = ~clk;
	
	initial
	begin
		 #2 x = 0; #10 x = 1; #10 x = 1; #10 x = 1;
		#10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
		#10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
		#10 $finish;
	end
endmodule
		