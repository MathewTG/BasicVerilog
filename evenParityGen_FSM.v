// Even Parity Generator using FSM
//----------------------------------
// FileName : evenParityGen_FSM.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 26/05/2020
//------------------
// Notes :- Moore machine implementation
//

module evenParityGen (x,clk,z);
  input x,clk;
  output reg z;
  
  reg even_odd; //State Register
  
  parameter EVEN = 1'b0, ODD = 1'b1;
  
  always @ (posedge clk)
	case (even_odd)
		EVEN : even_odd <= x ? ODD : EVEN;
		ODD : even_odd <= x ? EVEN : ODD;
		default : even_odd <= EVEN;
    endcase
  
  always @ (even_odd)
	case (even_odd)
		EVEN : z = 0;
		ODD : z = 1;
	endcase

endmodule

  
  