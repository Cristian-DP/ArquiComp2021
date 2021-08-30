module blockB(
  input a, b,c, 
  output reg y
);

  always @(*) begin
    y = a;
    y = y & b;
    y = y & c;
  end
endmodule