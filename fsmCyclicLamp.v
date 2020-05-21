// Cyclic Lamp - FSM Example
//----------------------------------
// FileName : fsmCyclicLamp.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 21/05/2020
//------------------
// Notes :- 3 States. S0 - RED, S1 - GREEN, S2 - YELLOW
//	    5 FF's synthesized, since <= was used for 'light' too.
//

module fsmCyclicLamp (clock, light);
input clock;
output reg [0:2]light;
reg [0:1] state;
parameter s0 = 00, s1 = 01, s2 = 10;
parameter RED = 3'b100, GREEN = 3'b010, YELLOW = 3'b001;
always @ (posedge clock) // Will generate (2 +3) FF's to store the state & Output
	case (state)
	s0 : begin
		light <= GREEN; state <= s1;
	     end
	s1 : begin
		light <= YELLOW; state <= s2;
	     end
	s2 : begin
		light <= RED; state <= s0;
	     end
	default : begin
		light <= RED;
		state <= s0;
		  end
	endcase
endmodule	 
