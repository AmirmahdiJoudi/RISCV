module riscv_tb;
    
    reg clk;
    reg rst;
    wire [31:0] inst_adr;
    wire [31:0] inst;
    wire [31:0] data_adr;
    wire [31:0] data_in;
    wire [31:0] data_out;
    wire mem_read;
    wire mem_write;


    riscv_pipeline CPU (
        .clk(clk),
        .rst(rst), 
        .inst(inst), 
        .data_in(data_in),            
        .mem_read(mem_read), 
        .mem_write(mem_write),
        .inst_adr(inst_adr), 
        .data_adr(data_adr), 
        .data_out(data_out)
    );

    inst_mem IM (
        .adr(inst_adr), 
        .d_out(inst)
    );

    data_mem DM (
        .adr(data_adr),
        .d_in(data_out),
        .mrd(mem_read),
        .mwr(mem_write),
        .clk(clk),
        .d_out(data_in)
    );



    initial begin
        rst = 1'b1;
        clk = 1'b0;
        #20 rst = 1'b0;
        #3500 $stop;
    end

    always begin
        #8 clk = ~clk;
    end

endmodule
