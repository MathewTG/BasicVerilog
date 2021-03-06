//D FF with synchronous set & reset
//----------------------------------
// FileName : dffsync.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :- 

module dffsync (q,qbar,d,set,reset,clk);
 input d,set,reset,clk;
 output reg q;
 output qbar;

 assign qbar = ~q;

 always @ (posedge clk)
  begin
   if (reset==0) q<=0;		//Active Low Reset
   else if (set==0) q<=1;	//Active Low Set
   else q<=d;
  end

endmodule
