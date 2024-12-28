module riscv_pipeline (

    input clk,
    input rst,

    input machine_software_interrupt,
    input machine_timer_interrupt,
    input machine_external_interrupt,

    output [31:0] inst_adr,
    input [31:0] inst,

    output mem_read,
    output mem_write,     
    output [3:0] data_out_mask,   
    input  [31:0] data_in,
    output [31:0] data_adr,
    output [31:0] data_out

);

    wire b,h,w;

    wire pc_en; 
    wire NOP;
    wire [4:0] ID_EX_rd_hu;
    wire mem_read_hu;
    wire [4:0] ID_Src1_hu;
    wire [4:0] ID_Src2_hu;
    wire IF_ID_en;
    wire ID_EX_en;
    wire EX_MEM_en;
    wire MEM_WB_en;


    wire[4:0] ID_EX_rd_fu;
    wire[4:0] EX_MEM_rd_fu;
    wire[4:0] MEM_WB_rd_fu;
    wire ID_EX_reg_write_fu; 
    wire EX_MEM_reg_write_fu; 
    wire MEM_WB_reg_write_fu; 
    wire[1:0] forwardSrc1; 
    wire[1:0] forwardSrc2;
    

    wire[6:0] opcode; 
    wire[2:0] func3;
    wire[6:0] func7; 

    wire PC_src;
    wire jal_jalr;
    wire alu_src1;
    wire [1:0] alu_src2;
    wire ensh2;
    wire set0;
    wire gt;
    wire lt;
    wire eq;
    wire sgn_unsgn;
    wire [2:0] imm_typ;
    wire [3:0] alu_operation;
    wire wb_src;
    wire csr_wr_src;//edited
    wire csr_in_alu;//edited
    wire csr_write;//edited
    wire csr_read;//edited
    wire csr_set;//edited
    wire csr_clear;//edited
    wire reg_write;
    wire mem_read_i; 
    wire mem_write_i;
  //  wire mem_write_bh;
    wire bhu;
    wire IF_flush;
    wire illegal_instruction;
    wire mret;


    

  datapath DP(
    .clk(clk),
    .rst(rst),

    .machine_software_interrupt(machine_software_interrupt),
    .machine_timer_interrupt(machine_timer_interrupt),
    .machine_external_interrupt(machine_external_interrupt),

    .pc_en(pc_en), 
    .NOP(NOP),
    .ID_EX_rd_hu(ID_EX_rd_hu),
    .mem_read_hu(mem_read_hu), 
    .ID_Src1_hu(ID_Src1_hu),
    .ID_Src2_hu(ID_Src2_hu),
    .IF_ID_en(IF_ID_en),
    .ID_EX_en(ID_EX_en),
    .EX_MEM_en(ID_EX_en),
    .MEM_WB_en(ID_EX_en), 


    .ID_EX_rd_fu(ID_EX_rd_fu),
    .EX_MEM_rd_fu(EX_MEM_rd_fu),
    .MEM_WB_rd_fu(MEM_WB_rd_fu),
    .ID_EX_reg_write_fu(ID_EX_reg_write_fu), 
    .EX_MEM_reg_write_fu(EX_MEM_reg_write_fu), 
    .MEM_WB_reg_write_fu(MEM_WB_reg_write_fu), 
    .forwardSrc1(forwardSrc1), 
    .forwardSrc2(forwardSrc2),
    

    .inst_adr(inst_adr),
    .inst(inst),

    .opcode(opcode), 
    .func3(func3),
    .func7(func7), 

    .PC_src(PC_src),
    .jal_jalr(jal_jalr),
    .alu_src1(alu_src1),
    .alu_src2(alu_src2),
    .ensh2(ensh2),
    .set0(set0),
    .gt(gt),
    .lt(lt),
    .eq(eq),
    .sgn_unsgn(sgn_unsgn),
    .imm_typ(imm_typ),
    .alu_operation(alu_operation),
    .wb_src(wb_src),
    .csr_wr_src(csr_wr_src),//edited
    .csr_in_alu(csr_in_alu),//edited
    .csr_write(csr_write),//edited
    .csr_read(csr_read), //edited
    .csr_set(csr_set),//edited
    .csr_clear(csr_clear),//edited
    .reg_write(reg_write),
    .mem_read_i(mem_read_i), 
    .mem_write_i(mem_write_i),
    .b(b),
    .h(h),
    .w(w),
    .bhu(bhu),
    .IF_flush(IF_flush),
    .illegal_instruction(illegal_instruction),
    .mret(mret),

    .mem_read_o(mem_read), 
    .mem_write_o(mem_write),
 //   .mem_write_bh(mem_write_bh),
    .data_out_mask(data_out_mask), 
    .data_adr(data_adr), 
    .data_out(data_out),
    .data_in(data_in)

);


  controller CU( 
    .opcode(opcode), 
    .func3(func3),
    .func7(func7),

    .gt(gt),
    .lt(lt),
    .eq(eq), 

    .PC_src(PC_src),
    .jal_jalr(jal_jalr),
    .alu_src1(alu_src1),
    .alu_src2(alu_src2),
    .ensh2(ensh2),
    .set0(set0),
    .sgn_unsgn,
    .imm_typ(imm_typ),
    .alu_operation(alu_operation),
    .wb_src(wb_src),
    .csr_wr_src(csr_wr_src),//edited
    .csr_in_alu(csr_in_alu),//edited
    .csr_write(csr_write),//edited
    .csr_read(csr_read), //edited
    .csr_set(csr_set),//edited
    .csr_clear(csr_clear),//edited
    .reg_write(reg_write),
    .mem_read_i(mem_read_i), 
    .mem_write_i(mem_write_i),
    .b(b),
    .h(h),
    .w(w),
    .bhu(bhu),
    .IF_flush(IF_flush),
    .illegal_instruction(illegal_instruction),
    .mret(mret)
);


  hazard_unit HU (

    .ID_EX_memread(mem_read_hu),
   // .mem_write_bh(mem_write_bh),
    .ID_EX_rd(ID_EX_rd_hu), 
    .IF_ID_rs1(ID_Src1_hu), 
    .IF_ID_rs2(ID_Src2_hu),

    .pc_en(pc_en), 
    .IF_ID_en(IF_ID_en), 
    .ID_EX_en(ID_EX_en),
    .EX_MEM_en(ID_EX_en),
    .MEM_WB_en(ID_EX_en), 
    .c_or_nop(NOP)

);


  forwarding_unit FU(

    .ID_EX_reg_write(ID_EX_reg_write_fu), 
    .EX_MEM_reg_write(EX_MEM_reg_write_fu), 
    .MEM_WB_reg_write(MEM_WB_reg_write_fu),
    .IF_ID_rs1(ID_Src1_hu), 
    .IF_ID_rs2(ID_Src2_hu), 
    .ID_EX_rd(ID_EX_rd_fu), 
    .EX_MEM_rd(EX_MEM_rd_fu), 
    .MEM_WB_rd(MEM_WB_rd_fu),

    .forwardSrc1(forwardSrc1),
    .forwardSrc2(forwardSrc2)

);



    
endmodule
