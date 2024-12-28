module decode_stage (
    input clk,
    input rst,
    input [2:0] imm_typ, // in
    input jal_jalr, // in
    input ensh2, // in
    input set0, // in
    input mem_write_i, // in
    input mem_read_i, // in 
    input reg_write, // in
    input wb_src, // in
    input csr_wr_src, // edited
    input csr_in_alu, // edited
    input csr_write, // edited
    input csr_read, // edited
    input csr_set, // edited
    input csr_clear, // edited
    input [3:0] alu_operation, // in
    input NOP, // in
    input [1:0] forwardSrc1, // in
    input [1:0] forwardSrc2, // in
    input alu_src1, // in
    input [1:0] alu_src2, // in
    input sgn_unsgn, // in
    input ID_EX_en, // in
    input bhu, // in
    input b, // in
    input h, // in
    input w, // in 
    input ID_EX_mret_out, // in
    input [31:0] inst_reg, // in
    input [31:0] IF_PC_Out_reg, // in
    input [31:0] EX_RF_WR_Data, // in
    input [31:0] alu_out, // in
    input MEM_WB_reg_write, // in
    input [4:0] MEM_WB_rd, // in
    input [31:0] RF_WR_Data, // in
    input trap, // in
    input mret,

    output [2:0] func3, // out
    output [6:0] func7, // out
    output [6:0] opcode, // out
    output [4:0] ID_Src1_hu, // out    
    output [4:0] ID_Src2_hu, // out 
    output gt, // out
    output lt, // out
    output eq, // out
    output [31:0] jump_address, // out

    output [11:0] csr_add, // edited
    output bhu_reg, 
    output b_reg, 
    output h_reg, 
    output w_reg, 
    output ID_EX_mret,
    output [13:0] control_signals_nop_reg, 
    output [31:0] ID_PC_reg,  
    output [31:0] ID_ALU_Src2_L1_reg, 
    output [4:0] ID_rf_rd_reg, 
    output [31:0] ID_ALU_Src2_reg, 
    output [31:0] ID_ALU_Src1_reg

);

    wire [31:0] ID_PC; // w
    wire [4:0] shamt; // w
    wire [11:0] imm_itype; // w
    wire [11:0] csr; // w-edited
    wire [19:0] imm_jtype; // w
    wire [11:0] imm_stype; // w
    wire [11:0] imm_btype; // w
    wire [19:0] imm_utype; // w
    wire [4:0] ID_rf_src2; // w
    wire [4:0] ID_rf_src1; // w
    wire [4:0] ID_rf_rd; // w
    wire [31:0] RF_src1_data; // w
    wire [31:0] RF_src2_data; // w
    wire [31:0] sgn_ext_imm; // w
    wire [31:0] base_address; // w
    wire [31:0] offset_address; // w
    wire [31:0] j_address; // w
    wire [13:0] control_signals_nop; // w
    wire [31:0] ID_ALU_Src1_L1; // w
    wire [31:0] ID_ALU_Src1; // w
    wire [31:0] ID_ALU_Src2_L1; // w
    wire [31:0] ID_ALU_Src2; // w
    wire [32:0] diff_sgn, diff_usg; // w
    wire gt_sgn, lt_sgn, gt_usg, lt_usg; // w

    assign func3 = inst_reg[14:12];
    assign func7 = inst_reg[31:25];
    assign ID_rf_src2 = inst_reg[24:20];
    assign ID_rf_src1 = inst_reg[19:15];
    assign ID_rf_rd = inst_reg[11:7];
    assign opcode = inst_reg[6:0];
    assign imm_itype = inst_reg[31:20];
    assign csr = inst_reg [31:20]; // edited
    assign imm_jtype = {inst_reg[31], inst_reg[20:13], inst_reg[21], inst_reg[30:21]};
    assign imm_stype = {inst_reg[31:25], inst_reg[11:7]};
    assign imm_utype = inst_reg[31:12];
    assign imm_btype = {inst_reg[31], inst_reg[7], inst_reg[30:25], inst_reg[11:8]};
    assign shamt = inst_reg[24:20];
    assign ID_PC = IF_PC_Out_reg;

    assign ID_Src1_hu = ID_rf_src1;
    assign ID_Src2_hu = ID_rf_src2;

    reg_file RF (
        .clk(clk),
        .rst(rst),
        .reg_write(MEM_WB_reg_write),  
        .rd_reg1(ID_rf_src1), 
        .rd_reg2(ID_rf_src2), 
        .wr_reg(MEM_WB_rd),
        .wr_data(RF_WR_Data),
        .rd_data1(RF_src1_data), 
        .rd_data2(RF_src2_data)
    );

    imm_gen IMM_GEN (
        .imm_itype(imm_itype),
        .imm_jtype(imm_jtype),
        .imm_stype(imm_stype),
        .imm_btype(imm_btype),
        .imm_utype(imm_utype),
        .rs1(ID_rf_src1), // edited
        .shamt(shamt),

        .typ(imm_typ),
        .d_out(sgn_ext_imm)
    );

    mux2to1 #(
        .size(32)
    ) BASE_JMP_MUX (
        .i0(ID_PC), 
        .i1(RF_src1_data), 
        .sel(jal_jalr),
        .y(base_address)
    );

    assign offset_address = (ensh2) ? {sgn_ext_imm[29:0], 2'b00} : sgn_ext_imm;
    
    adder #(
        .size(32)
    ) ADDRESS_ADDER (
        .a(base_address),
        .b(offset_address),
        .cin(1'b0),
        .cout(),
        .sum(j_address)
    );

    assign jump_address = (set0) ? {j_address[31:1], 1'b0} : j_address;

    mux2to1 #(
        .size(14)
    ) STALL_MUX (
        .i0({csr_clear, csr_set, csr_write, csr_read, csr_in_alu, csr_wr_src, alu_operation, wb_src, reg_write, mem_read_i, mem_write_i}), 
        .i1(14'b0),
        .sel(NOP),
        .y(control_signals_nop)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src1_L1 (
        .i0(RF_src1_data), 
        .i1(alu_out),
        .i2(EX_RF_WR_Data),
        .i3(RF_WR_Data),
        .sel(forwardSrc1),
        .y(ID_ALU_Src1_L1)
    );

    mux2to1 #(
        .size(32)
    ) MUX_ALU_Src1 (
        .i0(ID_ALU_Src1_L1), 
        .i1(ID_PC),
        .sel(alu_src1),
        .y(ID_ALU_Src1)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src2_L1 (
        .i0(RF_src2_data), 
        .i1(alu_out),
        .i2(EX_RF_WR_Data),
        .i3(RF_WR_Data),
        .sel(forwardSrc2),
        .y(ID_ALU_Src2_L1)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src2 (
        .i0(ID_ALU_Src2_L1), 
        .i1(sgn_ext_imm),
        .i2(32'd4),
        .i3(),
        .sel(alu_src2),
        .y(ID_ALU_Src2)
    );

    

    assign diff_sgn = {ID_ALU_Src1_L1[31], ID_ALU_Src1_L1} - {ID_ALU_Src2_L1[31], ID_ALU_Src2_L1};
    assign gt_sgn = (diff_sgn[32] == 1'b1) ? 1'b0 : 1'b1;
    assign lt_sgn = (diff_sgn[32] == 1'b1) ? 1'b1 : 1'b0;

    assign diff_usg = {1'b0, ID_ALU_Src1_L1} - {1'b0, ID_ALU_Src2_L1};
    assign gt_usg = (diff_usg[32] == 1'b1) ? 1'b0 : 1'b1;
    assign lt_usg = (diff_usg[32] == 1'b1) ? 1'b1 : 1'b0;

    assign gt = (sgn_unsgn == 1'b0) ? gt_sgn :
                gt_usg;

    assign lt = (sgn_unsgn == 1'b0) ? lt_sgn :
                lt_usg;
    
    assign eq = (ID_ALU_Src1_L1 == ID_ALU_Src2_L1) ? 1'b1 : 1'b0;

    register #( //edited
        .size(164)
    ) ID_EX_reg (
        .clk(clk),
        .rst(rst),
        .clr(trap | ID_EX_mret_out), 
        .ld(ID_EX_en),
        .initial_val(164'd0),
        .d_in({mret, csr, bhu, b, h, w, control_signals_nop, ID_PC,  ID_ALU_Src2_L1, ID_rf_rd, ID_ALU_Src2, ID_ALU_Src1}),
        .d_out({ID_EX_mret, csr_add, bhu_reg, b_reg, h_reg, w_reg, control_signals_nop_reg, ID_PC_reg, ID_ALU_Src2_L1_reg, ID_rf_rd_reg, ID_ALU_Src2_reg, ID_ALU_Src1_reg})
    );

//ID_EX_out

endmodule