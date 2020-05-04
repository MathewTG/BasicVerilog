//N-bit Ripple Carry adder using Generate Statement
//----------------------------------
// FileName :  ripplecarryadderN_generate.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/2018
//------------------
// Notes :- Using generate statement.

module ripplecarryadderN_generate(sum,cout,a,b,cin);
parameter N = 8;
input [N-1:0]a,b;
input cin;
output [N-1:0]sum;
output cout;
wire [N:0]carry; // cout = carry[N]

assign carry[0] = cin;
assign cout = carry[N];

genvar i;
generate for (i=0;i<N;i=i+1)
 begin : fa_loop
  fa_struc FA (sum[i],carry[i+1],a[i],b[i],carry[i]);
 end
endgenerate

endmodule
