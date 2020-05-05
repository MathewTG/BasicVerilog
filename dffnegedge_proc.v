//D FF negative edge trigger - Sequential Logic Example
//----------------------------------
// FileName :  dffnegedge_proc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :- Procedural Model

module dffnegedge_proc (D,clk,Q,Qbar);
input D,clk;
output reg Q,Qbar;

always @(negedge clk)
 begin
  Q = D;
  Qbar = ~D;
 end

endmodule
