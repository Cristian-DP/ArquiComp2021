module test;
	reg g,h,i;
  	wire j;
  
  blocB blocB1 (.a    (g),
                  .b    (h),
                  .c    (i),
                  .y    (j)
                  );
  initial 
    begin
  $dumpfile("dump.vcd");$dumpvars;
      g = 1;
      h = 1;
      i = 1;
      #10 
      i = 0;
      #10;
      #10;
      
  	end

  initial $monitor($time, g, h, i, j);
endmodule