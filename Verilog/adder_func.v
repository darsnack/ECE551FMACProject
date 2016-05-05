//Verilog HDL for "551FMAC", "adder" "functional"


module adder ( a, b, cin, cout, s );

  output s;
  input cin;
  output cout;
  input b;
  input a;
  supply1 vdd;

  wire abPmos,nmosInDown;
  wire cinPmos;

  pmos U1(abPmos,vdd,a);
  pmos U2(nmosInDown,abPmos,b);
  nmos U3(nmosInDown,a,b);
  nmos U4(nmosInDown,b,a);

  pmos U5(cinPmos,vdd,cin);
  pmos U6(s,cinPmos,nmosInDown);
  nmos U7(s,cin,nmosInDown);
  nmos U8(s,nmosInDown,cin);

  nmos U9(cout,a,nmosInDown);
  pmos U10(cout,cin,nmosInDown);

endmodule

