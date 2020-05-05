//4 bit counter with asynchronous reset
//----------------------------------
// FileName : counter4bitasync_proc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :- Procedural Model

module counter4bitasync_proc (clk,rst,count);
 input clk,rst;
 output reg [3:0]count;

 always @ (posedge clk, posedge rst)
  begin
   if (rst)
    count <= 0;
   else
    count <= count + 1;
  end

endmodule
