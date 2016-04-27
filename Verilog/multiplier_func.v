// Created by ihdl
module multiplier(input [7:0] x, input [7:0] y, output [15:0] multOut);
	//encoder outputs
	wire [2:0] a0;
	wire [2:0] a1;
	wire [2:0] a2;
	wire [2:0] a3;
	wire [2:0] a4;
	//partial product outputs
	wire [9:0] pp0;
	wire [9:0] pp1;
	wire [9:0] pp2;
	wire [9:0] pp3;
	wire [9:0] pp4;
	//sign extended partial products
	wire [9:0] extendedpp0;
	wire [9:0] extendedpp1;
	wire [9:0] extendedpp2;
	wire [9:0] extendedpp3;
	wire [9:0] extendedpp4;
	//addition outputs
	wire cout0, cout1, cout2,cout3;
	wire [12:0] s0;
	wire [12:0] s1;
	wire [12:0] s2;
	wire [12:0] s3;

	BoothEncoder8bit encode(.x(x),.a0(a0),.a1(a1),.a2(a2),.a3(a3),.a4(a4));
	BoothDecoder8bit decode(.y(y),.a0(a0),.a1(a1),.a2(a2),.a3(a3),.a4(a4),
							.pp0(pp0),.pp1(pp1),.pp2(pp2),.pp3(pp3),.pp4(pp4));

	SignExtender partial0(.partialProduct(pp0),.ppNum(1'b1),.extendedPartialProduct(extendedpp0));
	SignExtender partial1(.partialProduct(pp1),.ppNum(1'b0),.extendedPartialProduct(extendedpp1));
	SignExtender partial2(.partialProduct(pp2),.ppNum(1'b0),.extendedPartialProduct(extendedpp2));
	SignExtender partial3(.partialProduct(pp3),.ppNum(1'b0),.extendedPartialProduct(extendedpp3));
	SignExtender partial4(.partialProduct(pp4),.ppNum(1'b0),.extendedPartialProduct(extendedpp4));

	adder10bit adder0(.a({3'b001, extendedpp1}),.b({3'd0, extendedpp0}),.cin(1'b0),.cout(cout0),.s(s0));
	adder10bit adder1(.a({3'b001, extendedpp2}),.b({2'd0, s0[12:2]}),.cin(cout0),.cout(cout1),.s(s1));
	adder10bit adder2(.a({3'b001, extendedpp3}),.b({2'd0, s1[12:2]}),.cin(cout1),.cout(cout2),.s(s2));
	adder10bit adder3(.a({3'b000, extendedpp4}),.b({2'd0, s2[12:2]}),.cin(cout2),.cout(cout3),.s(s3));

	assign multOut = {s3[7:0],s2[1:0],s1[1:0],s0[1:0],pp0[1:0]};

endmodule
