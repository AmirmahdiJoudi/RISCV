module mux2to1 #(

    parameter size = 8

) (

    input [size-1:0] i0, 
    input [size-1:0] i1,
    input sel,
    output [size-1:0] y

);

    assign y = (sel == 1'b1) ? i1 : i0;

endmodule
