// Created by ihdl
module SignExtender(input [9:0] partialProduct, input ppNum, output [9:0] extendedPartialProduct);

wire [9:0] choiceA;
wire [9:0] choiceB;
wire npp9;

myInv U1(partialProduct[9], npp9);

assign choiceA = {npp9, partialProduct[8:0]};
assign choiceB = {npp9, partialProduct[9], partialProduct[9], partialProduct[8:2]};

mux1bit mux0(.a(choiceA[0]), .b(choiceB[0]), .sel(ppNum), .o(extendedPartialProduct[0]));
mux1bit mux1(.a(choiceA[1]), .b(choiceB[1]), .sel(ppNum), .o(extendedPartialProduct[1]));
mux1bit mux2(.a(choiceA[2]), .b(choiceB[2]), .sel(ppNum), .o(extendedPartialProduct[2]));
mux1bit mux3(.a(choiceA[3]), .b(choiceB[3]), .sel(ppNum), .o(extendedPartialProduct[3]));
mux1bit mux4(.a(choiceA[4]), .b(choiceB[4]), .sel(ppNum), .o(extendedPartialProduct[4]));
mux1bit mux5(.a(choiceA[5]), .b(choiceB[5]), .sel(ppNum), .o(extendedPartialProduct[5]));
mux1bit mux6(.a(choiceA[6]), .b(choiceB[6]), .sel(ppNum), .o(extendedPartialProduct[6]));
mux1bit mux7(.a(choiceA[7]), .b(choiceB[7]), .sel(ppNum), .o(extendedPartialProduct[7]));
mux1bit mux8(.a(choiceA[8]), .b(choiceB[8]), .sel(ppNum), .o(extendedPartialProduct[8]));
mux1bit mux9(.a(choiceA[9]), .b(choiceB[9]), .sel(ppNum), .o(extendedPartialProduct[9]));

endmodule

