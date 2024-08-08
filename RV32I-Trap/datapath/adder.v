module adder #(

    parameter size = 8

) (

    input [size-1:0] a,
    input [size-1:0] b,
    input cin,
    output cout,
    output [size-1:0] sum

);

    assign {cout, sum} = a + b + cin;

endmodule
