`timescale 1ns/1ps

module fir_filter_tb;

    reg clk;
    reg reset;
    reg signed [7:0] x;
    wire signed [15:0] y;

    // Instantiate FIR Filter
    fir_filter uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial
    begin
    $dumpfile("fir_filter.vcd");
$dumpvars(0, fir_filter_tb);
        clk = 0;
        reset = 1;
        x = 0;

        #10 reset = 0;

        // Apply inputs
        #10 x = 1;
        #10 x = 2;
        #10 x = 3;
        #10 x = 4;
        #10 x = 5;
        #10 x = 6;

        #50 $finish;
    end

endmodule
