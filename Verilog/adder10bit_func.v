// Created by ihdl
module adder10bit(input [12:0] a, input [12:0] b, input cin, output cout, output [12:0] s);
	wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;
	adder adder0(.a(a[0]),.b(b[0]),.cin(1'b0),.s(s[0]),.cout(c0));
	adder adder1(.a(a[1]),.b(b[1]),.cin(c0),.s(s[1]),.cout(c1));
	adder adder2(.a(a[2]),.b(b[2]),.cin(c1),.s(s[2]),.cout(c2));
	adder adder3(.a(a[3]),.b(b[3]),.cin(c2),.s(s[3]),.cout(c3));
	adder adder4(.a(a[4]),.b(b[4]),.cin(c3),.s(s[4]),.cout(c4));
	adder adder5(.a(a[5]),.b(b[5]),.cin(c4),.s(s[5]),.cout(c5));
	adder adder6(.a(a[6]),.b(b[6]),.cin(c5),.s(s[6]),.cout(c6));
	adder adder7(.a(a[7]),.b(b[7]),.cin(c6),.s(s[7]),.cout(c7));
	adder adder8(.a(a[8]),.b(b[8]),.cin(c7),.s(s[8]),.cout(c8));
	adder adder9(.a(a[9]),.b(b[9]),.cin(c8),.s(s[9]),.cout(c9));
	adder adder10(.a(a[10]),.b(b[10]),.cin(c9),.s(s[10]),.cout(c10));
	adder adder11(.a(a[11]),.b(b[11]),.cin(c10),.s(s[11]),.cout(c11));
	adder adder12(.a(a[12]),.b(b[12]),.cin(c11),.s(s[12]),.cout(cout));

endmodule

