//
//----------------------------------
// FileName :  comparatorNbit_proc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/2018
//------------------
// Notes :- N-bit comparator - Procedural Model

module comparatorNbit_proc (A,B,lt,gt,eq);
parameter word_size = 16;
input [word_size:0]A,B;
output reg lt,gt,eq;

always @(*)
 begin
  gt = 0; lt = 0; eq = 0;
  if (A>B) gt = 1;
  else if (A<B) lt = 1;
  else eq = 1;
 end

endmodule
