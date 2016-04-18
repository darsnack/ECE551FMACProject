//selects the correct partial product from the encoder output
//Also sign extends the partial products so that sign bits are 
//taken into account during additions
module Shifter(input [2:0] action, input [7:0] multplicand, output [8:0] partialProduct);
always@(action)
	case(action)
		3'd0: partialProduct=9'd0;
		3'd1: partialProduct={1'b0,multiplicand};
		3'd2: partialProduct={1'b0,multiplicand<<1};
		3'd3: partialProduct={1'b0,(~multiplicand+7'd1)};
		3'd4: partialProduct={1'b0,(~multiplicand+7'd1)<<1};
		3'd7: partialProduct=9'd0;
		default: partialProduct=multiplicand;
	endcase

