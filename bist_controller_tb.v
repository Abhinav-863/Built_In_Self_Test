`timescale 1ns/1ps

module bist_controller_tb;
    reg clock;
    reg reset;
    reg testmode;
    reg w, x, y;
    wire [2:0] data_out;
    wire [1:0] dataIn;
    wire [3:0] dataOut;
    wire fault_detected;

    // Instantiate BIST controller
    bist_controller uut (
        .clock(clock),
        .reset(reset),
        .w(w),
        .x(x),
        .y(y),
        .data_out(data_out),
        .dataIn(dataIn),
        .dataOut(dataOut),
        .testmode(testmode),
        .fault_detected(fault_detected)
    );

    // Clock generation
    always #5 clock = ~clock;

    initial begin
        // Initialize signals
        clock = 0;
        reset = 1;
        testmode = 0;
        w = 0;
        x = 0;
        y = 0;
        #10 reset = 0;

        // Enable testmode
        #10 testmode = 1;

        // Run the test for a sufficient amount of time
        #200;

        // Display the final results
        $display("MISR Output: %b", dataOut);
        $display("Fault Detected: %b", fault_detected);
        $stop;
    end
endmodule
