`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2022 03:29:45 PM
// Design Name: 
// Module Name: twoBitEqual_sim
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


module twoBitEqual_sim();

reg [1:0] a, b;
wire out;

twoBitEqual uut (.a(a), .b(b), .eq_out(out));

initial begin
    a = 2'b00; b = 2'b00;
    #100;
    a = 2'b00; b = 2'b01;
    #100;
    a = 2'b00; b = 2'b10;
    #100;
    a = 2'b00; b = 2'b11;
    #100;
    a = 2'b01; b = 2'b00;
    #100;
    a = 2'b01; b = 2'b01;
    #100;
    a = 2'b01; b = 2'b10;
    #100;
    a = 2'b01; b = 2'b11;
    #100;
    a = 2'b10; b = 2'b00;
    #100;
    a = 2'b10; b = 2'b01;
    #100;
    a = 2'b10; b = 2'b10;
    #100;
    a = 2'b10; b = 2'b11;
    #100;
    a = 2'b11; b = 2'b00;
    #100;
    a = 2'b11; b = 2'b01;
    #100;
    a = 2'b11; b = 2'b10;
    #100;
    a = 2'b11; b = 2'b11;
    #100;
end

endmodule
