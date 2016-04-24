module adder9bit(input [8:0] a, input [8:0] b, input cin, output cout, output [7:0] s);
	wire c0,c1,c2,c3,c4,c5,c6,c7,c8;
	wire s0,s1,s2,s3,s4,s5,s6,s7,s8;
	adder adder0(.a(a[0]),.b(b[0]),.cin(1'b0),.s(s[0]),.cout(c0));
	adder adder1(.a(a[1]),.b(b[1]),.cin(c0),.s(s[1]),.cout(c1));
	adder adder2(.a(a[2]),.b(b[2]),.cin(c1),.s(s[2]),.cout(c2));
	adder adder3(.a(a[3]),.b(b[3]),.cin(c2),.s(s[3]),.cout(c3));
	adder adder4(.a(a[4]),.b(b[4]),.cin(c3),.s(s[4]),.cout(c4));
	adder adder4(.a(a[5]),.b(b[5]),.cin(c4),.s(s[5]),.cout(c4));
	adder adder4(.a(a[6]),.b(b[6]),.cin(c5),.s(s[6]),.cout(c4));
	adder adder4(.a(a[7]),.b(b[7]),.cin(c6),.s(s[7]),.cout(c4));
	adder adder4(.a(a[8]),.b(b[8]),.cin(c7),.s(s[8]),.cout(cout));

endmodule