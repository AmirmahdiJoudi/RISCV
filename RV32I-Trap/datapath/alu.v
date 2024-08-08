module alu #(

    parameter size=32

) (

    input [size-1:0] a, 
    input [size-1:0] b,
    input [3:0] ctrl,
    
    output [size-1:0] y,
    output zero

);

    wire [32:0] res;
    wire [32:0] opA;
    wire [32:0] opB;
    wire [63:0] opSRA;
    wire ov;

    assign res = opA + opB;
    assign ov = (opA[32] & opB[32] & (~res[32])) | ((~opA[32]) & (~opB[32]) & res[32]);

    assign y = (ctrl == 4'b0000) ? (32'd0) :
               (ctrl == 4'b0001) ? (res[31:0]) :
               (ctrl == 4'b0010) ? (res[31:0]) :
               (ctrl == 4'b0011) ? b :
               (ctrl == 4'b0100) ? (res[32]) :
               (ctrl == 4'b0101) ? (res[32]) :
               (ctrl == 4'b0110) ? (a ^ b) :
               (ctrl == 4'b0111) ? (a | b) :
               (ctrl == 4'b1000) ? (a & b) :
               (ctrl == 4'b1001) ? a << b[4:0] :
               (ctrl == 4'b1010) ? a >> b[4:0] :
               (ctrl == 4'b1011) ? opSRA[31:0] :
               33'd0;

    assign opA = (ctrl == 4'b0000) ? 33'b0 :
                 (ctrl == 4'b0001) ? {a[31], a} :
                 (ctrl == 4'b0010) ? {a[31], a} :
                 (ctrl == 4'b0011) ? 33'b0 :
                 (ctrl == 4'b0100) ? {a[31], a} :
                 (ctrl == 4'b0101) ? {1'b0, a} :
                 33'd0;

    assign opB = (ctrl == 4'b0000) ? 33'b0 :
                 (ctrl == 4'b0001) ? {b[31], b} :
                 (ctrl == 4'b0010) ? (~{b[31], b} + 1'b1):
                 (ctrl == 4'b0011) ? 33'b0 :
                 (ctrl == 4'b0100) ? (~{b[31], b} + 1'b1):
                 (ctrl == 4'b0101) ? (~{1'b0, b} + 1'b1):
                 33'd0;
    
    assign opSRA = (ctrl == 4'b1011) ? ({{32{a[31]}},a} >> b[4:0]) : 64'b0;
    
    assign zero = (y == 32'd0) ? 1'b1 : 1'b0;

endmodule
