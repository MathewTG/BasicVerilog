// 1-bit FA TB using for loop
//----------------------------------
// FileName : fa_tb.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/05/2020
//------------------
// Notes :-
//
module fa_tb;
reg a,b,c;
wire sum,cout;
integer i;

fa_struc FA1 (sum,cout,a,b,c);

initial
 begin
  $dumpfile("fa_struc.vcd");
  $dumpvars(0,fa_tb);
  for (i = 0; i < 8; i = i + 1)
   begin
    {a,b,c} = i;  #5;
    $display ("T = %2d, a = %b, b = %b, c = %b, sum = %b, cout = %b",$time,a,b,c,sum,cout);
   end
  #10 $finish;
 end
endmodule
 