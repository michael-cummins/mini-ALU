
module eq1
   (
    input wire i0, i1,
    output wire eq
   );
   
   wire p0, p1;
   
   // sum of two product terms 
   // this is an xor gate
   assign eq = p0 | p1;
   // product terms
   assign p0 = ~i0 & ~i1;
   assign p1 = i0 & i1;

endmodule