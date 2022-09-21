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


module multifunctionBarrelShifter_sim32();

    reg [31:0] in;
    reg l_or_r;
    wire [31:0] out;

    multifunctionBarrelShifter #(.N(32)) uut(.in(in), .l_or_r(l_or_r), .out(out));

    initial begin
        in = 32'b00000000000000000000000000000000; l_or_r = 1'b0;
        #10;
        in = 32'b00000000000000100000000000000001; l_or_r = 1'b0;
        #10;
        in = 32'b10000000000000100000000000000000; l_or_r = 1'b0;
        #10;
        in = 32'b10000000000000100000000000000001; l_or_r = 1'b0;
        #10;
        in = 32'b00000000000000000000000000000000; l_or_r = 1'b1;
        #10;
        in = 32'b00000000000000100000000000000001; l_or_r = 1'b1;
        #10;
        in = 32'b10000000000000100000000000000000; l_or_r = 1'b1;
        #10;
        in = 32'b10000000000000100000000000000001; l_or_r = 1'b1;
        #10;
    end

endmodule
