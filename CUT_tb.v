`timescale 1ns / 1ps

module CUT_tb;
    reg a,b,cin;
    wire [1:0] dataIn;

    CUT dut(a,b,cin,dataIn);

    initial begin

        a=1'b0;b=1'b0;cin=1'b0;
        #10 a=1'b0;b=1'b0;cin=1'b1;
        #10 a=1'b0;b=1'b1;cin=1'b0;
        #10 a=1'b0;b=1'b1;cin=1'b1;
        #10 a=1'b1;b=1'b0;cin=1'b0;
        #10 a=1'b1;b=1'b0;cin=1'b1;
        #10 a=1'b1;b=1'b1;cin=1'b0;
        #10 a=1'b1;b=1'b1;cin=1'b1;
    end

    initial begin 
        #80 $finish; 
    end

endmodule