module riscv_pipeline (

    input clk,
    input rst,

    input machineTimerInterrupt,
    input machineSoftwareInterrupt,
    input machineExternalInterrupt,

    output [31:0] inst_adr,
    input [31:0] inst,

    output mem_read,
    output mem_write,       
    input  [31:0] data_in,
    output [31:0] data_adr,
    output [31:0] data_out

);

    wire b,h,w;

    wire pc_en_hazard; 
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
    wire rf_dest_data_sel;
    wire csr_data_sel;
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
    wire reg_write;
    wire mem_read_i; 
    wire mem_write_i;
    wire mem_write_bh;
    wire bhu;
    wire IF_flush_branch;
    wire IllegalInstruction;
    wire MRET;
    wire exceptionRaised;
    wire interruptRaised;
    wire [3:0] exceptionSrc;
    wire [31:0] csrOut;
    wire [31:0] trap_handler_csr_data;
    wire [3:0] trap_handler_csr_add;
    wire trap_handler_csr_write;
    wire trap_handler_csr_add_src;
    wire trap_handler_data_pre_exc_src;
    wire trap_handler_data_pc_12_src;
    wire trap_handler_csr_data_src;
    wire trap_handler_pc_en;
    wire trap_flush;
    wire trap_handler_PC_src;
    wire controller_csr_write;
    wire controller_csr_set;
    wire controller_csr_clear;
    wire controller_csr_add_src;
    wire controller_csr_data_src;


    

    datapath DP(
        .clk(clk),
        .rst(rst),

        .pc_en_hazard(pc_en_hazard), 
        .NOP(NOP),
        .ID_EX_rd_hu(ID_EX_rd_hu),
        .mem_read_hu(mem_read_hu), 
        .ID_Src1_hu(ID_Src1_hu),
        .ID_Src2_hu(ID_Src2_hu),
        .IF_ID_en(IF_ID_en),
        .ID_EX_en(ID_EX_en),
        .EX_MEM_en(ID_EX_en),
        .MEM_WB_en(ID_EX_en), 
        .trap_handler_csr_data(trap_handler_csr_data),
        .trap_handler_csr_add(trap_handler_csr_add),
        .trap_handler_csr_write(trap_handler_csr_write),
        .trap_handler_csr_add_src(trap_handler_csr_add_src),
        .trap_handler_data_pre_exc_src(trap_handler_data_pre_exc_src),
        .trap_handler_data_pc_12_src(trap_handler_data_pc_12_src),
        .trap_handler_csr_data_src(trap_handler_csr_data_src),
        .trap_handler_pc_en(trap_handler_pc_en),
        .trap_flush(trap_flush),
        .trap_handler_PC_src(trap_handler_PC_src),
        .controller_csr_write(controller_csr_write),
        .controller_csr_set(controller_csr_set),
        .controller_csr_clear(controller_csr_clear),
        .controller_csr_add_src(controller_csr_add_src),
        .controller_csr_data_src(controller_csr_data_src),


        .ID_EX_rd_fu(ID_EX_rd_fu),
        .EX_MEM_rd_fu(EX_MEM_rd_fu),
        .MEM_WB_rd_fu(MEM_WB_rd_fu),
        .ID_EX_reg_write_fu(ID_EX_reg_write_fu), 
        .EX_MEM_reg_write_fu(EX_MEM_reg_write_fu), 
        .MEM_WB_reg_write_fu(MEM_WB_reg_write_fu), 
        .rf_dest_data_sel(rf_dest_data_sel),
        .csr_data_sel(csr_data_sel),
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
        .reg_write(reg_write),
        .mem_read_i(mem_read_i), 
        .mem_write_i(mem_write_i),
        .b(b),
        .h(h),
        .w(w),
        .bhu(bhu),
        .IF_flush_branch(IF_flush_branch),
        .IllegalInstruction(IllegalInstruction),
        .machineTimerInterrupt(machineTimerInterrupt),
        .machineSoftwareInterrupt(machineSoftwareInterrupt),
        .machineExternalInterrupt(machineExternalInterrupt),

        .exceptionRaised(exceptionRaised),
        .interruptRaised(interruptRaised),
        .mem_read_o(mem_read), 
        .mem_write_o(mem_write),
        .mem_write_bh(mem_write_bh),
        .exceptionSrc(exceptionSrc),
        .csrOut(csrOut),
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

        .controller_csr_write(controller_csr_write),
        .controller_csr_set(controller_csr_set),
        .controller_csr_clear(controller_csr_clear),
        .controller_csr_add_src(controller_csr_add_src),
        .controller_csr_data_src(controller_csr_data_src),
        .rf_dest_data_sel(rf_dest_data_sel),
        .csr_data_sel(csr_data_sel),
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
        .reg_write(reg_write),
        .mem_read_i(mem_read_i), 
        .mem_write_i(mem_write_i),
        .b(b),
        .h(h),
        .w(w),
        .bhu(bhu),
        .IF_flush_branch(IF_flush_branch),
        .IllegalInstruction(IllegalInstruction),
        .MRET(MRET)
    );

    trap_handler trap_handler (
        .clk(clk),
        .rst(rst),
        .exceptionRaised(exceptionRaised),
        .exceptionSrc(exceptionSrc),
        .interruptRaised(interruptRaised),
        .machineTimerInterrupt(machineTimerInterrupt),
        .machineSoftwareInterrupt(machineSoftwareInterrupt),
        .machineExternalInterrupt(machineExternalInterrupt),
        .MRET(MRET),
        .csrOut(csrOut),
        .trap_handler_csr_write(trap_handler_csr_write),
        .trap_handler_add(trap_handler_csr_add),
        .trap_handler_data(trap_handler_csr_data),
        .trap_handler_add_src(trap_handler_csr_add_src),
        .trap_handler_data_pre_exc_src(trap_handler_data_pre_exc_src),
        .trap_handler_data_pc_12_src(trap_handler_data_pc_12_src),
        .trap_handler_data_src(trap_handler_csr_data_src),
        .trap_handler_pc_en(trap_handler_pc_en),
        .trap_flush(trap_flush),
        .trap_handler_PC_src(trap_handler_PC_src)
    );


  hazard_unit HU (

    .ID_EX_memread(mem_read_hu),
    .mem_write_bh(mem_write_bh),
    .ID_EX_rd(ID_EX_rd_hu), 
    .IF_ID_rs1(ID_Src1_hu), 
    .IF_ID_rs2(ID_Src2_hu),

    .pc_en_hazard(pc_en_hazard), 
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
