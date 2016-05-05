// Created by ihdl
module Shifter(input [2:0] action, input [7:0] multiplicand, output [9:0] partialProduct);

wire [9:0] tmpPP;

BoothDecoder1bit decode0(.ya(multiplicand[0]),.yb(1'b0),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[0]));
BoothDecoder1bit decode1(.ya(multiplicand[1]),.yb(multiplicand[0]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[1]));
BoothDecoder1bit decode2(.ya(multiplicand[2]),.yb(multiplicand[1]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[2]));
BoothDecoder1bit decode3(.ya(multiplicand[3]),.yb(multiplicand[2]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[3]));
BoothDecoder1bit decode4(.ya(multiplicand[4]),.yb(multiplicand[3]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[4]));
BoothDecoder1bit decode5(.ya(multiplicand[5]),.yb(multiplicand[4]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[5]));
BoothDecoder1bit decode6(.ya(multiplicand[6]),.yb(multiplicand[5]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[6]));
BoothDecoder1bit decode7(.ya(multiplicand[7]),.yb(multiplicand[6]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[7]));
BoothDecoder1bit decode8(.ya(1'b0),.yb(multiplicand[7]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(tmpPP[8]));

assign tmpPP[9] = action[0];

adder10bit adder(.a(tmpPP), .b({9'd0, action[0]}), .cin(1'b0), .cout(), .s(partialProduct));

endmodule

