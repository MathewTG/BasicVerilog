// Cyclic Lamp TB
//----------------------------------
// FileName : fsmCyclicLamp_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 21/05/2020
//------------------
// Notes :-
module fsmCyclicLamp_tb;
reg clk;
wire [0:2] light;

fsmCyclicLamp2 FSM (.clock(clk),.light(light));

initial
begin
	clk = 1'b0;
	#100 $finish;
end

always #5 clk = ~clk;

initial
begin
	$dumpfile ("fsmCyclicLamp.vcd");
	$monitor ($time, " - RGY: %b", light);
end

endmodule
