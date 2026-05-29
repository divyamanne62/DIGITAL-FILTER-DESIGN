module fir_filter(
    input clk,
    input reset,
    input signed [7:0] x,
    output reg signed [15:0] y
);

    // Filter coefficients
    parameter h0 = 1;
    parameter h1 = 2;
    parameter h2 = 3;
    parameter h3 = 2;

    // Delay elements
    reg signed [7:0] x1, x2, x3;

    always @(posedge clk or posedge reset)
    begin
        if(reset)
        begin
            x1 <= 0;
            x2 <= 0;
            x3 <= 0;
            y  <= 0;
        end
        else
        begin
            // Shift register
            x3 <= x2;
            x2 <= x1;
            x1 <= x;

            // FIR equation
            y <= (h0*x) + (h1*x1) + (h2*x2) + (h3*x3);
        end
    end

endmodule
