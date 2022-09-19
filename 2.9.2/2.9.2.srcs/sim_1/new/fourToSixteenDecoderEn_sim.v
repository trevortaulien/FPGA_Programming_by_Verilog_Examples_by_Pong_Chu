`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2022 06:28:58 PM
// Design Name: 
// Module Name: fourToSixteenDecoderEn_sim
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


module fourToSixteenDecoderEn_sim();

    reg [3:0] a;
    reg en;
    wire [15:0] out;

    fourToSixteenDecoderEn uut (.a(a), .en(en), .out(out));

    initial begin
        en = 1'b0; a = 4'b0000;
        #10;
        en = 1'b0; a = 4'b0001;
        #10;
        en = 1'b0; a = 4'b0010;
        #10;
        en = 1'b0; a = 4'b0011;
        #10;
        en = 1'b0; a = 4'b0100;
        #10;
        en = 1'b0; a = 4'b0101;
        #10;
        en = 1'b0; a = 4'b0110;
        #10;
        en = 1'b0; a = 4'b0111;
        #10;
        en = 1'b0; a = 4'b1000;
        #10;
        en = 1'b0; a = 4'b1001;
        #10;
        en = 1'b0; a = 4'b1010;
        #10;
        en = 1'b0; a = 4'b1011;
        #10;
        en = 1'b0; a = 4'b1100;
        #10;
        en = 1'b0; a = 4'b1101;
        #10;
        en = 1'b0; a = 4'b1110;
        #10;
        en = 1'b0; a = 4'b1111;
        #10;
        en = 1'b1; a = 4'b0000;
        #10;
        en = 1'b1; a = 4'b0001;
        #10;
        en = 1'b1; a = 4'b0010;
        #10;
        en = 1'b1; a = 4'b0011;
        #10;
        en = 1'b1; a = 4'b0100;
        #10;
        en = 1'b1; a = 4'b0101;
        #10;
        en = 1'b1; a = 4'b0110;
        #10;
        en = 1'b1; a = 4'b0111;
        #10;
        en = 1'b1; a = 4'b1000;
        #10;
        en = 1'b1; a = 4'b1001;
        #10;
        en = 1'b1; a = 4'b1010;
        #10;
        en = 1'b1; a = 4'b1011;
        #10;
        en = 1'b1; a = 4'b1100;
        #10;
        en = 1'b1; a = 4'b1101;
        #10;
        en = 1'b1; a = 4'b1110;
        #10;
        en = 1'b1; a = 4'b1111;
        #10;
    end

endmodule
