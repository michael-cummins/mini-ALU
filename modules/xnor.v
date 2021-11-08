`timescale 1ns / 1ps

module six_bit_xnor(
    input [5:0] x,
    input [5:0] y, 
    output wire [5:0] XNOR
    );
    
    //Bitwise xnor of x and y
    //Bitwise xnor is the same as checking if each bit is eqaul to eachother
    //just recycle eq1 from lab B
    eq1 xnor_bit0 (.i0(x[0]), .i1(y[0]), .eq(XNOR[0]));
    eq1 xnor_bit1 (.i0(x[1]), .i1(y[1]), .eq(XNOR[1]));
    eq1 xnor_bit2 (.i0(x[2]), .i1(y[2]), .eq(XNOR[2]));
    eq1 xnor_bit3 (.i0(x[3]), .i1(y[3]), .eq(XNOR[3]));
    eq1 xnor_bit4 (.i0(x[4]), .i1(y[4]), .eq(XNOR[4]));
    eq1 xnor_bit5 (.i0(x[5]), .i1(y[5]), .eq(XNOR[5]));
    
endmodule
