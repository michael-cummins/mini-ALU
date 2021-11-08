module full_adder(
  input wire a, b, cin,
  output wire s, cout
  );
  
  // logic for sum and carry
  assign s = cin ^ a ^ b;
  assign cout = (b & cin) | (a & cin) | (a & b); 
  
endmodule

