// Simple Decoder
//----------------------------------
// FileName : simpledecoder_beh.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 17/10/20118
//------------------
// Notes :- Behavioural Model
module simpledecoder_beh (in,out,sel);
input in;
input [0:1]sel;
output [0:3]out;

assign out[sel] = in; // Here, the synthesis tool will generate a HW decoder element.

endmodule
