// 8 bit parallel adder - Behavioural Model
//-----------------------------------------
// FileName : parallel_adder8.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 16/102018
//------------------
// Notes :-
//

module parallel_adder8 (sum,cout,in1,in2,cin);
input [7:0]in1,in2;
input cin;
output [7:0]sum;
output cout;

assign #20 {cout,sum} = in1+in2+cin; // Only net type on the LHS of 'assign'

endmodule
