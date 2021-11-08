`timescale 1ns / 1ps

module oneBitBoolTo6bit(
    input bool,
    output wire[5:0] out
    );
    
    //copy the bool value to each wire of our outbut
    assign out[0] = bool;
    assign out[1] = bool;
    assign out[2] = bool;
    assign out[3] = bool;
    assign out[4] = bool;
    assign out[5] = bool;
    
endmodule
