module reg_file (

    input clk,
    input rst,
    input reg_write,  
    input [4:0] rd_reg1, 
    input [4:0] rd_reg2, 
    input [4:0] wr_reg,
    input [31:0] wr_data,
    
    output [31:0] rd_data1, 
    output [31:0] rd_data2  

);

    reg [31:0] register_file [0:31];
    integer i;

    assign rd_data1 = register_file[rd_reg1];
    assign rd_data2 = register_file[rd_reg2];    

    always @(negedge clk, posedge rst)begin
        if (rst == 1'b1)
            for (i=0; i<32; i=i+1 )
                register_file[i] <= 32'd0;
        else if (reg_write == 1'b1)
            if(wr_reg != 5'd0)begin
                register_file[wr_reg] <= wr_data;
            end
    end
    
endmodule