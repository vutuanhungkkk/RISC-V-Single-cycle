`timescale 1ns / 1ps
module AND_logic(branch, zero, and_out);
    input branch, zero;
    output and_out;
    assign and_out = branch & zero;
endmodule
