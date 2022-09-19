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


module twoToFourDecoderEn_sim();

    reg [1:0] a;
    reg en;
    wire [3:0] out;

    twoToFourDecoderEn uut (.a(a), .en(en), .out(out));

    initial begin
        a = 2'b00; en = 1'b0;
        #10;
        a = 2'b01; en = 1'b0;
        #10;
        a = 2'b10; en = 1'b0;
        #10;
        a = 2'b11; en = 1'b0;
        #10;
        a = 2'b00; en = 1'b1;
        #10;
        a = 2'b01; en = 1'b1;
        #10;
        a = 2'b10; en = 1'b1;
        #10;
        a = 2'b11; en = 1'b1;
        #10;
    end

endmodule
