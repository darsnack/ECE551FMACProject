comparator comparator(input CLK, input [15:0] a, input [15:0] b, output result);

assign output = a > b ? 1'b0: 1'b1;

endmodule