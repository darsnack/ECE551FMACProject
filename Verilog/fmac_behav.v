// Created by ihdl
module fmac(input CLK, input RESET, input [7:0] x, input [7:0] y, 
			input [15:0] threshold, output reg [15:0] a);

reg [15:0] accumulator;

initial begin
    a = 16'd0;
    accumulator = 16'd0;
end

always @(x or y) begin
    accumulator = accumulator + x * y;
end

always @(posedge CLK) begin
    if (RESET == 0) begin
        a <= 16'd0;
        accumulator <= 16'd0;
    end else if (a > threshold) begin
        a <= 16'd0;
        accumulator <= 16'd0;
    end else begin
        a <= accumulator;
        accumulator <= accumulator;
    end
end

endmodule
