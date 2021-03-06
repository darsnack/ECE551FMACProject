module comparator(input CLK, input [15:0] a, input [15:0] b, output result);

supply0 gnd;
supply1 vdd;

wire A1xorB1;
wire A2xorB2;
wire A3xorB3;
wire A4xorB4;
wire A5xorB5;
wire A6xorB6;
wire A7xorB7;
wire A8xorB8;
wire A9xorB9;
wire A10xorB10;
wire A11xorB11;
wire A12xorB12;
wire A13xorB13;
wire A14xorB14;
wire A15xorB15;

wire nB0;
wire nB1;
wire nB2;
wire nB3;
wire nB4;
wire nB5;
wire nB6;
wire nB7;
wire nB8;
wire nB9;
wire nB10;
wire nB11;
wire nB12;
wire nB13;
wire nB14;
wire nB15;

wire d0;
wire d1;
wire d2;
wire d3;
wire d4;
wire d5;
wire d6;
wire d7;
wire d8;
wire d9;
wire d10;
wire d11;
wire d12;
wire d13;
wire d14;
wire d15;

wire intermediate0;
wire intermediate1;
wire intermediate2;
wire intermediate3;
wire intermediate4;
wire intermediate5;
wire intermediate6;
wire intermediate7;
wire intermediate8;
wire intermediate9;
wire intermediate10;
wire intermediate11;
wire intermediate12;
wire intermediate13;
wire intermediate14;
wire intermediate15;

wire clkCheck0;
wire clkCheck1;
wire clkCheck2;
wire clkCheck3;
wire clkCheck4;
wire clkCheck5;
wire clkCheck6;
wire clkCheck7;
wire clkCheck8;
wire clkCheck9;
wire clkCheck10;
wire clkCheck11;
wire clkCheck12;
wire clkCheck13;
wire clkCheck14;
wire clkCheck15;

wire nResult;

myXor2 xor1(.a(a[1]), .b(b[1]), .f(A1xorB1));
myXor2 xor2(.a(a[2]), .b(b[2]), .f(A2xorB2));
myXor2 xor3(.a(a[3]), .b(b[3]), .f(A3xorB3));
myXor2 xor4(.a(a[4]), .b(b[4]), .f(A4xorB4));
myXor2 xor5(.a(a[5]), .b(b[5]), .f(A5xorB5));
myXor2 xor6(.a(a[6]), .b(b[6]), .f(A6xorB6));
myXor2 xor7(.a(a[7]), .b(b[7]), .f(A7xorB7));
myXor2 xor8(.a(a[8]), .b(b[8]), .f(A8xorB8));
myXor2 xor9(.a(a[9]), .b(b[9]), .f(A9xorB9));
myXor2 xor10(.a(a[10]), .b(b[10]), .f(A10xorB10));
myXor2 xor11(.a(a[11]), .b(b[11]), .f(A11xorB11));
myXor2 xor12(.a(a[12]), .b(b[12]), .f(A12xorB12));
myXor2 xor13(.a(a[13]), .b(b[13]), .f(A13xorB13));
myXor2 xor14(.a(a[14]), .b(b[14]), .f(A14xorB14));
myXor2 xor15(.a(a[15]), .b(b[15]), .f(A15xorB15));

nmos passFET1(d1, d0, A1xorB1);
nmos passFET2(d2, d1, A2xorB2);
nmos passFET3(d3, d2, A3xorB3);
nmos passFET4(d4, d3, A4xorB4);
nmos passFET5(d5, d4, A5xorB5);
nmos passFET6(d6, d5, A6xorB6);
nmos passFET7(d7, d6, A7xorB7);
nmos passFET8(d8, d7, A8xorB8);
nmos passFET9(d9, d8, A9xorB9);
nmos passFET10(d10, d9, A10xorB10);
nmos passFET11(d11, d10, A11xorB11);
nmos passFET12(d12, d11, A12xorB12);
nmos passFET13(d13, d12, A13xorB13);
nmos passFET14(d14, d13, A14xorB14);
nmos passFET15(d15, d14, A15xorB15);

myInv inv0(.in(b[0]), .out(nB0));
myInv inv1(.in(b[1]), .out(nB1));
myInv inv2(.in(b[2]), .out(nB2));
myInv inv3(.in(b[3]), .out(nB3));
myInv inv4(.in(b[4]), .out(nB4));
myInv inv5(.in(b[5]), .out(nB5));
myInv inv6(.in(b[6]), .out(nB6));
myInv inv7(.in(b[7]), .out(nB7));
myInv inv8(.in(b[8]), .out(nB8));
myInv inv9(.in(b[9]), .out(nB9));
myInv inv10(.in(b[10]), .out(nB10));
myInv inv11(.in(b[11]), .out(nB11));
myInv inv12(.in(b[12]), .out(nB12));
myInv inv13(.in(b[13]), .out(nB13));
myInv inv14(.in(b[14]), .out(nB14));
myInv inv15(.in(b[15]), .out(nB15));

pmos pCLK0(d0, vdd, CLK);
pmos pCLK1(d1, vdd, CLK);
pmos pCLK2(d2, vdd, CLK);
pmos pCLK3(d3, vdd, CLK);
pmos pCLK4(d4, vdd, CLK);
pmos pCLK5(d5, vdd, CLK);
pmos pCLK6(d6, vdd, CLK);
pmos pCLK7(d7, vdd, CLK);
pmos pCLK8(d8, vdd, CLK);
pmos pCLK9(d9, vdd, CLK);
pmos pCLK10(d10, vdd, CLK);
pmos pCLK11(d11, vdd, CLK);
pmos pCLK12(d12, vdd, CLK);
pmos pCLK13(d13, vdd, CLK);
pmos pCLK14(d14, vdd, CLK);
pmos pCLK15(d15, vdd, CLK);

nmos nBnMOS0(d0, intermediate0, nB0);
nmos nBnMOS1(d1, intermediate1, nB1);
nmos nBnMOS2(d2, intermediate2, nB2);
nmos nBnMOS3(d3, intermediate3, nB3);
nmos nBnMOS4(d4, intermediate4, nB4);
nmos nBnMOS5(d5, intermediate5, nB5);
nmos nBnMOS6(d6, intermediate6, nB6);
nmos nBnMOS7(d7, intermediate7, nB7);
nmos nBnMOS8(d8, intermediate8, nB8);
nmos nBnMOS9(d9, intermediate9, nB9);
nmos nBnMOS10(d10, intermediate10, nB10);
nmos nBnMOS11(d11, intermediate11, nB11);
nmos nBnMOS12(d12, intermediate12, nB12);
nmos nBnMOS13(d13, intermediate13, nB13);
nmos nBnMOS14(d14, intermediate14, nB14);
nmos nBnMOS15(d15, intermediate15, nB15);

nmos anMOS0(intermediate0, clkCheck0, a[0]);
nmos anMOS1(intermediate1, clkCheck1, a[1]);
nmos anMOS2(intermediate2, clkCheck2, a[2]);
nmos anMOS3(intermediate3, clkCheck3, a[3]);
nmos anMOS4(intermediate4, clkCheck4, a[4]);
nmos anMOS5(intermediate5, clkCheck5, a[5]);
nmos anMOS6(intermediate6, clkCheck6, a[6]);
nmos anMOS7(intermediate7, clkCheck7, a[7]);
nmos anMOS8(intermediate8, clkCheck8, a[8]);
nmos anMOS9(intermediate9, clkCheck9, a[9]);
nmos anMOS10(intermediate10, clkCheck10, a[10]);
nmos anMOS11(intermediate11, clkCheck11, a[11]);
nmos anMOS12(intermediate12, clkCheck12, a[12]);
nmos anMOS13(intermediate13, clkCheck13, a[13]);
nmos anMOS14(intermediate14, clkCheck14, a[14]);
nmos anMOS15(intermediate15, clkCheck15, a[15]);

nmos nCLK0(clkCheck0, gnd, CLK);
nmos nCLK1(clkCheck1, gnd, CLK);
nmos nCLK2(clkCheck2, gnd, CLK);
nmos nCLK3(clkCheck3, gnd, CLK);
nmos nCLK4(clkCheck4, gnd, CLK);
nmos nCLK5(clkCheck5, gnd, CLK);
nmos nCLK6(clkCheck6, gnd, CLK);
nmos nCLK7(clkCheck7, gnd, CLK);
nmos nCLK8(clkCheck8, gnd, CLK);
nmos nCLK9(clkCheck9, gnd, CLK);
nmos nCLK10(clkCheck10, gnd, CLK);
nmos nCLK11(clkCheck11, gnd, CLK);
nmos nCLK12(clkCheck12, gnd, CLK);
nmos nCLK13(clkCheck13, gnd, CLK);
nmos nCLK14(clkCheck14, gnd, CLK);
nmos nCLK15(clkCheck15, gnd, CLK);

myInv buf1(.in(d15), .out(nResult));
myInv buf2(.in(nResult), .out(result));

endmodule