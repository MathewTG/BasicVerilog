// Sequence Detector 2
//----------------------------------
// FileName : sequenceDet2.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 22/06/2020
//------------------
// Notes :- Mealy machine implementation of a 101010 overlapping
//			sequence detector
//
module sequenceDet2 (x,clk,reset,z);
	input x,clk,reset;
	output reg z;
	
	reg [0:2] PS, NS;
	
	parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101;
	
	always @ (posedge clk or posedge reset)
	begin
		if (reset) PS <= S0;
		else PS <= NS;
	end
	
	always @ (PS,x)
		case (PS)
			S0 : begin
					z = 0;
					NS = x ? S1 : S0;
				 end
			S1 : begin
					z = 0;
					NS = x ? S1 : S2;
				 end
			S2 : begin
					z = 0;
					NS = x ? S3 : S0;
				 end
			S3 : begin
					z = 0;
					NS = x ? S1 : S4;
				 end
			S4 : begin
					z = 0;
					NS = x ? S5 : S0;
				end
			S5 : begin
					z = x ? 0 : 1;
					NS = x ? S1 : S4;
				end
			default : begin
					z = 0;
					NS = S0;
				end
		endcase
		
endmodule
	

