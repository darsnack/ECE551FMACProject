module multiplier(input CLK, input RESET,input [7:0] x, input [7:0] y, output [15:0] multOut);
	wire [3:0] a0;
	wire [3:0] a1;
	wire [3:0] a2;
	wire [3:0] a3;
	wire [8:0] pp0;
	wire [8:0] pp1;
	wire [8:0] pp2;
	wire [8:0] pp3;


	BoothEncoder8bit encode(.x(x),.a0(a0),.a1(a1),.a2(a2),.a3(a3)); 
	BoothDecoder8bit decode(.y(y),.a0(a0),.a1(a1),.a2(a2),.a3(a3),
							.pp0(pp0),.pp1(pp1),.pp2(pp2),.pp3(pp3));

	assign multOut[5:0] = {pp3[1:0],pp2[1:0],pp1[1:0],pp0[1:0]};
