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
        

module aluTest;
    parameter NB_D = 8;
    /* Datos */
    reg       [NB_D - 1:0] i_a;
    reg       [NB_D - 1:0] i_b;
    reg       [5:0] i_op;
    wire      [NB_D - 1:0] o_o;

    reg [5:0] D_Op_sw[7:0];

    alu myAlu (.i_a(i_a), .i_b(i_b), .i_op(i_op) , .o_o(o_o));

    //////CLOCK/////////////////////
    reg CLOCK;
    parameter PERIOD = 10;
    always begin
        CLOCK = 1'b0;
        #(PERIOD/2) CLOCK = 1'b1;
        #(PERIOD/2);
    end
    ///////////////////////////////		
    
    reg count = 1'b0;
    always @(posedge CLOCK) begin
        if( count == 1'b0 )
        begin
            i_a <= $random();
            i_b <= $random();
            i_op <= D_Op_sw [$urandom_range(7,0)];
        end
        if( count == 1'b1 )
        begin
            case(i_op)
                D_Op_sw [0]: `assert(o_o, i_op , i_a + i_b)
                D_Op_sw [1]: `assert(o_o, i_op , i_a - i_b)
                D_Op_sw [2]: `assert(o_o, i_op , i_a & i_b)
                D_Op_sw [3]: `assert(o_o, i_op , i_a | i_b)
                D_Op_sw [4]: `assert(o_o, i_op , i_a ^ i_b)
                D_Op_sw [5]: `assert(o_o, i_op , i_a >>> i_b)
                D_Op_sw [6]: `assert(o_o, i_op , i_a >> i_b)
                D_Op_sw [7]: `assert(o_o, i_op , ~(i_a | i_b))
            endcase
        end
        count <= count + 1'b1;     
    end
				
    /* Se realiza la operacion deseada */
    initial
    begin
        i_a <= 8'b0;
        i_b <= 8'b0;
        i_op <= 6'b0;
        
        D_Op_sw [0] <= 6'b100000;
        D_Op_sw [1] <= 6'b100010;
        D_Op_sw [2] <= 6'b100100;
        D_Op_sw [3] <= 6'b100101;
        D_Op_sw [4] <= 6'b100110;
        D_Op_sw [5] <= 6'b000011;
        D_Op_sw [6] <= 6'b000010;
        D_Op_sw [7] <= 6'b100111;

    end

    //initial $monitor(D_A, D_B, FO);
endmodule
