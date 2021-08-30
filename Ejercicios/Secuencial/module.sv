// Code your design here
// Code your design here
module multi_compuerta_sec(

	input  in1,
    input in2,
  	input in3,
    input in4,
  // se agrega el clok como entrada
	  input clk,
  
  	output reg out1,
    output reg out2
);
  reg A1, A2, O1, N1;
	
  always @(posedge clk) begin
     A1 = in1 & in2;
     O1 = A1 | in3;
     A2 = in3 & in4;
     N1 = ~O1;

     out1 = N1 | A2;
     out2 = A2 & in3 & in4;
  end
  

endmodule