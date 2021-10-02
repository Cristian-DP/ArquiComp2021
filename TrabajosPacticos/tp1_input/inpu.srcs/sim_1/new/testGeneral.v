`timescale 1ns / 1ps

`define assert(signal, operation, value)                                            \
        if (signal == value) begin                                                  \
            $display("ASSERTION PASSED in operation: %b , signal %d = value %d"      \
            ,operation, signal, value );                                             \
        end                                                                         \
        else begin                                                                  \
            $display("ASSERTION FAILED in operation: %b , signal %d != value %d"    \
            ,operation, signal, value );                                            \
            //$finish;                                                                \
        end


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
    parameter PERIOD = 15;

    always begin
        CLOCK = 1'b0;
        #(PERIOD/2) CLOCK = 1'b1;
        #(PERIOD/2);
    end

    reg [2:0]flag = 3'b000;
    reg [7:0]aux = 8'b0;
    reg [7:0]i_a = 0;           // Para el assert - test
    reg [7:0]i_b = 0;           // Para el assert - test
    reg [5:0]i_op = 0;          // Para el assert - test
    always @(posedge CLOCK) begin
        if( flag == 3'b001)
        begin
            D_DATO <= $urandom_range(127,0);
            D_A <= 1;
            #2;
            i_a <= D_DATO;
        end

        if( flag == 3'b010)
        begin
            D_A <= 0;
            #2;
            D_DATO <= $urandom_range(127,0);
            D_B <= 1;
            #2;
            i_b <= D_DATO;
        end

        if( flag == 3'b011 )
        begin
            D_B <= 0;
            #2;
            D_DATO <= D_Op_sw[$urandom_range(7,0)];
            D_Op <= 1;
            #2;
            i_op <= D_DATO;
        end

        if( flag == 3'b100)
        begin
            D_Op <= 0;
            flag <= 0;
            begin
                case(i_op)
                    D_Op_sw [0]: aux = i_a + i_b; 
                    D_Op_sw [1]: aux = i_a - i_b; 
                    D_Op_sw [2]: aux = i_a & i_b;
                    D_Op_sw [3]: aux = i_a | i_b;
                    D_Op_sw [4]: aux = i_a ^ i_b;
                    D_Op_sw [5]: aux = i_a >>> i_b;
                    D_Op_sw [6]: aux = i_a >> i_b;
                    D_Op_sw [7]: aux = ~(i_a | i_b);
                endcase
                `assert(out_op, i_op , aux[7:0])
            end
        end
        flag <= flag + 3'b001;
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
        D_Op_sw [4] <= 6'b100110;
        D_Op_sw [5] <= 6'b000011;
        D_Op_sw [6] <= 6'b000010;
        D_Op_sw [7] <= 6'b100111;


        //        #12;                     //12
        //        D_DATO = $urandom_range(127,0);
        //        #1
        //        D_A = 1;

        //        #4;                     //17
        //        D_A = 0;                 

        //        #5;                     //22
        //        D_DATO = $urandom_range(127,0);
        //        #1
        //        D_B = 1;

        //        #4;                     //27
        //        D_B = 0;

        //        #5;                     //32
        //        D_DATO = D_Op_sw [$urandom_range(7,0)];
        //        #1
        //        D_Op = 1;

        //        #4;                     //37
        //        D_Op = 0;

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
