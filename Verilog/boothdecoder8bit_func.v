module BoothDecoder8bit(input [7:0] y, input [2:0] a0, input [2:0] a1, input [2:0] a2,
						input [2:0] a3, output [8:0] pp0, output [8:0] pp1, output [8:0] pp2,
						output [8:0] pp3);

		Shifter decode1(.action(a0),.multiplicand(y),.partialProduct(pp0));
		Shifter decode2(.action(a1),.multiplicand(y),.partialProduct(pp1));
		Shifter decode3(.action(a2),.multiplicand(y),.partialProduct(pp2));
		Shifter decode4(.action(a3),.multiplicand(y),.partialProduct(pp3));

endmodule