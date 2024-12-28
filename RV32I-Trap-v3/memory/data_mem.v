module data_mem (

    input clk,
    input mrd, 
    input mwr, 
    input [31:0] adr,
    input [31:0] d_in,
    input [3:0] data_out_mask,
    
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
        if (mwr==1'b1) begin
            if ((data_out_mask ==4'b0001))
                mem[adr] = d_in[7:0];
            else if ((data_out_mask ==4'b0010))
                mem[adr+1] = d_in[15:8];
            else if ((data_out_mask ==4'b0100))
                mem[adr+2] = d_in[23:16];
            else if ((data_out_mask ==4'b1000))
                mem[adr+3] = d_in[31:24];
            else if ((data_out_mask ==4'b0011))
                {mem[adr+1], mem[adr]}  = d_in[15:0];
            else if ((data_out_mask ==4'b1100))
                {mem[adr+3], mem[adr+2]} = d_in[31:16];
            else if ((data_out_mask ==4'b1111))
                {mem[adr+3], mem[adr+2], mem[adr+1], mem[adr]} = d_in;
            else 
                {mem[adr+3], mem[adr+2], mem[adr+1], mem[adr]} = d_in;

        end
    
    assign d_out = (mrd==1'b1) ? {mem[adr+3], mem[adr+2], mem[adr+1], mem[adr]} : 32'd0;

endmodule   
