module execute_stage (
    input clk,
    input rst,
    input EX_MEM_en, // in
    input bhu_reg, // in
    input b_reg, // in
    input h_reg, // in
    input w_reg, // in
    input trap, // edited
    input ID_EX_mret,
    input [13:0] control_signals_nop_reg, // in
    input [11:0] csr_add, // edited
    input [31:0] ID_PC_reg, // in
    input [31:0] ID_ALU_Src2_L1_reg, // in
    input [4:0] ID_rf_rd_reg, // in
    input [31:0] ID_ALU_Src2_reg, // in
    input [31:0] ID_ALU_Src1_reg, // in
    input [31:0] mepc,
    input [31:0] mstatus_in,
    input [31:0] mip_in,
    input [31:0] mcause_in,
    input [31:0] mtval,

    output [31:0] mstatus_out,
    output [31:0] mip_out,
    output [31:0] mie_out,
    output [4:0] ID_EX_rd_hu, // out
    output mem_read_hu, // out
    output [4:0] ID_EX_rd, // out w
    output ID_EX_reg_write, // out w
    output [31:0] alu_out, // out w
    output ID_EX_bhu_reg, // out
    output ID_EX_b_reg, // out
    output ID_EX_h_reg, // out
    output ID_EX_w_reg, // out
    output ID_EX_wb_src_reg, // out
    output ID_EX_reg_write_reg, // out
    output ID_EX_mem_read_i_reg, // out
    output ID_EX_mem_write_i_reg, // out
    output ID_EX_mret_out,
    output [31:0] EX_PC_reg, // out
    output [31:0] ID_EX_ALU_Src2_L1_reg, // out
    output [31:0] alu_out_reg, // out
    output [4:0] ID_EX_rd_reg // out

);

    wire [31:0] EX_PC; // w
    wire [31:0] ALU_OP1; // w
    wire [31:0] ALU_OP2; // w
    wire [31:0] ALU_CSR_OP1; // w
    wire [31:0] ALU_CSR_OP2; // w
    wire [31:0] _4mcause; // edited // edited by neg
    wire [31:0] csr_out; // edited
    wire [31:0] csr_in; // edited
    wire [3:0] ID_EX_alu_operation; // w
    wire ID_EX_csr_wr_src; // edited
    wire ID_EX_csr_in_alu; // edited
    wire ID_EX_csr_write; // edited
    wire ID_EX_csr_read; //edited
    wire ID_EX_csr_set; // edited
    wire ID_EX_csr_clear; // edited
    wire [3:0] alu_operation; //edited
    wire ID_EX_wb_src; // w
    wire ID_EX_mem_read_i; // w
    wire ID_EX_mem_write_i; // w
    wire zero; // w
    wire [31:0] ID_EX_ALU_Src2_L1; // w
    wire ID_EX_b; // w
    wire ID_EX_h; // w
    wire ID_EX_w; // w
    wire ID_EX_bhu; // w


    assign EX_PC = ID_PC_reg;
    assign ID_EX_ALU_Src2_L1 = ID_ALU_Src2_L1_reg;
    assign ID_EX_rd = ID_rf_rd_reg;
    assign ALU_OP1 = ID_ALU_Src1_reg;
    assign ALU_OP2 = ID_ALU_Src2_reg;
    assign {ID_EX_csr_clear, ID_EX_csr_set, ID_EX_csr_write, ID_EX_csr_read, ID_EX_csr_in_alu, ID_EX_csr_wr_src, ID_EX_alu_operation, ID_EX_wb_src, ID_EX_reg_write, ID_EX_mem_read_i, ID_EX_mem_write_i} = control_signals_nop_reg;
    assign ID_EX_w = w_reg;
    assign ID_EX_h = h_reg;
    assign ID_EX_b = b_reg;
    assign ID_EX_bhu = bhu_reg;

    assign ID_EX_rd_hu = ID_EX_rd;
    assign mem_read_hu = ID_EX_mem_read_i;

    assign ID_EX_mret_out = ID_EX_mret;

    mux2to1 #( //edited
        .size(32)
    ) ALU_MUX_IN1 (
        .i0(ALU_OP1), 
        .i1(_4mcause), 
        .sel(trap),
        .y(ALU_CSR_OP1)
    );

    mux2to1 #( //edited
        .size(32)
    ) ALU_MUX_IN2 (
        .i0(ALU_OP2), 
        .i1(csr_out), 
        .sel(trap|ID_EX_csr_in_alu),
        .y(ALU_CSR_OP2)
    );

    mux2to1 #( //edited
        .size(4)
    ) ALU_MUX_OP (
        .i0(ID_EX_alu_operation), 
        .i1(4'b0001), 
        .sel(trap),
        .y(alu_operation)
    );

    mux2to1 #( //edited
        .size(32)
    ) CSR_MUX_IN (
        .i0(ALU_OP1), 
        .i1(ALU_OP2), 
        .sel(ID_EX_csr_wr_src),
        .y(csr_in)
    );

    csr CSR( //edited
        .clk(clk),
        .rst(rst),
        .set(ID_EX_csr_set),
        .clr(ID_EX_csr_clear),
        .write(ID_EX_csr_write),
        .read(ID_EX_csr_read),
        .trap(trap),
        .mret(ID_EX_mret),
        .adr(csr_add),
        .din(csr_in),
        .dout(csr_out), 
        .mepc(mepc),
        .mstatus_in(mstatus_in),
        .mstatus_out(mstatus_out),
        .mip_in(mip_in),
        .mip_out(mip_out),
        .mie_out(mie_out),
        .mcause_in(mcause_in),
        .mcause_out(_4mcause),
        .mtval(mtval)
    );

    alu #( //edited
        .size(32)
    ) ALU (
        .a(ALU_CSR_OP1), 
        .b(ALU_CSR_OP2),
        .ctrl(alu_operation),
        .y(alu_out),
        .zero(zero)
    ); 

    register #(
        .size(109)
    ) EX_MEM_reg (
        .clk(clk),
        .rst(rst),
        .clr(trap | ID_EX_mret),
        .ld(EX_MEM_en),
        .initial_val(109'd0),
        .d_in({ID_EX_bhu, ID_EX_b, ID_EX_h, ID_EX_w, ID_EX_wb_src, ID_EX_reg_write, ID_EX_mem_read_i, ID_EX_mem_write_i, EX_PC, ID_EX_ALU_Src2_L1, alu_out, ID_EX_rd}),
        .d_out({ID_EX_bhu_reg, ID_EX_b_reg, ID_EX_h_reg, ID_EX_w_reg, ID_EX_wb_src_reg, ID_EX_reg_write_reg, ID_EX_mem_read_i_reg, ID_EX_mem_write_i_reg, EX_PC_reg, ID_EX_ALU_Src2_L1_reg, alu_out_reg, ID_EX_rd_reg})
    );

// EX_MEM_out

endmodule