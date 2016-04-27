//Verilog HDL for "551FMAC", "shifter" "behavioral"

//selects the correct partial product from the encoder output
module Shifter(input [2:0] action, input [7:0] multiplicand, output reg [9:0] partialProduct);
always@(action or multiplicand)
	case(action)
		3'b000: partialProduct<=10'd0;
		3'b010: partialProduct<={2'b00,multiplicand}<<1;
		3'b011: partialProduct<=~({1'b0,multiplicand,1'b0})+1'b1;
		3'b100: partialProduct<={2'b00,multiplicand};
		3'b101: partialProduct<=(~{2'b00,multiplicand})+1'b1;
		default: partialProduct<=multiplicand;
	endcase
endmodule
