// TB - MUL
//----------------------------------
// FileName : mul_test.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 24/06/2020
//------------------
// Notes :- 
//

module mul_test();
	reg start, clk;
	reg [15:0]data_in;
	wire done;

	wire LdA,LdB,LdP,clrP,decB,eqz;

	mul_datapath DP (LdA,LdB,LdP,clrP,decB,eqz,data_in,clk);
	mul_controlpath CP (LdA,LdB,LdP,clrP,decB,done,clk,eqz,start);

	initial
	begin
		clk = 1'b0;
		#3 start = 1'b1;
		#500 $finish;
	end

	always #5 clk = ~clk;

	initial
	begin
		$dumpfile("Mutliplier.vcd");
		$dumpvars(0,mul_test);
		$monitor($time, "%d %b", DP.Y, done);
	end

	initial
	begin
		#17 data_in = 17;
		#10 data_in = 5;
	end
endmodule
