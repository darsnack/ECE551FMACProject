// Created by ihdl
module BoothEncoder(input x0,input x1,input x2, output reg [2:0] action);
always@(x2 or x1 or x0)
	case({x2,x1,x0})
		3'b000: action <= 3'd0; //pp = 0
		3'b001: action <= 3'b100; // pp = 1*
		3'b010: action <= 3'b100; // pp = 1*
		3'b011: action <= 3'b010;// pp = 2*
		3'b100: action <= 3'b011;//pp = -2*
		3'b101: action <= 3'b101; //pp = -1*
		3'b110: action <= 3'b101; //pp = -1*
		3'b111: action <= 3'd0; //pp = 0
		default: action <= 3'd0;
	endcase
endmodule

