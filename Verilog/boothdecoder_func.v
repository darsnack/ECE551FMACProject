// Created by ihdl
module BoothDecoder1bit(input ya, input yb, input en0, input en1, input en2, output ppj);
	wire Nen0ya, Nen1yb, intermediate;
    myNand2 U1(en2, ya, Nen0ya);
    myNand2 U2(en1,yb,Nen1yb);
	myNand2 U3(Nen0ya,Nen1yb,intermediate);
	myXor2 U4(intermediate,en0,ppj);

endmodule

