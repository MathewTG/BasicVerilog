// Full adder using Functions
//----------------------------------
// FileName : fa_fn.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 22/05/2020
//------------------
// Notes :- Using Functions to implement sum and carry of FA
//
module fa_fn (s,cout,a,b,c);
  input a,b,c;
  output s,cout;
  
  assign s = sum (a,b,c);
  assign cout = carry (a,b,c);
  
function sum; // Function can have only 1 output
			  // Executes in 0 time
  input x,y,z;
  begin
    sum = x ^ y ^ z;
  end
endfunction

function carry;
  input x,y,z;
  begin
    carry = (x&y) | (y&z) | (x&z);
  end
endfunction

endmodule

