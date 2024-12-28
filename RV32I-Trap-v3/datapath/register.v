module register #(

    parameter size = 8

) (

    input clk,
    input rst,
    input clr,
    input ld,
    input [size-1:0] initial_val,
    input [size-1:0] d_in,
    
    output reg [size-1:0] d_out

);

    always @(posedge clk, posedge rst) begin
        if (rst)
            d_out = initial_val;
        else if (clr==1'b1)
            d_out = initial_val;
        else if (ld)
            d_out = d_in;
    end

endmodule

