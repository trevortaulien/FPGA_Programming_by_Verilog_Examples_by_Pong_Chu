`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2022 08:56:18 AM
// Design Name: 
// Module Name: twoToFourDecoderEn
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


module twoToFourDecoderEn(
    input en,
    input [1:0] a,
    output [3:0] out
    );

    assign out[0] = (~a[0]) & (~a[1]) & en;
    assign out[1] = a[0] & (~a[1]) & en;
    assign out[2] = (~a[0]) & a[1] & en;
    assign out[3] = a[0] & a[1] & en;

endmodule
