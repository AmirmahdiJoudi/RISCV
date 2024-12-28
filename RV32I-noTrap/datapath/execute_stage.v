module execute_stage (
    input clk,
    input rst,
    input EX_MEM_en, // in
    input bhu_reg, // in
    input b_reg, // in
    input h_reg, // in
    input w_reg, // in
    input [7:0] control_signals_nop_reg, // in
    input [31:0] ID_PC_reg, // in
    input [31:0] ID_ALU_Src2_L1_reg, // in
    input [4:0] ID_rf_rd_reg, // in
    input [31:0] ID_ALU_Src2_reg, // in
    input [31:0] ID_ALU_Src1_reg, // in
    
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
    output [31:0] EX_PC_reg, // out
    output [31:0] ID_EX_ALU_Src2_L1_reg, // out
    output [31:0] alu_out_reg, // out
    output [4:0] ID_EX_rd_reg // out

);

    wire [31:0] EX_PC; // w
    wire [31:0] ALU_OP1; // w
    wire [31:0] ALU_OP2; // w
    wire [3:0] ID_EX_alu_operation; // w
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
    assign {ID_EX_alu_operation, ID_EX_wb_src, ID_EX_reg_write, ID_EX_mem_read_i, ID_EX_mem_write_i} = control_signals_nop_reg;
    assign ID_EX_w = w_reg;
    assign ID_EX_h = h_reg;
    assign ID_EX_b = b_reg;
    assign ID_EX_bhu = bhu_reg;

    assign ID_EX_rd_hu = ID_EX_rd;
    assign mem_read_hu = ID_EX_mem_read_i;


    alu #(
        .size(32)
    ) ALU (
        .a(ALU_OP1), 
        .b(ALU_OP2),
        .ctrl(ID_EX_alu_operation),
        .y(alu_out),
        .zero(zero)
    ); 

    register #(
        .size(109)
    ) EX_MEM_reg (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(EX_MEM_en),
        .d_in({ID_EX_bhu, ID_EX_b, ID_EX_h, ID_EX_w, ID_EX_wb_src, ID_EX_reg_write, ID_EX_mem_read_i, ID_EX_mem_write_i, EX_PC, ID_EX_ALU_Src2_L1, alu_out, ID_EX_rd}),
        .d_out({ID_EX_bhu_reg, ID_EX_b_reg, ID_EX_h_reg, ID_EX_w_reg, ID_EX_wb_src_reg, ID_EX_reg_write_reg, ID_EX_mem_read_i_reg, ID_EX_mem_write_i_reg, EX_PC_reg, ID_EX_ALU_Src2_L1_reg, alu_out_reg, ID_EX_rd_reg})
    );

// EX_MEM_out

endmodule