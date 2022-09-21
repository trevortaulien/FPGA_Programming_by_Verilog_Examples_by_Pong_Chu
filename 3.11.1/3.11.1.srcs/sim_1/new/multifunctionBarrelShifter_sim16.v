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


module multifunctionBarrelShifter_sim16();

    reg [15:0] in;
    reg l_or_r;
    wire [15:0] out;

    multifunctionBarrelShifter #(.N(16)) uut(.in(in), .l_or_r(l_or_r), .out(out));

    initial begin
        in = 16'b0000000000000000; l_or_r = 1'b0;
        #10;
        in = 16'b0000000100000001; l_or_r = 1'b0;
        #10;
        in = 16'b1000000100000000; l_or_r = 1'b0;
        #10;
        in = 16'b1000000100000001; l_or_r = 1'b0;
        #10;
        in = 16'b0000000000000000; l_or_r = 1'b1;
        #10;
        in = 16'b0000000100000001; l_or_r = 1'b1;
        #10;
        in = 16'b1000000100000000; l_or_r = 1'b1;
        #10;
        in = 16'b1000000100000001; l_or_r = 1'b1;
        #10;
    end

endmodule
