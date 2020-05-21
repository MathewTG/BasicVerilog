// Improved Cyclic Lamp - FSM Example
//----------------------------------
// FileName : fsmCyclicLamp2.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 21/05/2020
//------------------
// Notes :- 3 States. S0 - RED, S1 - GREEN, S2 - YELLOW
//	    Only 2 FF's synthesized to store state
//

module fsmCyclicLamp2 (clock, light);
input clock;
output reg [0:2]light;
reg [0:1] state;
parameter s0 = 00, s1 = 01, s2 = 10;
parameter RED = 3'b100, GREEN = 3'b010, YELLOW = 3'b001;
always @ (posedge clock) //Will generate 2 FF's to store the state
	case (state)
	s0 : state <= s1;
	s1 : state <= s2;
	s2 : state <= s0;
	default : state <= s0;
	endcase

always @ (state) // Will generate a combinational ckt for output
	case (state)
	s0 : light = RED;
	s1 : light = GREEN;
	s2 : light = YELLOW;
	default : light = RED;
	endcase

endmodule	 