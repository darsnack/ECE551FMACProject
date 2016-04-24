module BoothEncoder8bit(input [7:0] x, output [2:0] a0,
						output [2:0] a1, output [2:0] a2, output [2:0] a3);
	BoothEncoder group1(.x0(1'b0),.x1(x[0]),.x2(x[1]),.action(a0));
	BoothEncoder group2(.x0(x[1]),.x1(x[2]),.x2(x[3]),.action(a1));
	BoothEncoder group3(.x0(x[3]),.x1(x[4]),.x2(x[5]),.action(a2));
	BoothEncoder group4(.x0(x[5]),.x1(x[6]),.x2(x[7]),.action(a3));

endmodule