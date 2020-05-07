// 4-bit Shift register
//----------------------------------
// FileName : shiftreg4b.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 07/05/2020
//------------------

module shiftreg4b (clk, clr, A, E);
input clk, clr, A;
output reg E;
reg B, C, D;

always @ (posedge clk or negedge clr)
begin
 if (!clr) begin B <= 0; C <= 0; D <= 0; E <= 0; end
 else 
  begin
   E <= D;
   D <= C;
   C <= B;
   B <= A;
  end
end

endmodule

