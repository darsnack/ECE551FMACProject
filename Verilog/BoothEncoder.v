//zeroth bit is always a zero
//BoothEncoder.v
//Assigns actions for each 3 bit section of the 8-bit multiplier
//to generate partial products for booth multiplier
module BoothEncoder(input x0,input x1,input x2, output [2:0] action);
always@(x2 or x1 or x0)
	case({x2,x1,x0})
		3'b000: action = 3'd0;
		3'b001: action = 3'd1;
		3'b010: action = 3'd1;
		3'b011: action = 3'd2;
		3'b100: action = 3'd4;
		3'b101: action = 3'd3;
		3'b110: action = 3'd3;
		3'b111: action = 3'd0;
		default: action = 3'd0;
	endcase
	
