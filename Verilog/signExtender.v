module SignExtender(input [8:0] partialProduct,output [8:0] extendedPartialProduct);
	always@(partialProduct[8])
		case(partialProduct[8])
			1'b0: extendedPartialProduct = {3'b100,partialProduct[7:2]};
			1'b1: extendedPartialProduct = {3'b011,partialProduct[7:2]};
		endcase