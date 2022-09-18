`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2022 06:46:52 PM
// Design Name: 
// Module Name: fourBitGreaterThan
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


module fourBitGreaterThan(
    input [3:0] a, b,
    output out
    );

    wire eq0_out, eq1_out;
    wire gt0_out, gt1_out;

    twoBitEqual eq0(.a(a[1:0]), .b(b[1:0]), .eq_out(eq0_out));
    twoBitEqual eq1(.a(a[3:2]), .b(b[3:2]), .eq_out(eq1_out));

    twoBitGreaterThan gt0(.a(a[1:0]), .b(b[1:0]), .gt_out(gt0_out));
    twoBitGreaterThan gt1(.a(a[3:2]), .b(b[3:2]), .gt_out(gt1_out));

    assign out = gt1_out | (gt0_out & eq1_out);

endmodule
