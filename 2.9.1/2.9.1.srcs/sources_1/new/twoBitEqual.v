`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2022 06:46:52 PM
// Design Name: 
// Module Name: twoBitEqual
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module twoBitEqual(
    input a0, a1,
    input b0, b1,
    output eq_out
    );

    assign eq_out = (~a1 & ~a0 & ~b1 & ~b0) | (~a1 & a0 & ~b1 & b0) | (a1 & a0 & b1 & b0) | (a1 & ~a0 & b1 & ~b0);

endmodule
