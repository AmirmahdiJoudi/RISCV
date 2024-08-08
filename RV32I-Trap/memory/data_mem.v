module data_mem (

    input clk,
    input mrd, 
    input mwr, 
    input [31:0] adr,
    input [31:0] d_in,
    
    output [31:0] d_out

);

    reg [7:0] mem [0:65535];

    initial
    begin
        $readmemb("../memory/data.txt", mem, 32'h00001000);
    end


    // initial begin
    //     #3500;
    //     $display("The content of mem[2000] = %d", $signed({mem[2003], mem[2002], mem[2001], mem[2000]}));
    // end 


    always @(posedge clk)
        if (mwr==1'b1)
            {mem[adr+3], mem[adr+2], mem[adr+1], mem[adr]} = d_in;
    
    assign d_out = (mrd==1'b1) ? {mem[adr+3], mem[adr+2], mem[adr+1], mem[adr]} : 32'd0;

endmodule   
