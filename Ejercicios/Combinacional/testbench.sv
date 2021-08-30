// Code your testbench here
// or browse Examples
module test;
	reg a,b,c,d;
  	wire e,f;
  
  multi_compuerta UUT (.in1    (a),
                       .in2    (b),
                       .in3    (c),
                       .in4    (d),
                       .out1   (e),
                       .out2   (f));
  
  initial 
    begin
  
      a = 1;
      b = 1;
      c = 1;
      d = 0;
      #20 d=1;
      
  	end

  initial $monitor($time, a, b, c, d, e, f);
endmodule