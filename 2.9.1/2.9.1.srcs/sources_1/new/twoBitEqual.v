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
    input [1:0] a,
    input [1:0] b,
    output eq_out
    );

    assign eq_out = (~a[1] & ~a[0] & ~b[1] & ~b[0]) | (~a[1] & a[0] & ~b[1] & b[0]) | (a[1] & a[0] & b[1] & b[0]) | (a[1] & ~a[0] & b[1] & ~b[0]);

endmodule
