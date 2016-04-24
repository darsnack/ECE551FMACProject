module multiplier(input [7:0] x, input [7:0] y, output [15:0] multOut);
	//encoder outputs
	wire [3:0] a0;
	wire [3:0] a1;
	wire [3:0] a2;
	wire [3:0] a3;
	//partial product outputs
	wire [8:0] pp0;
	wire [8:0] pp1;
	wire [8:0] pp2;
	wire [8:0] pp3;
	//sign extended partial products
	wire [8:0] extendedpp0;
	wire [8:0] extendedpp1;
	wire [8:0] extendedpp2;
	wire [8:0] extendedpp3;
	//addition outputs
	wire cout0, cout1, cout2;
	wire [8:0] s0;
	wire [8:0] s1;
	wire [8:0] s2;

	BoothEncoder8bit encode(.x(x),.a0(a0),.a1(a1),.a2(a2),.a3(a3));
	BoothDecoder8bit decode(.y(y),.a0(a0),.a1(a1),.a2(a2),.a3(a3),
							.pp0(pp0),.pp1(pp1),.pp2(pp2),.pp3(pp3));

	SignExtender partial0(.partialProduct(pp0),.extendedPartialProduct(extendedpp0));
	SignExtender partial1(.partialProduct(pp1),.extendedPartialProduct(extendedpp1));
	SignExtender partial2(.partialProduct(pp2),.extendedPartialProduct(extendedpp2));
	SignExtender partial3(.partialProduct(pp3),.extendedPartialProduct(extendedpp3));

	adder9bit_behav adder0(.a(extendedpp0),.b(extendedpp1),.cin(1'b0),.cout(cout0),.s(s0));
	adder9bit_behav adder1(.a(extendedpp2),.b({cout0,s0[8:2]}),.cin(cout0),.cout(cout1),.s(s1));
	adder9bit_behav adder2(.a(extendedpp3),.b({cout1,s1[8:2]}),.cin(cout1),.cout(cout2),.s(s2));


	assign multOut= {cout2,s2,s1[1:0],s0[1:0],pp0[1:0]};

endmodule