
// Verilog stimulus file.
// Please do not create a module in this file.


// Default verilog stimulus. 

integer i;

initial begin
threshold = 16'd254;
CLK = 1'b0;
RESET = 1'b0;
x = 8'd0;
y = 8'd0;

#20 RESET = 1'b1; y=8'd1;
for (i = 0; i < 8; i = i + 1) begin
    #20 x = 8'd1 << i;
end

#20 x = 8'd1; y = 8'd0;
for (i = 0; i < 8; i = i + 1) begin
    #20 y = 8'd1 << i;
end

#20 x = 8'd7; y = 8'd0; threshold = 16'd1700;
for (i = 0; i < 8; i = i + 1) begin
    #20 y = 8'd1 << i;
end

#20 threshold = 16'd65025;
#20 y = 8'b01010101; x = 8'b10101010;
#20 x = 8'hFF; y = 8'hFF;
#60 $finish;

end

always #10 CLK = ~CLK;
