// Sequence Detector
//----------------------------------
// FileName : sequenceDet.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 26/05/2020
//------------------
// Notes :- Mealy machine implementation of a 0110 overlapping
//			sequence detector
//

module sequenceDet (x,clk,reset,z);
	input x,clk,reset;
	output reg z;
	
	reg [0:1] PS, NS;
	
	parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
	
	always @ (posedge clk or posedge reset)
	begin
		if (reset) PS <= S0;
		else PS <= NS;
	end
	
	always @ (PS,x)
		case (PS)
			S0 : begin
					z = 0;
					NS = x ? S0 : S1;
				 end
			S1 : begin
					z = 0;
					NS = x ? S2 : S1;
				 end
			S2 : begin
					z = 0;
					NS = x ? S3 : S1;
				 end
			S3 : begin
					z = x ? 0 : 1;
					NS = x ? S0 : S1;
				 end
		endcase
		
endmodule
					