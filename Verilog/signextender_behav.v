// Created by ihdl
module SignExtender(input [9:0] partialProduct, input ppNum, output reg [9:0] extendedPartialProduct);
	always@(partialProduct or ppNum)
		case({ppNum, partialProduct[9]})
			2'b00: extendedPartialProduct = {~partialProduct[9], partialProduct[8:0]};
			2'b01: extendedPartialProduct = {~partialProduct[9], partialProduct[8:0]};
			2'b10: extendedPartialProduct = {3'b100,partialProduct[8:2]};
			2'b11: extendedPartialProduct = {3'b011,partialProduct[8:2]};
		endcase
endmodule
