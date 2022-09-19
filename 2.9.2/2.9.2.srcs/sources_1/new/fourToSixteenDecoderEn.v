`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2022 06:28:02 PM
// Design Name: 
// Module Name: fourToSixteenDecoderEn
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


module fourToSixteenDecoderEn(
    input en,
    input [3:0] a,
    output [15:0] out
    );

    wire d0_en, d1_en, d2_en, d3_en;

    assign d0_en = en & (~a[3]) & (~a[2]);
    assign d1_en = en & (~a[3]) & (a[2]);
    assign d2_en = en & (a[3]) & (~a[2]);
    assign d3_en = en & (a[3]) & (a[2]);

    twoToFourDecoderEn d0 (.a(a[1:0]), .en(d0_en), .out(out[3:0]));
    twoToFourDecoderEn d1 (.a(a[1:0]), .en(d1_en), .out(out[7:4]));
    twoToFourDecoderEn d2 (.a(a[1:0]), .en(d2_en), .out(out[11:8]));
    twoToFourDecoderEn d3 (.a(a[1:0]), .en(d3_en), .out(out[15:12]));

endmodule
