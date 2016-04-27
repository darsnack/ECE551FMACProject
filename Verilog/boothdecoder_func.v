module BoothDecoder1bit(input ya, input yb, input en0, input en1, input en2, output ppj)
	assign ppj= ~((~(en0&ya))&(~(en1&yb)))^en2;
endmodule