
`timescale 1ns / 1ps

module TestSingleCycle;

    reg clk;
    reg [31:0] instruction_memory [0:16383]; // Assuming a small instruction memory for testing
    reg [31:0] data_memory [0:16383]; // Assuming a small data memory for testing

    // Instantiate the RiscvSingleCyle module
    RiscvSingleCyle uut (
        .clk(clk)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 time units clock period
    end

    // Initialize instruction and data memory
    initial begin
        // Load instructions into instruction memory
        $readmemh("inst_memory.txt", instruction_memory);
        // Load data into data memory
        $readmemh("DataMemory.txt", data_memory);
        
        // Initialize the test
        // You can set specific registers or memory values here if needed

        // Wait for some time and then start the test
        #10;
        
        // Test cases
        // Here, you can apply different instructions to test the ALU and memory operations.
        
        // Example: Test ADD instruction
        // Assuming the instruction for ADD is at address 0
        // The instruction format might need to be adjusted based on your encoding
        // For example: instruction_memory[0] = 32'b00000000000100000000000000100000; // ADD x0, x0, x1
        // Execute the instruction
        #10;

        // Check the results
        // You can check register values or memory values here
        // For example: $display("Register 1: %d", uut.DP.RegisterFile.mem[1]);

        // Repeat for other instructions (SUB, AND, OR, etc.)
        
        // End simulation after some time
        #100;
        $finish;
    end

    // Monitor output values
    initial begin
        $monitor("Time: %0t | PC: %h | ALUResult: %h | Zero: %b", 
                 $time, uut.DP.PC, uut.DP.ALUResult, uut.DP.zero);
    end

endmodule
