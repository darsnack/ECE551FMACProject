module fmac(input CLK, input RESET, input [7:0] x, input [7:0] y, 
		    input [15:0] threshold, output reg [15:0] a);

reg [15:0] accumulator;
wire [15:0] prod;
wire [15:0] sum;
wire comparatorOutput;
wire overflow;

initial begin
    a = 16'd0;
    accumulator = 16'd0;
end

multiplier multiplier(
    .x(x),
    .y(y),
    .multOut(prod));
fadder adder(
    .a(accumulator),
    .b(prod),
    .s(sum),
	.co(overflow));
comparator comparator(
    .CLK(CLK),
    .a(sum),
    .b(threshold),
    .result(comparatorOutput));

always @(posedge CLK) begin
    if (RESET == 0) begin
        a <= 16'd0;
        accumulator <= 16'd0;
    end if ((~comparatorOutput)||overflow) begin
		a <= 16'd0;
		accumulator <= 16'd0;
	end else begin
        a <= sum;
        accumulator <= sum;
    end
end


endmodule
