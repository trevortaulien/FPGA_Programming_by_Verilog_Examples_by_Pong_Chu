`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2022 03:02:29 PM
// Design Name: 
// Module Name: dualPriorityEncoder
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


module dualPriorityEncoder(
    input [11:0] req,
    output reg [3:0] first,
    output reg [3:0] second
    );

    always@(*) begin 
        casex(req)
            12'b1XXXXXXXXXXX: begin
                first = 4'b1100; 
                casex(req)
                    12'b11XXXXXXXXXX: begin
                        second = 4'b1011;
                    end 
                    12'b101XXXXXXXXX: begin
                        second = 4'b1010;
                    end 
                    12'b1001XXXXXXXX: begin
                        second = 4'b1001;
                    end 
                    12'b10001XXXXXXX: begin
                        second = 4'b1000;
                    end 
                    12'b100001XXXXXX: begin
                        second = 4'b0111;
                    end 
                    12'b1000001XXXXX: begin
                        second = 4'b0110;
                    end 
                    12'b10000001XXXX: begin
                        second = 4'b0101;
                    end 
                    12'b100000001XXX: begin
                        second = 4'b0100;
                    end 
                    12'b1000000001XX: begin
                        second = 4'b0011;
                    end 
                    12'b10000000001X: begin
                        second = 4'b0010;
                    end 
                    12'b100000000001: begin
                        second = 4'b0001;
                    end
                    12'b100000000000: begin
                        second = 4'b0000;
                    end 
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b01XXXXXXXXXX: begin
                first = 4'b1011;
                casex(req)
                    12'b011XXXXXXXXX: begin
                        second = 4'b1010;
                    end
                    12'b0101XXXXXXXX: begin
                        second = 4'b1001;
                    end
                    12'b01001XXXXXXX: begin
                        second = 4'b1000;
                    end
                    12'b010001XXXXXX: begin
                        second = 4'b0111;
                    end
                    12'b0100001XXXXX: begin
                        second = 4'b0110;
                    end
                    12'b01000001XXXX: begin
                        second = 4'b0101;
                    end
                    12'b010000001XXX: begin
                        second = 4'b0100;
                    end
                    12'b0100000001XX: begin
                        second = 4'b0011;
                    end
                    12'b01000000001X: begin
                        second = 4'b0010;
                    end
                    12'b010000000001: begin
                        second = 4'b0001;
                    end
                    12'b010000000000: begin
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b001XXXXXXXXX: begin
                first = 4'b1010;
                casex(req)
                    12'b0011XXXXXXXX: begin
                        second = 4'b1001;
                    end
                    12'b00101XXXXXXX: begin
                        second = 4'b1000;
                    end
                    12'b001001XXXXXX: begin
                        second = 4'b0111;
                    end
                    12'b0010001XXXXX: begin
                        second = 4'b0110;
                    end
                    12'b00100001XXXX: begin
                        second = 4'b0101;
                    end
                    12'b001000001XXX: begin
                        second = 4'b0100;
                    end
                    12'b0010000001XX: begin
                        second = 4'b0011;
                    end
                    12'b00100000001X: begin
                        second = 4'b0010;
                    end
                    12'b001000000001: begin
                        second = 4'b0001;
                    end
                    12'b001000000000: begin
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b0001XXXXXXXX: begin
                first = 4'b1001;
                casex(req)
                    12'b00011XXXXXXX: begin
                        second = 4'b1000;
                    end
                    12'b000101XXXXXX: begin
                        second = 4'b0111;
                    end
                    12'b0001001XXXXX: begin
                        second = 4'b0110;
                    end
                    12'b00010001XXXX: begin
                        second = 4'b0101;
                    end
                    12'b000100001XXX: begin
                        second = 4'b0100;
                    end
                    12'b0001000001XX: begin
                        second = 4'b0011;
                    end
                    12'b00010000001X: begin
                        second = 4'b0010;
                    end
                    12'b000100000001: begin
                        second = 4'b0001;
                    end
                    12'b000100000000: begin
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b00001XXXXXXX: begin
                first = 4'b1000;
                casex(req)
                    12'b000011XXXXXX: begin    
                        second = 4'b0111;
                    end
                    12'b0000101XXXXX: begin    
                        second = 4'b0110;
                    end
                    12'b00001001XXXX: begin    
                        second = 4'b0101;
                    end
                    12'b000010001XXX: begin    
                        second = 4'b0100;
                    end
                    12'b0000100001XX: begin    
                        second = 4'b0011;
                    end
                    12'b00001000001X: begin    
                        second = 4'b0010;
                    end
                    12'b000010000001: begin    
                        second = 4'b0001;
                    end
                    12'b000010000000: begin    
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b000001XXXXXX: begin
                first = 4'b0111; 
                casex(req)
                    12'b0000011XXXXX: begin
                        second = 4'b0110;
                    end
                    12'b00000101XXXX: begin
                        second = 4'b0101;
                    end
                    12'b000001001XXX: begin
                        second = 4'b0100;
                    end
                    12'b0000010001XX: begin
                        second = 4'b0011;
                    end
                    12'b00000100001X: begin
                        second = 4'b0010;
                    end
                    12'b000001000001: begin
                        second = 4'b0001;
                    end
                    12'b000001000000: begin
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b0000001XXXXX: begin
                first = 4'b0110;  
                casex(req)
                    12'b00000011XXXX: begin
                        second = 4'b0101;
                    end
                    12'b000000101XXX: begin
                        second = 4'b0100;
                    end
                    12'b0000001001XX: begin
                        second = 4'b0011;
                    end
                    12'b00000010001X: begin
                        second = 4'b0010;
                    end
                    12'b000000100001: begin
                        second = 4'b0001;
                    end
                    12'b000000100000: begin
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b00000001XXXX: begin
                first = 4'b0101;    
                casex(req)
                    12'b000000011XXX: begin
                        second = 4'b0100;
                    end
                    12'b0000000101XX: begin
                        second = 4'b0011;
                    end
                    12'b00000001001X: begin
                        second = 4'b0010;
                    end
                    12'b000000010001: begin
                        second = 4'b0001;
                    end
                    12'b000000010000: begin
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b000000001XXX: begin
                first = 4'b0100;    
                case(req)
                    12'b0000000011XX: begin
                        second = 4'b0011;
                    end
                    12'b00000000101X: begin
                        second = 4'b0010;
                    end
                    12'b000000001001: begin
                        second = 4'b0001;
                    end
                    12'b000000001000: begin
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b0000000001XX: begin
                first = 4'b0011; 
                case(req)
                    12'b00000000011X: begin
                        second = 4'b0010;
                    end
                    12'b000000000101: begin
                        second = 4'b0010;
                    end
                    12'b000000000100: begin
                        second = 4'b0010;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase   
            end
            12'b00000000001X: begin
                first = 4'b0010;    
                case(req)
                    12'b000000000011: begin
                        second = 4'b0001;
                    end
                    12'b000000000010: begin
                        second = 4'b0000;
                    end
                    default: begin
                        second = 4'b1111;
                    end
                endcase
            end
            12'b000000000001: begin
                first = 4'b0001;    
                second = 4'b0000;
            end
            12'b000000000000: begin
                first = 4'b0000;
                second = 4'b0000;
            end
            default: begin
                first = 4'b1111;
                second = 4'b1111;
            end
        endcase
    end

endmodule
