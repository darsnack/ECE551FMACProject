module fmac(input CLK, input RESET, input [7:0] x, input [7:0] y, output reg [15:0] a);

parameter THRESHOLD = 16'd65025;

reg [15:0] accumulator;
wire [15:0] prod;
wire [15:0] sum;
wire comparatorOutput;

initial begin
    a = 16'd0;
    accumulator = 16'd0;
end

multiplier multiplier(
    .CLK(CLK),
    .RESET(RESET),
    .x(x),
    .y(y),
    .multOut(prod));
fadder adder(
    .a(accumulator),
    .b(prod),
    .s(sum));
comparator comparator(
    .CLK(CLK),
    .a(a)
    .b(THRESHOLD)
    .result(comparatorOutput));

always @(posedge CLK) begin
    if (RESET == 0) begin
        a <= 16'd0;
        accumulator <= 16'd0;
    end else if (~comparatorOutput) begin
        a <= 16'd0;
        accumulator <= 16'd0;
    end else begin
        a <= sum;
        accumulator <= sum;
    end
end

endmodule