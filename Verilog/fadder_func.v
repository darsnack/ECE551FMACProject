module fadder(input [15:0] a, input [15:0] b, output [15:0] s);

wire c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7;
wire c_8, c_9, c_10, c_11, c_12, c_13, c_14, c_15;

adder adder_0(.a(a[0]), .b(b[0]), .cin(1'b0), .cout(co_0), .s(s[0]));
adder adder_1(.a(a[1]), .b(b[1]), .cin(c_0), .cout(co_1), .s(s[1]));
adder adder_2(.a(a[2]), .b(b[2]), .cin(c_1), .cout(co_2), .s(s[2]));
adder adder_3(.a(a[3]), .b(b[3]), .cin(c_2), .cout(co_3), .s(s[3]));
adder adder_4(.a(a[4]), .b(b[4]), .cin(c_3), .cout(co_4), .s(s[4]));
adder adder_5(.a(a[5]), .b(b[5]), .cin(c_4), .cout(co_5), .s(s[5]));
adder adder_6(.a(a[6]), .b(b[6]), .cin(c_5), .cout(co_6), .s(s[6]));
adder adder_7(.a(a[7]), .b(b[7]), .cin(c_6), .cout(co_7), .s(s[7]));
adder adder_8(.a(a[8]), .b(b[8]), .cin(c_7), .cout(co_8), .s(s[8]));
adder adder_9(.a(a[9]), .b(b[9]), .cin(c_8), .cout(co_9), .s(s[9]));
adder adder_10(.a(a[10]), .b(b[10]), .cin(c_9), .cout(co_10), .s(s[10]));
adder adder_11(.a(a[11]), .b(b[11]), .cin(c_10), .cout(co_11), .s(s[11]));
adder adder_12(.a(a[12]), .b(b[12]), .cin(c_11), .cout(co_12), .s(s[12]));
adder adder_13(.a(a[13]), .b(b[13]), .cin(c_12), .cout(co_13), .s(s[13]));
adder adder_14(.a(a[14]), .b(b[14]), .cin(c_13), .cout(co_14), .s(s[14]));
adder adder_15(.a(a[15]), .b(b[15]), .cin(c_14), .cout(), .s(s[15]));

endmodule