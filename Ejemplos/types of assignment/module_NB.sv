module blockNB
  input a, b,c, 
  output reg y
);

  always @(*) begin
    y <= a;
    y <= y & b;
    y <= y & c;
  end
endmodule

/*
MEssage:
	VCD info: dumpfile dump.vcd opened for output.
    
   dependemos de la salida. Al no tener valor asigando, 
   No puede resolver el feedback que se produce.
*/