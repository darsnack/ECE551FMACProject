
// Verilog stimulus file.
// Please do not create a module in this file.


// Default verilog stimulus. 

initial
begin 

a = 1'b0;
b = 1'b0;
cin = 1'b0;
#20
a = 1'b1;
b = 1'b0;
cin = 1'b1;
#20
a = 1'b1;
b = 1'b1;
cin = 1'b0;
#20
a = 1'b1;
b = 1'b1;
cin = 1'b1;
#20
a = 1'b0;
b = 1'b1;
cin = 1'b1;
#20
a = 1'b1;
b = 1'b0;
cin = 1'b1;

#50 $finish;
end 
