`timescale 1ns / 1ps


module fxn_mux1(
    input [2:0] fxn,
    input [5:0] a, b,
    output reg [5:0] A, B,
    reg sel
    );
    
    always@*
    case(fxn)
    3'b000:
    begin
    A = a;
    B = 6'b000000;
    sel = 1'b0;
    end
    3'b001:
    begin
    A = 6'b000000;
    B = b;
    sel = 1'b0;
    end
    3'b011:
    begin
    A = 6'b000000;
    B = b;
    sel = 1'b1;
    end
    3'b010:
    begin
    A = 6'b000000;
    B = a;
    sel = 1'b1;
    end
    3'b110:
    begin
    A = a;
    B = b;
    sel = 1'b0;
    end
    3'b111:
    begin
    A = a;
    B = b;
    sel = 1'b1;
    end
    endcase
    
endmodule
