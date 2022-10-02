`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2022 03:03:07 PM
// Design Name: 
// Module Name: dualPriorityEncoder_sim
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


module dualPriorityEncoder_sim(
    );

reg [11:0] req;
wire [3:0] first, second;

dualPriorityEncoder uut(.req(req), .first(first), .second(second));

integer i;

initial begin
    for(i = 0; i < 4096; i = i + 1) begin
        req = i;
        #10;
    end
end

endmodule
