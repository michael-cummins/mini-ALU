`timescale 1ns/ 10ps

module ALU_testbench;
    reg [5:0] test_bench_a;
    reg [5:0] test_bench_b;
    reg [2:0] test_bench_fxn;
    wire [5:0] test_bench_out;
    mini_ALU uut (.a(test_bench_a), .b(test_bench_b), .fxn(test_bench_fxn), .out(test_bench_out)); 

//I hard code in the fxn so I can test 8 numbers at a time 
initial
begin
    $display("                time         A           fxn          B           output");
    $monitor("%d       %b        %b        %b        %b", $time, test_bench_a, test_bench_fxn, test_bench_b, test_bench_out);
end

initial
begin
    //a
    test_bench_a = 6'b001001;
    test_bench_b = 6'b001001;
    test_bench_fxn = 3'b000;
    #100
    
    test_bench_a = 6'b100100;
    test_bench_b = 6'b000001;
    test_bench_fxn = 3'b000;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b111110;
    test_bench_fxn = 3'b000;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b101000;
    test_bench_fxn = 3'b000;
    #100
    
    test_bench_a = 6'b000111;
    test_bench_b = 6'b000111;
    test_bench_fxn = 3'b000;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b110010;
    test_bench_fxn = 3'b000;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b000;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b000;
    #100
    //b
    test_bench_a = 6'b001001;
    test_bench_b = 6'b001001;
    test_bench_fxn = 3'b001;
    #100
    
    test_bench_a = 6'b100100;
    test_bench_b = 6'b000001;
    test_bench_fxn = 3'b001;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b111110;
    test_bench_fxn = 3'b001;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b101000;
    test_bench_fxn = 3'b001;
    #100
    
    test_bench_a = 6'b000111;
    test_bench_b = 6'b000111;
    test_bench_fxn = 3'b001;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b110010;
    test_bench_fxn = 3'b001;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b001;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b001;
    #100
    //-a
    test_bench_a = 6'b001001;
    test_bench_b = 6'b001001;
    test_bench_fxn = 3'b010;
    #100
    
    test_bench_a = 6'b100100;
    test_bench_b = 6'b000001;
    test_bench_fxn = 3'b010;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b111110;
    test_bench_fxn = 3'b010;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b101000;
    test_bench_fxn = 3'b010;
    #100
    
    test_bench_a = 6'b000111;
    test_bench_b = 6'b000111;
    test_bench_fxn = 3'b010;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b110010;
    test_bench_fxn = 3'b010;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b010;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b010;
    #100
    
    //-b
    test_bench_a = 6'b001001;
    test_bench_b = 6'b001001;
    test_bench_fxn = 3'b011;
    #100
    
    test_bench_a = 6'b100100;
    test_bench_b = 6'b000001;
    test_bench_fxn = 3'b011;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b111110;
    test_bench_fxn = 3'b011;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b101000;
    test_bench_fxn = 3'b011;
    #100
    
    test_bench_a = 6'b000111;
    test_bench_b = 6'b000111;
    test_bench_fxn = 3'b011;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b110010;
    test_bench_fxn = 3'b011;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b011;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b011;
    #100
    
    //a<b
    test_bench_a = 6'b001001;
    test_bench_b = 6'b001001;
    test_bench_fxn = 3'b100;
    #100
    
    test_bench_a = 6'b100100;
    test_bench_b = 6'b000001;
    test_bench_fxn = 3'b100;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b111110;
    test_bench_fxn = 3'b100;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b101000;
    test_bench_fxn = 3'b100;
    #100
    
    test_bench_a = 6'b000111;
    test_bench_b = 6'b000111;
    test_bench_fxn = 3'b100;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b110010;
    test_bench_fxn = 3'b100;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b100;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b100;
    #100
    
    //a xnor b
    test_bench_a = 6'b001001;
    test_bench_b = 6'b001001;
    test_bench_fxn = 3'b101;
    #100
    
    test_bench_a = 6'b100100;
    test_bench_b = 6'b000001;
    test_bench_fxn = 3'b101;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b111110;
    test_bench_fxn = 3'b101;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b101000;
    test_bench_fxn = 3'b101;
    #100
    
    test_bench_a = 6'b000111;
    test_bench_b = 6'b000111;
    test_bench_fxn = 3'b101;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b110010;
    test_bench_fxn = 3'b101;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b101;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b101;
    #100
    
    //a + b
    test_bench_a = 6'b001001;
    test_bench_b = 6'b001001;
    test_bench_fxn = 3'b110;
    #100
    
    test_bench_a = 6'b100100;
    test_bench_b = 6'b000001;
    test_bench_fxn = 3'b110;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b111110;
    test_bench_fxn = 3'b110;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b101000;
    test_bench_fxn = 3'b110;
    #100
    
    test_bench_a = 6'b000111;
    test_bench_b = 6'b000111;
    test_bench_fxn = 3'b110;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b110010;
    test_bench_fxn = 3'b110;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b110;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b110;
    #100
    
    //a - b
    test_bench_a = 6'b001001;
    test_bench_b = 6'b001001;
    test_bench_fxn = 3'b111;
    #100
    
    test_bench_a = 6'b100100;
    test_bench_b = 6'b000001;
    test_bench_fxn = 3'b111;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b111110;
    test_bench_fxn = 3'b111;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b101000;
    test_bench_fxn = 3'b111;
    #100
    
    test_bench_a = 6'b000111;
    test_bench_b = 6'b000111;
    test_bench_fxn = 3'b111;
    #100
    
    test_bench_a = 6'b010101;
    test_bench_b = 6'b110010;
    test_bench_fxn = 3'b111;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b111;
    #100
    
    test_bench_a = 6'b000101;
    test_bench_b = 6'b000010;
    test_bench_fxn = 3'b111;
    #100
    $stop;
end
endmodule
