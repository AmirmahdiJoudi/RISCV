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
    output [3:0] data_out_mask, 
    output[31:0] data_adr, 
    output[31:0] data_out,
    input[31:0] data_in


);

    ////////////////IF wires//////////////////
    wire [31:0] IF_PC_Out; // out
    wire [31:0] IF_PC_Out_reg; // out
    wire [31:0] inst_reg; // out
    ////////////////ID wires//////////////////
    wire [31:0] jump_address; // out
    wire bhu_reg; // out
    wire b_reg; // out
    wire h_reg; // out
    wire w_reg; // out
    wire [7:0] control_signals_nop_reg; // out
    wire [31:0] ID_PC_reg;  // out
    wire [31:0] ID_ALU_Src2_L1_reg; // out
    wire [4:0] ID_rf_rd_reg; // out
    wire [31:0] ID_ALU_Src2_reg; // out
    wire [31:0] ID_ALU_Src1_reg; // out
    ///////////////EXE wires////////////////////
    wire [4:0] ID_EX_rd; // out w
    wire ID_EX_reg_write; // out w
    wire [31:0] alu_out; // out w   
    wire ID_EX_bhu_reg; // out
    wire ID_EX_b_reg; // out
    wire ID_EX_h_reg; // out
    wire ID_EX_w_reg; // out
    wire ID_EX_wb_src_reg; // out
    wire ID_EX_reg_write_reg; // out
    wire ID_EX_mem_read_i_reg; // out
    wire ID_EX_mem_write_i_reg; // out
    wire [31:0] EX_PC_reg; // out
    wire [31:0] ID_EX_ALU_Src2_L1_reg; // out
    wire [31:0] alu_out_reg; // out
    wire [4:0] ID_EX_rd_reg; // out
    //////////////MEM wires//////////////////////
    wire[4:0] EX_MEM_rd; // out w
    wire EX_MEM_reg_write; // out w
    wire [31:0] EX_MEM_alu_out; // out w
    wire EX_MEM_mem_read_i; // out w
    wire EX_MEM_mem_write_i; // out w
    wire [31:0] data_out_pr; // out w
    wire [31:0] EX_RF_WR_Data; // out w
    wire EX_MEM_reg_write_reg; // out
    wire [31:0] MEM_PC_reg; // out
    wire [31:0] EX_RF_WR_Data_reg; // out
    wire [4:0] EX_MEM_rd_reg; // out
    //////////////WB wires///////////////////////
    wire[4:0] MEM_WB_rd; // out w
    wire MEM_WB_reg_write; // out w
    wire [31:0] RF_WR_Data; // out w


    ////////////Assignments///////////////////////
    assign ID_EX_rd_fu = ID_EX_rd;
    assign ID_EX_reg_write_fu = ID_EX_reg_write;
    assign EX_MEM_rd_fu = EX_MEM_rd;
    assign EX_MEM_reg_write_fu = EX_MEM_reg_write;
    assign MEM_WB_rd_fu = MEM_WB_rd;
    assign MEM_WB_reg_write_fu = MEM_WB_reg_write;
    assign mem_read_o = EX_MEM_mem_read_i; 
    assign mem_write_o = EX_MEM_mem_write_i; 
    assign data_out = data_out_pr;
    assign data_adr = {EX_MEM_alu_out[31:2], 2'b00};
    assign inst_adr = IF_PC_Out;



    //////////////////////////////////////////////////// IF
    fetch_stage IF (
        .clk(clk),
        .rst(rst),
        .pc_en(pc_en), // in
        .PC_src(PC_src), // in
        .IF_flush(IF_flush), // in
        .IF_ID_en(IF_ID_en), // in
        .inst(inst), // in
        .jump_address(jump_address), // in
        .IF_PC_Out(IF_PC_Out), // out 
        .IF_PC_Out_reg(IF_PC_Out_reg), // out
        .inst_reg(inst_reg) // out
    );
     
    //////////////////////////////////////////////////// ID

    decode_stage ID (
        .clk(clk),
        .rst(rst),
        .imm_typ(imm_typ), // in
        .jal_jalr(jal_jalr), // in
        .ensh2(ensh2), // in
        .set0(set0), // in
        .mem_write_i(mem_write_i), // in
        .mem_read_i(mem_read_i), // in 
        .reg_write(reg_write), // in
        .wb_src(wb_src), // in
        .alu_operation(alu_operation), // in
        .NOP(NOP), // in
        .forwardSrc1(forwardSrc1), // in
        .forwardSrc2(forwardSrc2), // in
        .alu_src1(alu_src1), // in
        .alu_src2(alu_src2), // in
        .sgn_unsgn(sgn_unsgn), // in
        .ID_EX_en(ID_EX_en), // in
        .bhu(bhu), // in
        .b(b), // in
        .h(h), // in
        .w(w), // in 
        .inst_reg(inst_reg), // in
        .IF_PC_Out_reg(IF_PC_Out_reg), // in
        .EX_RF_WR_Data(EX_RF_WR_Data), // in
        .alu_out(alu_out), // in
        .MEM_WB_reg_write(MEM_WB_reg_write), // in
        .MEM_WB_rd(MEM_WB_rd), // in
        .RF_WR_Data(RF_WR_Data), // in

        .func3(func3), // out
        .func7(func7), // out
        .opcode(opcode), // out
        .ID_Src1_hu(ID_Src1_hu), // out    
        .ID_Src2_hu(ID_Src2_hu), // out 
        .gt(gt), // out
        .lt(lt), // out
        .eq(eq), // out
        .jump_address(jump_address), // out
        .bhu_reg(bhu_reg), // out
        .b_reg(b_reg), // out
        .h_reg(h_reg), // out 
        .w_reg(w_reg), // out 
        .control_signals_nop_reg(control_signals_nop_reg), // out 
        .ID_PC_reg(ID_PC_reg), // out  
        .ID_ALU_Src2_L1_reg(ID_ALU_Src2_L1_reg), // out 
        .ID_rf_rd_reg(ID_rf_rd_reg), // out 
        .ID_ALU_Src2_reg(ID_ALU_Src2_reg), // out 
        .ID_ALU_Src1_reg(ID_ALU_Src1_reg) // out
    );
    

    ///////////////////////////////////////////////////// EX

    execute_stage EX(
        .clk(clk),
        .rst(rst),
        .EX_MEM_en(EX_MEM_en), // in
        .bhu_reg(bhu_reg), // in
        .b_reg(b_reg), // in
        .h_reg(h_reg), // in
        .w_reg(w_reg), // in
        .control_signals_nop_reg(control_signals_nop_reg), // in
        .ID_PC_reg(ID_PC_reg), // in
        .ID_ALU_Src2_L1_reg(ID_ALU_Src2_L1_reg), // in
        .ID_rf_rd_reg(ID_rf_rd_reg), // in
        .ID_ALU_Src2_reg(ID_ALU_Src2_reg), // in
        .ID_ALU_Src1_reg(ID_ALU_Src1_reg), // in
        .ID_EX_rd_hu(ID_EX_rd_hu), // out
        .mem_read_hu(mem_read_hu), // out
        .ID_EX_rd(ID_EX_rd), // out w
        .ID_EX_reg_write(ID_EX_reg_write), // out w
        .alu_out(alu_out), // out w
        .ID_EX_bhu_reg(ID_EX_bhu_reg), // out
        .ID_EX_b_reg(ID_EX_b_reg), // out
        .ID_EX_h_reg(ID_EX_h_reg), // out
        .ID_EX_w_reg(ID_EX_w_reg), // out
        .ID_EX_wb_src_reg(ID_EX_wb_src_reg), // out
        .ID_EX_reg_write_reg(ID_EX_reg_write_reg), // out
        .ID_EX_mem_read_i_reg(ID_EX_mem_read_i_reg), // out
        .ID_EX_mem_write_i_reg(ID_EX_mem_write_i_reg), // out
        .EX_PC_reg(EX_PC_reg), // out
        .ID_EX_ALU_Src2_L1_reg(ID_EX_ALU_Src2_L1_reg), // out
        .alu_out_reg(alu_out_reg), // out
        .ID_EX_rd_reg(ID_EX_rd_reg) // out
    );
    

    //////////////////////////////////////////////// MEM

    mem_stage MEM(
        .clk(clk),
        .rst(rst),
        .data_in(data_in), // in
        .data_out_mask(data_out_mask), // out
        .MEM_WB_en(MEM_WB_en), // in
        .ID_EX_bhu_reg(ID_EX_bhu_reg), // in
        .ID_EX_b_reg(ID_EX_b_reg), // in
        .ID_EX_h_reg(ID_EX_h_reg), // in
        .ID_EX_w_reg(ID_EX_w_reg), // in
        .ID_EX_wb_src_reg(ID_EX_wb_src_reg), // in
        .ID_EX_reg_write_reg(ID_EX_reg_write_reg), // in
        .ID_EX_mem_read_i_reg(ID_EX_mem_read_i_reg), // in
        .ID_EX_mem_write_i_reg(ID_EX_mem_write_i_reg), // in
        .EX_PC_reg(EX_PC_reg), // in
        .ID_EX_ALU_Src2_L1_reg(ID_EX_ALU_Src2_L1_reg), // in
        .alu_out_reg(alu_out_reg), // in
        .ID_EX_rd_reg(ID_EX_rd_reg), // in
        .EX_MEM_rd(EX_MEM_rd), // out w
        .EX_MEM_reg_write(EX_MEM_reg_write), // out w
        .EX_MEM_alu_out(EX_MEM_alu_out), // out w
        .EX_MEM_mem_read_i(EX_MEM_mem_read_i), // out w
        .EX_MEM_mem_write_i(EX_MEM_mem_write_i), // out w
        .data_out_pr(data_out_pr), // out w
        .EX_RF_WR_Data(EX_RF_WR_Data), // out w
        .EX_MEM_reg_write_reg(EX_MEM_reg_write_reg), // out
        .MEM_PC_reg(MEM_PC_reg), // out
        .EX_RF_WR_Data_reg(EX_RF_WR_Data_reg), // out
        .EX_MEM_rd_reg(EX_MEM_rd_reg) // out
    );
    
    //////////////////////////////////////////////// WB
    writeback_stage WB(
        .EX_MEM_reg_write_reg(EX_MEM_reg_write_reg), // in
        .MEM_PC_reg(MEM_PC_reg), // in
        .EX_RF_WR_Data_reg(EX_RF_WR_Data_reg), // in
        .EX_MEM_rd_reg(EX_MEM_rd_reg), // in
        .MEM_WB_rd(MEM_WB_rd), // out w
        .MEM_WB_reg_write(MEM_WB_reg_write), // out w
        .RF_WR_Data(RF_WR_Data) // out w
    );

endmodule