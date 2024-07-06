`timescale 1ns / 1ps

module LFSR_tb;
    reg clock,reset;  
    wire [0:2] dt_out;
    wire [0:2] counter;
    LFSR lfsr1(dt_out, complete, reset, clock);
    initial begin
        clock = 1'b0;
    end
    always #5 clock = ~clock;
    initial begin
        reset = 1'b1;
        #10 reset = 1'b0;
    end
    always #100 $finish;

endmodule