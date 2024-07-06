`timescale 1ns / 1ps
module MISR(dataIn,reset,clock,dataOut);
  input [0:1] dataIn;
  input reset,clock;  
  output reg [0:3] dataOut;
  always@(posedge clock or posedge reset)
  begin
    if(reset == 1) begin
      dataOut <= 4'b0000;
    end
    else begin
      dataOut[0] <= dataOut[3] ^ dataIn[0];
      dataOut[1] <= dataOut[3] ^ dataOut[1] ^ dataIn[1];
      dataOut[2] <= dataOut[1] ;
      dataOut[3] <= dataOut[2] ;
    end
  end
endmodule