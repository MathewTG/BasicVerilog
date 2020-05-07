// Ring Counter - Procedural Model
//----------------------------------
// FileName : ringcounter_proc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------

module ringcounter_proc (clk,init,count);
input clk,init;
output reg [7:0]count;

always @(posedge clk)
 begin
  if (init) count = 8'b1000000;
  else 
   begin
    count <= count << 1;
    count[0] <= count[7];
   end
 end

endmodule