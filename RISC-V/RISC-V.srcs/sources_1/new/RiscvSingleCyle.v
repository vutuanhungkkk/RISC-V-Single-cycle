`timescale 1ns / 1ps
module RiscvSingleCyle(input clk);
    wire MemWrite, ALUSrc, RegWrite, zero, branchLEG;
    wire [1:0] pcSrc, ResultSrc;
    wire [2:0] ALUControl, ImmSrc, func3;
    wire [6:0] func7, op;
    DataPath DP (
        .clk(clk),
        .MemWrite(MemWrite),
        .ALUSrc(ALUSrc),
        .RegWrite(RegWrite),
        .pcSrc(pcSrc),
        .ResultSrc(ResultSrc),
        .ALUControl(ALUControl),
        .ImmSrc(ImmSrc),
        .zero(zero),
        .branchLEG(branchLEG),
        .func3(func3),
        .func7(func7),
        .op(op)
    );

    Controller CTRL (
        .zero(zero),
        .branchLEG(branchLEG),
        .func3(func3),
        .func7(func7),
        .op(op),
        .MemWrite(MemWrite),
        .ALUSrc(ALUSrc),
        .RegWrite(RegWrite),
        .pcSrc(pcSrc),
        .ResultSrc(ResultSrc),
        .ALUControl(ALUControl),
        .ImmSrc(ImmSrc)
    );
endmodule
