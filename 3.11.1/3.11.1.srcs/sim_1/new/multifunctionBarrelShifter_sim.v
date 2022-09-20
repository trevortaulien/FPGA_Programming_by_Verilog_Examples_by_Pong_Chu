`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2022 04:14:00 PM
// Design Name: 
// Module Name: multifunctionBarrelShifter_sim
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


module multifunctionBarrelShifter_sim();

    reg [7:0] in;
    reg l_or_r;
    wire [7:0] out;

    multifunctionBarrelShifter uut(.in(in), .l_or_r(l_or_r), .out(out));

    initial begin
        in = 8'b00000000; l_or_r = 1'b0;
        #10;
        in = 8'b00010001; l_or_r = 1'b0;
        #10;
        in = 8'b10010000; l_or_r = 1'b0;
        #10;
        in = 8'b10010001; l_or_r = 1'b0;
        #10;
        in = 8'b00000000; l_or_r = 1'b1;
        #10;
        in = 8'b00010001; l_or_r = 1'b1;
        #10;
        in = 8'b10010000; l_or_r = 1'b1;
        #10;
        in = 8'b10010001; l_or_r = 1'b1;
        #10;
    end

endmodule
