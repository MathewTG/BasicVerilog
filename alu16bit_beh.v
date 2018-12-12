// 16 bit ALU - Behavioural Model
//----------------------------------
// FileName : alu16bit_beh.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/2018
//------------------
// Notes :-
//

module alu16bit_beh (X,Y,Z,Sign,Zero,Carry,Parity,Overflow);
 input [15:0]X,Y;
 output [15:0]Z;
 output Sign,Zero,Carry,Parity,Overflow;
 
 assign {Carry,Z} = X + Y; // 16bit addition
 assign Sign = Z[15]; // MSB represents sign in 2's complement form
 assign Zero = ~|Z; // All bits are zero - Reduction NOR operation ~|
 assign Parity = ~^Z;// Even no. of 1's - Reduction Ex-NOR operation ~^
 assign Overflow = (X[15]&Y[15]&~Z[15])|(~X[15]&~Y[15]&Z[15]);
 
endmodule
