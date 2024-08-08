module datapath(
    input clk,
    input rst,

    input pc_en, 
    input NOP,
    output [4:0] ID_EX_rd_hu,
    output mem_read_hu, 
    output [4:0] ID_Src1_hu,
    output [4:0] ID_Src2_hu,
    input IF_ID_en,
    input ID_EX_en,
    input EX_MEM_en,
    input MEM_WB_en, 


    output[4:0] ID_EX_rd_fu,
    output[4:0] EX_MEM_rd_fu,
    output[4:0] MEM_WB_rd_fu,
    output ID_EX_reg_write_fu, 
    output EX_MEM_reg_write_fu, 
    output MEM_WB_reg_write_fu, 
    input[1:0] forwardSrc1, 
    input[1:0] forwardSrc2,
    

    output[31:0] inst_adr,
    input[31:0] inst,

    output[6:0] opcode, 
    output[2:0] func3,
    output[6:0] func7, 

    input PC_src,
    input jal_jalr,
    input alu_src1,
    input [1:0] alu_src2,
    input ensh2,
    input set0,
    output gt,
    output lt,
    output eq,
    input sgn_unsgn,
    input [2:0] imm_typ,
    input [3:0] alu_operation,
    input wb_src,
    input reg_write,
    input mem_read_i, 
    input mem_write_i,
    input b,
    input h,
    input w,
    input bhu,
    input IF_flush,

    output mem_read_o, 
    output mem_write_o,
    output mem_write_bh,
    output[31:0] data_adr, 
    output[31:0] data_out,
    input[31:0] data_in


);
    ////////////////IF wires///////////////////
    wire [31:0] IF_PC_In;
    wire [31:0] IF_PC_Out;
    wire [31:0] PCplus4;
    wire [31:0] jump_address;
    ////////////////ID wires////////////////////
    wire [31:0] ID_PC;
    wire [4:0] shamt;
    wire [11:0] imm_itype; 
    wire [19:0] imm_jtype; 
    wire [11:0] imm_stype;
    wire [11:0] imm_btype;
    wire [19:0] imm_utype; 
    wire [4:0] ID_rf_src2;
    wire [4:0] ID_rf_src1;
    wire [4:0] ID_rf_rd;
    wire [31:0] RF_src1_data;
    wire [31:0] RF_src2_data;
    wire [31:0] sgn_ext_imm;
    wire [31:0] base_address;
    wire [31:0] offset_address;
    wire [31:0] j_address;
    wire [7:0] control_signals_nop;
    wire [31:0] ID_ALU_Src1_L1;
    wire [31:0] ID_ALU_Src1;
    wire [31:0] ID_ALU_Src2_L1;
    wire [31:0] ID_ALU_Src2;
    wire [63:0] IF_ID_out;
    wire [32:0] diff_sgn, diff_usg;
    wire gt_sgn, lt_sgn, gt_usg, lt_usg;
    ///////////////EXE wires//////////////////////
    wire [31:0] EX_PC;
    wire[4:0] ID_EX_rd;
    wire ID_EX_reg_write; 
    wire [31:0] ALU_OP1;
    wire [31:0] ALU_OP2;
    wire [3:0] ID_EX_alu_operation;
    wire ID_EX_wb_src;
    wire ID_EX_mem_read_i;
    wire ID_EX_mem_write_i;
    wire [31:0] alu_out;
    wire zero;
    wire [31:0] ID_EX_ALU_Src2_L1;
    wire [144:0] ID_EX_out;
    wire ID_EX_b;
    wire ID_EX_h;
    wire ID_EX_w;
    wire ID_EX_bhu;
    //////////////MEM wires///////////////////////
    wire[4:0] EX_MEM_rd;
    wire EX_MEM_reg_write;
    wire [31:0] EX_MEM_alu_out;
    wire [31:0] EX_MEM_ALU_Src2_L1;
    wire [31:0] MEM_PC;
    wire EX_MEM_wb_src; 
    wire EX_MEM_mem_read_i;
    wire EX_MEM_mem_write_i;
    wire [108:0] EX_MEM_out;
    wire [31:0] data_in_pr;
    wire [31:0] data_out_pr;
    wire EX_MEM_b;
    wire EX_MEM_h;
    wire EX_MEM_w;
    wire EX_MEM_bhu;
    wire bhwriteFF_out;
    wire [31:0] data_in_reg;
    wire [31:0] EX_RF_WR_Data;
    //////////////WB wires///////////////////////
    wire[4:0] MEM_WB_rd;
    wire MEM_WB_reg_write;
    wire [31:0] RF_WR_Data;
    wire [31:0] MEM_WB_alu_out;
    wire [31:0] WB_PC;
    wire [31:0] MEM_WB_data_in;
    wire MEM_WB_wb_src;
    wire [69:0] MEM_WB_out;

    

    ////////////////////////////////////////////
    assign ID_EX_rd_fu = ID_EX_rd;
    assign ID_EX_reg_write_fu = ID_EX_reg_write;
    assign EX_MEM_rd_fu = EX_MEM_rd;
    assign EX_MEM_reg_write_fu = EX_MEM_reg_write;
    assign MEM_WB_rd_fu = MEM_WB_rd;
    assign MEM_WB_reg_write_fu = MEM_WB_reg_write;
    assign mem_write_bh = EX_MEM_mem_write_i & (EX_MEM_b | EX_MEM_h) & ~bhwriteFF_out;
    assign mem_read_o = EX_MEM_mem_read_i | (EX_MEM_mem_write_i & mem_write_bh);
    assign mem_write_o = EX_MEM_mem_write_i & ~mem_write_bh;
    assign data_out = data_out_pr;
    assign data_adr = {EX_MEM_alu_out[31:2], 2'b00};
    assign inst_adr = IF_PC_Out;
    /////////////////////////////////////////////


    //////////////////////////////////////////////////// IF
    register #(
        .size(32)
    ) PC (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(pc_en),
        .d_in(IF_PC_In),
        .d_out(IF_PC_Out)
    );

    adder #(
        .size(32)
    ) PCC_ADDER (
        .a(IF_PC_Out),
        .b(32'd4),
        .cin(1'b0),
        .cout(),
        .sum(PCplus4)
    );

    mux2to1 #(
        .size(32)
    ) PC_Input_Src_MUX (
        .i0(PCplus4), 
        .i1(jump_address),
        .sel(PC_src),
        .y(IF_PC_In)
    );

    register #(
        .size(64)
    ) IF_ID_reg (
        .clk(clk),
        .rst(rst),
        .clr(IF_flush & IF_ID_en),
        .ld(IF_ID_en),
        .d_in({IF_PC_Out, inst}),
        .d_out(IF_ID_out)
    );

    //////////////////////////////////////////////////// ID
    assign func3 = IF_ID_out[14:12];
    assign func7 = IF_ID_out[31:25];
    assign ID_rf_src2 = IF_ID_out[24:20];
    assign ID_rf_src1 = IF_ID_out[19:15];
    assign ID_rf_rd = IF_ID_out[11:7];
    assign opcode = IF_ID_out[6:0];
    assign imm_itype = IF_ID_out[31:20];
    assign imm_jtype = {IF_ID_out[31], IF_ID_out[20:13], IF_ID_out[21], IF_ID_out[30:21]};
    assign imm_stype = {IF_ID_out[31:25], IF_ID_out[11:7]};
    assign imm_utype = IF_ID_out[31:12];
    assign imm_btype = {IF_ID_out[31], IF_ID_out[7], IF_ID_out[30:25], IF_ID_out[11:8]};
    assign shamt = IF_ID_out[24:20];
    assign ID_PC = IF_ID_out[63:32];

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
        .size(8) // ?
    ) STALL_MUX (
        .i0({alu_operation, wb_src, reg_write, mem_read_i, mem_write_i}), //?
        .i1(8'b0),
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

    register #(
        .size(145)
    ) ID_EX_reg (
        .clk(clk),
        .rst(rst),
        .clr(1'b0), //ID_flush),
        .ld(ID_EX_en),
        .d_in({bhu, b, h, w, control_signals_nop, ID_PC,  ID_ALU_Src2_L1, ID_rf_rd, ID_ALU_Src2, ID_ALU_Src1}),
        .d_out(ID_EX_out)
    );

    ///////////////////////////////////////////////////// EX
    assign EX_PC = ID_EX_out[132:101];
    assign ID_EX_ALU_Src2_L1 = ID_EX_out[100:69];
    assign ID_EX_rd = ID_EX_out[68:64];
    assign ALU_OP1 = ID_EX_out[31:0];
    assign ALU_OP2 = ID_EX_out[63:32];
    assign {ID_EX_alu_operation, ID_EX_wb_src, ID_EX_reg_write, ID_EX_mem_read_i, ID_EX_mem_write_i} = ID_EX_out[140:133];
    assign ID_EX_w = ID_EX_out[141];
    assign ID_EX_h = ID_EX_out[142];
    assign ID_EX_b = ID_EX_out[143];
    assign ID_EX_bhu = ID_EX_out[144];

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
        .d_out(EX_MEM_out)
    );

    //////////////////////////////////////////////// MEM
    assign EX_MEM_rd = EX_MEM_out[4:0];
    assign EX_MEM_alu_out = EX_MEM_out[36:5];
    assign EX_MEM_ALU_Src2_L1 = EX_MEM_out[68:37];
    assign MEM_PC = EX_MEM_out[100:69];
    assign {EX_MEM_wb_src, EX_MEM_reg_write, EX_MEM_mem_read_i, EX_MEM_mem_write_i} = EX_MEM_out[104:101];
    assign EX_MEM_w = EX_MEM_out[105];
    assign EX_MEM_h = EX_MEM_out[106];
    assign EX_MEM_b = EX_MEM_out[107];
    assign EX_MEM_bhu = EX_MEM_out[108];
    

    assign data_in_pr = (EX_MEM_b && ~EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b00) ? {{24{data_in[7]}}, data_in[7:0]} :
                        (EX_MEM_b && ~EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b01) ? {{24{data_in[15]}}, data_in[15:8]} :
                        (EX_MEM_b && ~EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b10) ? {{24{data_in[23]}}, data_in[23:16]} :
                        (EX_MEM_b && ~EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b11) ? {{24{data_in[31]}}, data_in[31:24]} :
                        (EX_MEM_h && ~EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b00) ? {{16{data_in[15]}}, data_in[15:0]} :
                        (EX_MEM_h && ~EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b10) ? {{16{data_in[31]}}, data_in[31:16]} :
                        (EX_MEM_b && EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b00) ? {24'd0, data_in[7:0]} :
                        (EX_MEM_b && EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b01) ? {24'd0, data_in[15:8]} :
                        (EX_MEM_b && EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b10) ? {24'd0, data_in[23:16]} :
                        (EX_MEM_b && EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b11) ? {24'd0, data_in[31:24]} :
                        (EX_MEM_h && EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b00) ? {16'd0, data_in[15:0]} :
                        (EX_MEM_h && EX_MEM_bhu && EX_MEM_alu_out[1:0]==2'b10) ? {16'd0, data_in[31:16]} :
                        (EX_MEM_w) ? data_in :
                        data_in;

    assign data_out_pr = (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b00) ? {data_in_reg[31:8], EX_MEM_ALU_Src2_L1[7:0]} :
                         (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b01) ? {data_in_reg[31:16], EX_MEM_ALU_Src2_L1[7:0], data_in_reg[7:0]} :
                         (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b10) ? {data_in_reg[31:24], EX_MEM_ALU_Src2_L1[7:0], data_in_reg[15:0]} :
                         (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b11) ? {EX_MEM_ALU_Src2_L1[7:0], data_in_reg[23:0]} :
                         (EX_MEM_h && EX_MEM_alu_out[1:0]==2'b00) ? {data_in_reg[31:16], EX_MEM_ALU_Src2_L1[15:0]} :
                         (EX_MEM_h && EX_MEM_alu_out[1:0]==2'b10) ? {EX_MEM_ALU_Src2_L1[15:0], data_in_reg[15:0]} :
                         (EX_MEM_w) ? EX_MEM_ALU_Src2_L1 :
                         EX_MEM_ALU_Src2_L1;

    mux2to1 #(
        .size(32)
    ) MUX7 (
        .i0(EX_MEM_alu_out), 
        .i1(data_in_pr),
        .sel(EX_MEM_wb_src),
        .y(EX_RF_WR_Data)
    );

    register #(
        .size(1)
    ) bhWriteFF (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(EX_MEM_mem_write_i),
        .d_in(mem_write_bh),
        .d_out(bhwriteFF_out)
    );

    register #(
        .size(32)
    ) dinShadowRegister (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(mem_write_bh),
        .d_in(data_in),
        .d_out(data_in_reg)
    );

    register #(
        .size(70)
    ) MEM_WB_reg (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(MEM_WB_en),
        .d_in({EX_MEM_reg_write, MEM_PC, EX_RF_WR_Data, EX_MEM_rd}),
        .d_out(MEM_WB_out)
    );
    
    //////////////////////////////////////////////// WB
    assign MEM_WB_rd = MEM_WB_out[4:0];
    assign RF_WR_Data = MEM_WB_out[36:5];
    assign WB_PC = MEM_WB_out[68:37];
    assign MEM_WB_reg_write = MEM_WB_out[69];

    

endmodule