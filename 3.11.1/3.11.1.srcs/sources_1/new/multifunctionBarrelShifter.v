`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2022 04:13:19 PM
// Design Name: 
// Module Name: multifunctionBarrelShifter
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


module multifunctionBarrelShifter(
    input [7:0] in,
    input l_or_r,
    output reg [7:0] out
    );

    reg [7:0] out_l, out_r;

    always@(*) begin
        out_l = { in[6:0], in[7] };
        out_r = { in[0], in[7:1] };

        if(l_or_r) begin
            out = out_l;
        end
        else begin
            out = out_r;
        end
    end
       

endmodule
