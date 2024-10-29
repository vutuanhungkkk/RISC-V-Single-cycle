`timescale 1ns / 1ps
module InstMemory (
    input [31:0] A,
    output [31:0] RD
); 
    reg [31:0] instMem [0:16383];
    wire [31:0] adr;
    integer i;
    // Address calculation for word addressing
    assign adr = A[31:2]; 
    
    // Load instructions from a hex file
    initial begin
        $readmemh("C:/Users/hung/Desktop/vivaldoproject/lab1/RISC-V/RISC-V.srcs/sources_1/new/inst_memory.txt", instMem);
        for (i = 0; i < 16384; i = i + 1) begin
            $display("instMem[%0d] = %h", i, instMem[i]);
        end
    end
    
    // Read data from instruction memory
    assign RD = instMem[adr];

endmodule