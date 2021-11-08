`timescale 1ns / 1ps

module fxn_mux2(
    input [2:0] Fxn, 
    input [5:0] ApB_f,  
    input [5:0] AlB_f, 
    input [5:0] AxnorB_f,
    output reg [5:0] out_f
    );
    
    always@*   
    case(Fxn)
    3'b000: out_f = ApB_f;
    3'b001: out_f = ApB_f;
    3'b010: out_f = ApB_f;
    3'b011: out_f = ApB_f;
    3'b100: out_f = AlB_f;
    3'b101: out_f = AxnorB_f;
    3'b110: out_f = ApB_f;
    3'b111: out_f = ApB_f;
    endcase
         
endmodule