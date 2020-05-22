// Full adder using task
//----------------------------------
// FileName : fa_task.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 22/05/2020
//------------------
// Notes :- Using task to implement sum and carry of FA
//
module fa_task (s,cout,a,b,c);
  input a,b,c;
  output reg s,cout;
  
  always @ (a or b or c)
    FA (a,b,c,s,cout);
  
  task FA;
    input a,b,c;
    output s,cout; //Task can have multiple outputs
	
	begin //Delays can be specified in Tasks.
	  #2 s = a ^ b ^ c;
	  cout = ((a & b) | (b & c) | (a & c));
	end
	
  endtask
  
endmodule