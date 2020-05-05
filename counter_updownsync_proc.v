// Synchronous Up/Down counter */
//----------------------------------
// FileName :  counter_updownsync_proc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :- Procedural Model

module counter_updownsync_proc (mode,clr,ld,d_in,clk,count);
input mode,clr,ld,clk;
input [7:0]d_in;
output reg [0:7]count;

always @(posedge clk)
 if (ld) count <= d_in;
 else if (clr) count <= 0;
 else if (mode)	 count <= count + 1;
 else count <= count - 1;

endmodule
