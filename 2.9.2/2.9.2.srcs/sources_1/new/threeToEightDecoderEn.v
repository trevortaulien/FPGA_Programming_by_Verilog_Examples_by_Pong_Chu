`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2022 03:05:33 PM
// Design Name: 
// Module Name: threeToEightDecoderEn
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


module threeToEightDecoderEn(
    input en,
    input [2:0] a,
    output [7:0] out
    );

    wire d0_en, d1_en;

    assign d0_en = en & (~a[2]);
    assign d1_en = en & a[2];

    twoToFourDecoderEn d0 (.en(d0_en), .a(a[1:0]), .out(out[3:0]));
    twoToFourDecoderEn d1 (.en(d1_en), .a(a[1:0]), .out(out[7:4]));

endmodule
