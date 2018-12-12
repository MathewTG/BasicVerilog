// 4 bit adder - Behavioural Model
//----------------------------------
// FileName : adder4bit_beh.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/2018
//------------------
// Notes :-
//

module adder4bit_beh (S,cout,A,B,cin);
input [3:0]A,B;
input cin;
output [3:0]S;
output cout;

assign {cout,S} = A+B+cin;
endmodule
