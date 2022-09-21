`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2022 10:02:18 PM
// Design Name: 
// Module Name: multifunctionBarrelShifter_byReversal
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


module multifunctionBarrelShifter_byReversal
    (
    input [7:0] in,
    input l_or_r,
    output reg [7:0] out
    );

    reg [7:0] pre_rev, shifted;

    always@(*) begin
        if(l_or_r) begin
            pre_rev = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};
            shifted = {pre_rev[0], pre_rev[7:1]};
            out = {shifted[0], shifted[1], shifted[2], shifted[3], shifted[4], shifted[5], shifted[6], shifted[7]};
        end
        else begin
            out = {in[0], in[7:1]};
        end
    end  

endmodule
