// Code your design here
module multi_compuerta(

	input wire in1,
    input wire in2,
  	input wire in3,
    input wire in4,

  	output wire out1,
    output wire out2
);
  
  wire A1;
  wire A2;
  wire O1;
  wire N1;

  assign A1 = in1 & in2;
  assign O1 = A1 | in3;

  assign A2 = in3 & in4;
  assign N1 = ~O1;

  assign out1 = N1 | A2;
  assign out2 = A2 & in3 & in4;


endmodule