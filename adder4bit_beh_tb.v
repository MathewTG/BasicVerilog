// 4 bit adder - TB using random
//----------------------------------
// FileName : adder4bit_beh_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/05/2020
//------------------
// Notes :-
//

module adder4bit_beh_tb;
reg [3:0] a,b;
wire [3:0]sum;
wire cout;
integer seed;

adder4bit_beh adder (sum, cout,a,b,0);

initial seed = 6;

initial
begin
	repeat (5)
begin
	a = $random(seed);
	b = $random(seed);
	#10;
	$display ("T: %3d, a: %2h, b: %2h, sum: %2h",$time, a, b, sum);
end
end
endmodule
