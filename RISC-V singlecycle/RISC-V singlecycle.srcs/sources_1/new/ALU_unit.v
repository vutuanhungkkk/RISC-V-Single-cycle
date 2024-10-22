`timescale 1ns / 1ps
module ALU_unit(A,B, Control_in, ALU_Result, zero);
    input [31:0] A,B;
    input[3:0] Control_in;
    output reg zero;
    output reg [31:0] ALU_Result;
always @(Control_in or A or B) begin
    case(Control_in)
        4'b0000: begin zero <= 0; ALU_Result <= A & B; end
        4'b0001: begin zero <= 0; ALU_Result <= A | B; end
        4'b0010: begin zero <= 0; ALU_Result <= A + B; end
        4'b0110: begin if(A==B) zero <= 1; else zero <= 0; ALU_Result <= A - B; end
        endcase
end  
endmodule
