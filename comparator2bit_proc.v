//
//----------------------------------
// FileName :  comparator2bit_proc.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/2018
//------------------
// Notes :- 2-bit Comparator

module comparator2bit_proc (A1,A0,B1,B0,lt,gt,eq);
input A1,A0,B1,B0;
output reg lt,gt,eq;

always @(A1,B0,B1,B0)
 begin
  lt = ({A1,A0} < {B1,B0});
  gt = ({A1,A0} > {B1,B0});
  eq = ({A1,A0} == {B1,B0});
 end

endmodule
