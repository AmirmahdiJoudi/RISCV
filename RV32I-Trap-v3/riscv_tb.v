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
    wire [3:0] data_out_mask;
    reg machine_software_interrupt;
    reg machine_timer_interrupt;
    reg machine_external_interrupt;


    riscv_pipeline CPU (
        .clk(clk),
        .rst(rst), 
        .machine_software_interrupt(machine_software_interrupt),
        .machine_timer_interrupt(machine_timer_interrupt),
        .machine_external_interrupt(machine_external_interrupt),

        .inst(inst), 
        .inst_adr(inst_adr),            
        .mem_read(mem_read), 
        .mem_write(mem_write),
        .data_out_mask(data_out_mask),
        .data_in(data_in), 
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
        .data_out_mask(data_out_mask),
        .clk(clk),
        .d_out(data_in)
    );



    initial begin
        rst = 1'b1;
        clk = 1'b0;
        #20 rst = 1'b0;
        #35000 $stop;
    end
    initial begin
        machine_software_interrupt = 1'b0;
        machine_timer_interrupt = 1'b0;
        machine_external_interrupt = 1'b0;
        wait(CPU.DP.IF.PC.d_out == 32'h000001c8);
        machine_software_interrupt = 1'b0;
        machine_timer_interrupt = 1'b0;
        machine_external_interrupt = 1'b1;
        #50;
        machine_software_interrupt = 1'b0;
        machine_timer_interrupt = 1'b0;
        machine_external_interrupt = 1'b0;

    end

    always begin
        #8 clk = ~clk;
    end

endmodule
