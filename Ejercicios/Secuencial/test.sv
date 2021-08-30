// Code your testbench here
// or browse Examples
module test;
	reg in1, in2, in3, in4, clk;
  	wire out1, out2;
    reg PERIOD = 10;
  
  multi_compuerta_sec multi_compuerta_sec1 (.in1    (in1),
                                            .in2    (in2),
                                            .in3    (in3),
                                            .in4    (in4),
                                            .out1   (out1),
                                            .out2   (out2),
                                            .clk    (clk)
                                            );
  
  initial 
    begin
      $dumpfile("dump.vcd");$dumpvars;
      clk = 0;
      in1 = 1;
      in2 = 1;
      in3 = 1;
      in4 = 0;
      #5
      clk = 1;
      in4 = 1;
      #5 
      clk = 0;
      in4 = 1;
      #5 ;
      clk = 1;
      in4 = 0;
      #5 ;
      clk = 0;
      in4 = 1;
      #5 ;
      
  	end
  /*
  always begin
    #10 clk = ~clk;
  end
  */
endmodule