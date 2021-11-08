
module eq2
   (
    input  wire a, b,c,d,			// chnged to abcd a[0] = a, a[1] = b, b[0] = c, b[1] = d
    output wire aeqb				// single bit output. Should be high if ab is greater than cd
   );
   
   wire e0, e1; 
 
  
   //2-BIT Greater than Circuit
   assign e0 = b & ~d; 
   assign e1 = a & ~c & (b~^d); 

   assign aeqb = e0 | e1; 

endmodule