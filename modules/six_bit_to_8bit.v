`timescale 1ns / 1ps


module six_bit_to_8bit(
    input wire[5:0] in,
    output wire[7:0] out
    );
    
    //use 6 bit number but add two zeros on at the end so they 
    //still convert to the same decimal number and inequality holds true
    assign out[7] = 0;
    assign out[6] = 0;
    assign out[5] = in[5];
    assign out[4] = in[4];
    assign out[3] = in[3];
    assign out[2] = in[2];
    assign out[1] = in[1];
    assign out[0] = in[0];
    
endmodule
