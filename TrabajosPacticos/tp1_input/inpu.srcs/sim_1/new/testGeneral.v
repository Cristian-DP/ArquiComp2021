`timescale 1ns / 1ps

module testGeneral;
    parameter NB_D = 8;

    /* Datos */
    reg CLOCK;
    reg D_A;
    reg D_B;
    reg D_Op;
    reg [NB_D - 1 :0] D_DATO;
    wire [NB_D - 1 :0] out_op;
    
    reg [5:0] D_Op_sw[7:0];
    

    INPUT myINPUT (.DATO(D_DATO), .selA(D_A), .selB(D_B), .selOp(D_Op) , .CLOCK(CLOCK), .o_alu(out_op));

    // CLOCK /////////////////////////////////////////////////
    parameter PERIOD = 10;

    always begin
        CLOCK = 1'b0;
        #(PERIOD/2) CLOCK = 1'b1;
        #(PERIOD/2);
    end

    reg [2:0]flag = 3'b000;
    reg [2:0]aux = 3'b000;
    always @(posedge CLOCK) begin

        if(flag == 0)
        begin
//            D_DATO <= $urandom_range(127,0);
//            D_A <= 1;
        end
        
        if(flag == 1)
            $display ( "dato A = %d ", D_DATO);
        
        if( flag == 3'b010)
        begin
//            D_A <= 0;
//            D_DATO <= $urandom_range(127,0);
//            D_B <= 1; 
        end
        
        if(flag == 3)
            $display ( "dato B = %d ", D_DATO);
        
        if( flag == 3'b100 )
        begin
//            D_A <= 0;
//            D_B <= 0;
//            aux <= $urandom_range(7,0);
//            D_DATO <= D_Op_sw[aux];
//            D_Op <= 1;
            $display ( "operation %b ", D_Op_sw[aux]);
        end
        flag <= flag + 3'b001;
        if( flag == 3'b110 )
        begin
            D_Op <= 0;
            //D_DATO <= 0;
            flag <= 0;
            $display ( "Out operation: %d, %b", out_op, out_op);
            $display ("_____________\n");
        end    
    end

    /* Se realiza la operacion deseada */
    initial
    begin
        D_DATO <= 0;
        D_A <= 0;
        D_B <= 0;
        D_Op <= 0;
        
        D_Op_sw [0] <= 6'b100000;
        D_Op_sw [1] <= 6'b100010;
        D_Op_sw [2] <= 6'b100100;
        D_Op_sw [3] <= 6'b100101;
        D_Op_sw [4] <= 6'b000011;
        D_Op_sw [5] <= 6'b100110;
        D_Op_sw [6] <= 6'b000010;
        D_Op_sw [7] <= 6'b100111;
        
        #12;                     //12
        D_DATO = $urandom_range(127,0);
        #1
        D_A = 1;

        #4;                     //17
        D_A = 0;                 
        
        #5;                     //22
        D_DATO = $urandom_range(127,0);
        #1
        D_B = 1;

        #4;                     //27
        D_B = 0;
        
        #5;                     //32
        D_DATO = D_Op_sw [$urandom_range(7,0)];
        #1
        D_Op = 1;
        
        #4;                     //37
        D_Op = 0;

        //        #20;
        //        D_DATO = $urandom_range(127,0);
        //        D_A = 1'b0;
        //        D_B = 1'b1;

        //        #20;
        //        D_DATO = 8'b00100000;
        //        D_A = 0;
        //        D_B = 0;
        //        D_Op = 1'b1;

    end

    //initial $monitor("%d dato A: %d, dato B: %d, dato Op: %d, DATO: %d, out: %d",$time, D_A, D_B, D_Op, D_DATO, out_op);
    //initial $monitor("Out operation: %d \n", out_op);
endmodule
