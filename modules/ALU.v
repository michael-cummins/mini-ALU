`timescale 1ns / 1ps


module mini_ALU(
    input [5:0] a, 
    input [5:0] b,
    input [2:0] fxn, 
    output wire[5:0] out 
    );
    
    //Output wires to connect each module
    wire [5:0] A;
    wire [5:0] B;
    wire select;
    wire bool; //bool output for a < b -> later converted into 6 bit bool for out
    wire [5:0] six_bit_bool;
    wire [5:0] A_xnor_B;
    wire [5:0] A_plus_B;
    wire [7:0] a8;
    wire [7:0] b8;
    
    //Converting input from 6-bit to 8-bit for comparator
    six_bit_to_8bit a_8 (.in(a), .out(a8));
    six_bit_to_8bit b_8 (.in(b), .out(b8));
    
    //pass a and b through a multiplexer, output a modified A and B along with a sel wire for add/subtarct
    //a = a + 0 (sel = 0), b = 0 + b (sel = 0), -a = 0 + a (sel = 1), -b = 0 + b (sel = 1)...
    fxn_mux1 mux1 (.fxn(fxn), .a(a), .b(b), .sel(select), .A(A), .B(B));
    six_bit_adder AplusB (.x(A), .y(B), .sel(select), .s(A_plus_B));
    
    //bool represents single bit value, high if a<b, low otherwise
    eq8 Bool (.a(a8), .b(b8), .out(bool));
    //module to take in a wire and output 6 wires with same value as input; 111111 if a<b, 000000 otherwise
    oneBitBoolTo6bit a_less_than_b (.bool(bool), .out(six_bit_bool));
    
    //bitwise xnor
    six_bit_xnor a_xnor_b (.x(a), .y(b), .XNOR(A_xnor_B));
    
    //display output based on fxn input; fxn multiplexer
    fxn_mux2 mux2 (.Fxn(fxn), .ApB_f(A_plus_B), .AlB_f(six_bit_bool), .AxnorB_f(A_xnor_B), .out_f(out));
   
endmodule
