`timescale 1ns / 1ps

module eq8(
    input  wire [7:0] a, b,			
    output out
    );
    wire[7:0] e;
    wire ee1, ee2, ee3, ee4; 
    wire g1, g2, g3, g4;
    wire x1, x2, x3;
    wire y1, y2;
    wire z1, z2;
    wire equals, greater;
    
    //check if they're all equal
    eq1 eq_bit0_unit (.i0(a[0]), .i1(b[0]), .eq(e[0]));
    eq1 eq_bit1_unit (.i0(a[1]), .i1(b[1]), .eq(e[1]));
    eq1 eq_bit2_unit (.i0(a[2]), .i1(b[2]), .eq(e[2]));
    eq1 eq_bit3_unit (.i0(a[3]), .i1(b[3]), .eq(e[3]));
    eq1 eq_bit4_unit (.i0(a[4]), .i1(b[4]), .eq(e[4]));
    eq1 eq_bit5_unit (.i0(a[5]), .i1(b[5]), .eq(e[5]));
    eq1 eq_bit6_unit (.i0(a[6]), .i1(b[6]), .eq(e[6]));
    eq1 eq_bit7_unit (.i0(a[7]), .i1(b[7]), .eq(e[7]));
    
    assign ee1 = e[1] & e[0]; //first two bits of each number equal?
    assign ee2 = e[3] & e[2]; //
    assign ee3 = e[5] & e[4]; //
    assign ee4 = e[7] & e[6]; //last two bits of each section equal?
    
    eq2 eq_bit01_unit (.a(a[0]), .b(a[1]), .c(b[0]), .d(b[1]), .aeqb(g1)); //fist two bits of a greater than first two bits of b?
    eq2 eq_bit02_unit (.a(a[2]), .b(a[3]), .c(b[2]), .d(b[3]), .aeqb(g2)); //
    eq2 eq_bit03_unit (.a(a[4]), .b(a[5]), .c(b[4]), .d(b[5]), .aeqb(g3)); //
    eq2 eq_bit04_unit (.a(a[6]), .b(a[7]), .c(b[6]), .d(b[7]), .aeqb(g4)); //last two bits of a greater than last two bits of b?
    
    assign y1 = ee3 & ee4; //are the last four bits of a and b equal?
    assign y2 = y1 & ee2; //are the last six bits of a and b equal?
    
    assign x1 = g1 & y2; //last six bits equal and first two bits of a greater than b? 1->a>b
    assign x2 = g2 & y1; //last four bits equal and bits 2 and 3 of a greater than bits 2 and 3 of b? 1->a>b
    assign x3 = g3 & ee4; //last two bits equal and bits 4 and 5 of a greater than bits 4 and 5 of b? 1->a>b

    assign z1 = x1 | x2; 
    assign z2 = x3 | g4;
    
    assign equals = y2 & ee1; //are all bits equal?
    assign greater = z1 | z2; //is a greater than b?
    
    wire a_g_b = greater | equals;  
    
    //inverted the response to give 1 if a < b
    assign out = ~a_g_b;
    
endmodule
