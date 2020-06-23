// Serial Adder FSM
//----------------------------------
// FileName : serialAdderFSM.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 23/06/2020
//------------------
// Notes :- Serial Adder using carry as the state variable
//

module serialAdderFSM(a,b,clk,reset,sum,carry);
	input a,b,clk,reset;
	//output sum;
	output reg sum,carry;

	reg C_NS;

	parameter C0 = 1'b0, C1 = 1'b1;

	always @(posedge clk, posedge reset)
	begin
		if (reset)
		begin
			sum  <= 1'b0;
			carry <= C0;
		end
		else
			carry <= C_NS;
	end

	always @(carry,a,b)
	begin
		case (carry)
			C0 : C_NS = (a & b) ? C1 : C0;
			C1 : C_NS = (a | b) ? C1 : C0;
			default : C_NS = carry;
		endcase
		
	end

	always @(reset,carry,a,b)
	begin
		if (reset)
			sum = 1'b0;
		else
			sum = (a ^ b ^ carry);
	end
endmodule
