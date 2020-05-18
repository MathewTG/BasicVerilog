// 4 to 1 MUX using UDP
//----------------------------------
// FileName : udpmux4to1.v
// Type : module
// Author : Mathew T G
// Contact : mathewtg.mec@gmail.com
//------------------
// Date : 18/10/20118
//------------------
// Notes :-
//

primitive udp_mux4to1 (f,s0,s1,i0,i1,i2,i3);
input s0,s1,i0,i1,i2,i3;
output f;

 table
// s1 s0|i1 i2 i3 i4 : f
   0 0 0 ? ? ? : 0;
   0 0 1 ? ? ? : 1;
   0 1 ? 0 ? ? : 0;
   0 1 ? 1 ? ? : 1;
   1 0 ? ? 0 ? : 0;
   1 0 ? ? 1 ? : 1;
   1 1 ? ? ? 0 : 0;
   1 1 ? ? ? 1 : 1;
 endtable

endprimitive
