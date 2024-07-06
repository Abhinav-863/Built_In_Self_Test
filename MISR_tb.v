`timescale 1ns / 1ps


module MISR_tb;
    reg clock,reset;
    wire [3:0] dataOut;
    reg [1:0] dataIn;
    MISR dut(.dataIn(dataIn),.reset(reset),.clock(clock),.dataOut(dataOut));
    initial begin
        clock = 1'b0;  
    end
    always #5 clock = ~clock;
    initial begin
        reset = 1'b1;
        #10 reset = 1'b0;
        dataIn = 2'b10;
        #10 dataIn = 2'b01;
        #10 dataIn = 2'b01;
        #10 dataIn = 2'b11;
        #10 dataIn = 2'b01;
        #10 dataIn = 2'b10;
        #10 dataIn = 2'b10;
        #20 $finish;
    end
endmodule