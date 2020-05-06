//
//----------------------------------
// FileName :  bitwisexor_generate.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :- Example using generate statement.

module bitwisexor_generate (f,a,b);
parameter N = 16;
input [N-1:0]a,b;
output [N-1:0]f;

genvar p;

generate for (p=0;p<N;p=p+1)
 begin : xor1p
  xor XG (f[p], a[p], b[p]);
 end
endgenerate

endmodule

