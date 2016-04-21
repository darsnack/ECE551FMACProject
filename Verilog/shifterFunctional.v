module Shifter(input [2:0] action, input [7:0] multplicand, output [8:0] partialProduct);
//en0 = single = action[0] en1 = double = action[1] en2 = neg = action[2]
	BoothDecoder1bit decode0(.ya(multplicand[0]),.yb(1'b0),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[0]));
	BoothDecoder1bit decode1(.ya(multplicand[1]),.yb(multplicand[0]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[1]));
	BoothDecoder1bit decode2(.ya(multplicand[2]),.yb(multplicand[1]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[2]));
	BoothDecoder1bit decode3(.ya(multplicand[3]),.yb(multplicand[2]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[3]));
	BoothDecoder1bit decode4(.ya(multplicand[4]),.yb(multplicand[3]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[4]));
	BoothDecoder1bit decode5(.ya(multplicand[5]),.yb(multplicand[4]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[5]));
	BoothDecoder1bit decode6(.ya(multplicand[6]),.yb(multplicand[5]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[6]));
	BoothDecoder1bit decode7(.ya(multplicand[7]),.yb(multplicand[6]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[7]));
	BoothDecoder1bit decode8(.ya(multplicand[8]),.yb(multplicand[7]),.en0(action[0]),.en1(action[1]),.en2(action[2]),.ppj(partialProduct[8]));

endmodule