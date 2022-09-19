`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2022 09:01:31 AM
// Design Name: 
// Module Name: twoToFourDecoderEn_sim
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


module threeToEightDecoderEn_sim();

    reg [2:0] a;
    reg en;
    wire [7:0] out;

    threeToEightDecoderEn uut (.a(a), .en(en), .out(out));

    initial begin
        a = 3'b000; en = 1'b0;
        #10;
        a = 3'b001; en = 1'b0;
        #10;
        a = 3'b010; en = 1'b0;
        #10;
        a = 3'b011; en = 1'b0;
        #10;
        a = 3'b100; en = 1'b0;
        #10;
        a = 3'b101; en = 1'b0;
        #10;
        a = 3'b110; en = 1'b0;
        #10;
        a = 3'b111; en = 1'b0;
        #10;
        a = 3'b000; en = 1'b1;
        #10;
        a = 3'b001; en = 1'b1;
        #10;
        a = 3'b010; en = 1'b1;
        #10;
        a = 3'b011; en = 1'b1;
        #10;
        a = 3'b100; en = 1'b1;
        #10;
        a = 3'b101; en = 1'b1;
        #10;
        a = 3'b110; en = 1'b1;
        #10;
        a = 3'b111; en = 1'b1;
        #10;
    end

endmodule
