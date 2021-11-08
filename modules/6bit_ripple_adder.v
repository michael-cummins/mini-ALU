`timescale 1ns / 1ps


module six_bit_adder(
    input wire[5:0]x, wire[5:0]y, wire sel,
    // removed overflow as it was not needed for this assignment
    output wire[5:0]s
);

    // body
    wire[5:0] cout, cin;
    assign cin[0] = sel;
    wire[5:0] zor;
    assign zor[0] = sel;
    assign zor[1] = sel;
    assign zor[2] = sel;
    assign zor[3] = sel;
    assign zor[4] = sel;
    assign zor[5] = sel;
    
    
    
    // initialise two's compliment version of y
    wire[5:0] two_c_y;
    
    // find two's compliment of the 6-bit y number by xoring each bit with sel
    // finds two's compliment if sel is high for subtraction 
    // or leaves it as is if sel is low
    assign two_c_y[0] = y[0] ^ zor[0];
    assign two_c_y[1] = y[1] ^ zor[1];
    assign two_c_y[2] = y[2] ^ zor[2];
    assign two_c_y[3] = y[3] ^ zor[3];
    assign two_c_y[4] = y[4] ^ zor[4];
    assign two_c_y[5] = y[5] ^ zor[5];
    
    
    // sequentially add digits starting from lsb
    // keeping track of carry in and carry out
    full_adder sum_bit0_unit (.a(x[0]), .b(two_c_y[0]), .cin(cin[0]), .s(s[0]), .cout(cout[0]));
    full_adder sum_bit1_unit (.a(x[1]), .b(two_c_y[1]), .cin(cout[0]), .s(s[1]), .cout(cout[1]));
    full_adder sum_bit2_unit (.a(x[2]), .b(two_c_y[2]), .cin(cout[1]), .s(s[2]), .cout(cout[2]));
    full_adder sum_bit3_unit (.a(x[3]), .b(two_c_y[3]), .cin(cout[2]), .s(s[3]), .cout(cout[3]));
    full_adder sum_bit4_unit (.a(x[4]), .b(two_c_y[4]), .cin(cout[3]), .s(s[4]), .cout(cout[4]));
    full_adder sum_bit5_unit (.a(x[5]), .b(two_c_y[5]), .cin(cout[4]), .s(s[5]), .cout(cout[5]));
    
    // overflow is the final carry out of the sum
    //don'[t need overflow for this assignment 
    //assign overflow = cout[5];
    
endmodule



