onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group tb /riscv_tb/clk
add wave -noupdate -group tb /riscv_tb/rst
add wave -noupdate -group tb /riscv_tb/inst_adr
add wave -noupdate -group tb /riscv_tb/inst
add wave -noupdate -group tb /riscv_tb/data_adr
add wave -noupdate -group tb /riscv_tb/data_in
add wave -noupdate -group tb /riscv_tb/data_out
add wave -noupdate -group tb /riscv_tb/mem_read
add wave -noupdate -group tb /riscv_tb/mem_write
add wave -noupdate -group tb /riscv_tb/data_out_mask
add wave -noupdate -group tb /riscv_tb/machine_software_interrupt
add wave -noupdate -group tb /riscv_tb/machine_timer_interrupt
add wave -noupdate -group tb /riscv_tb/machine_external_interrupt
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_memread
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_rd
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_rs1
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_rs2
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/EX_MEM_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/MEM_WB_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/c_or_nop
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_memread
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_rd
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_rs1
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_rs2
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/EX_MEM_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/MEM_WB_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/c_or_nop
add wave -noupdate -group FU /riscv_tb/CPU/FU/ID_EX_reg_write
add wave -noupdate -group FU /riscv_tb/CPU/FU/EX_MEM_reg_write
add wave -noupdate -group FU /riscv_tb/CPU/FU/MEM_WB_reg_write
add wave -noupdate -group FU /riscv_tb/CPU/FU/IF_ID_rs1
add wave -noupdate -group FU /riscv_tb/CPU/FU/IF_ID_rs2
add wave -noupdate -group FU /riscv_tb/CPU/FU/ID_EX_rd
add wave -noupdate -group FU /riscv_tb/CPU/FU/EX_MEM_rd
add wave -noupdate -group FU /riscv_tb/CPU/FU/MEM_WB_rd
add wave -noupdate -group FU /riscv_tb/CPU/FU/forwardSrc1
add wave -noupdate -group FU /riscv_tb/CPU/FU/forwardSrc2
add wave -noupdate -group FU /riscv_tb/CPU/FU/ID_EX_reg_write
add wave -noupdate -group FU /riscv_tb/CPU/FU/EX_MEM_reg_write
add wave -noupdate -group FU /riscv_tb/CPU/FU/MEM_WB_reg_write
add wave -noupdate -group FU /riscv_tb/CPU/FU/IF_ID_rs1
add wave -noupdate -group FU /riscv_tb/CPU/FU/IF_ID_rs2
add wave -noupdate -group FU /riscv_tb/CPU/FU/ID_EX_rd
add wave -noupdate -group FU /riscv_tb/CPU/FU/EX_MEM_rd
add wave -noupdate -group FU /riscv_tb/CPU/FU/MEM_WB_rd
add wave -noupdate -group FU /riscv_tb/CPU/FU/forwardSrc1
add wave -noupdate -group FU /riscv_tb/CPU/FU/forwardSrc2
add wave -noupdate -expand -group DM /riscv_tb/DM/mrd
add wave -noupdate -expand -group DM /riscv_tb/DM/mwr
add wave -noupdate -expand -group DM -radix unsigned /riscv_tb/DM/adr
add wave -noupdate -expand -group DM -radix unsigned /riscv_tb/DM/d_in
add wave -noupdate -expand -group DM /riscv_tb/DM/d_out
add wave -noupdate -expand -group DM -childformat {{{/riscv_tb/DM/mem[8168]} -radix unsigned} {{/riscv_tb/DM/mem[8169]} -radix unsigned} {{/riscv_tb/DM/mem[8170]} -radix unsigned} {{/riscv_tb/DM/mem[8171]} -radix unsigned} {{/riscv_tb/DM/mem[8172]} -radix unsigned} {{/riscv_tb/DM/mem[8173]} -radix unsigned} {{/riscv_tb/DM/mem[8174]} -radix unsigned} {{/riscv_tb/DM/mem[8175]} -radix unsigned} {{/riscv_tb/DM/mem[8184]} -radix unsigned} {{/riscv_tb/DM/mem[8185]} -radix unsigned} {{/riscv_tb/DM/mem[8186]} -radix unsigned} {{/riscv_tb/DM/mem[8187]} -radix unsigned} {{/riscv_tb/DM/mem[8188]} -radix unsigned} {{/riscv_tb/DM/mem[8189]} -radix unsigned} {{/riscv_tb/DM/mem[8190]} -radix unsigned} {{/riscv_tb/DM/mem[8191]} -radix unsigned} {{/riscv_tb/DM/mem[9192]} -radix unsigned} {{/riscv_tb/DM/mem[9193]} -radix unsigned} {{/riscv_tb/DM/mem[9194]} -radix unsigned} {{/riscv_tb/DM/mem[9195]} -radix unsigned} {{/riscv_tb/DM/mem[9196]} -radix unsigned} {{/riscv_tb/DM/mem[9197]} -radix unsigned} {{/riscv_tb/DM/mem[9198]} -radix unsigned} {{/riscv_tb/DM/mem[9199]} -radix unsigned} {{/riscv_tb/DM/mem[65533]} -radix unsigned}} -subitemconfig {{/riscv_tb/DM/mem[8168]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8169]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8170]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8171]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8172]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8173]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8174]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8175]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8184]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8185]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8186]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8187]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8188]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8189]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8190]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8191]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9192]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9193]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9194]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9195]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9196]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9197]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9198]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9199]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[65533]} {-height 15 -radix unsigned}} /riscv_tb/DM/mem
add wave -noupdate -expand -group DM /riscv_tb/DM/mrd
add wave -noupdate -expand -group DM /riscv_tb/DM/mwr
add wave -noupdate -expand -group DM -radix unsigned /riscv_tb/DM/adr
add wave -noupdate -expand -group DM -radix unsigned /riscv_tb/DM/d_in
add wave -noupdate -expand -group DM /riscv_tb/DM/d_out
add wave -noupdate -expand -group DM -childformat {{{/riscv_tb/DM/mem[8168]} -radix unsigned} {{/riscv_tb/DM/mem[8169]} -radix unsigned} {{/riscv_tb/DM/mem[8170]} -radix unsigned} {{/riscv_tb/DM/mem[8171]} -radix unsigned} {{/riscv_tb/DM/mem[8172]} -radix unsigned} {{/riscv_tb/DM/mem[8173]} -radix unsigned} {{/riscv_tb/DM/mem[8174]} -radix unsigned} {{/riscv_tb/DM/mem[8175]} -radix unsigned} {{/riscv_tb/DM/mem[8184]} -radix unsigned} {{/riscv_tb/DM/mem[8185]} -radix unsigned} {{/riscv_tb/DM/mem[8186]} -radix unsigned} {{/riscv_tb/DM/mem[8187]} -radix unsigned} {{/riscv_tb/DM/mem[8188]} -radix unsigned} {{/riscv_tb/DM/mem[8189]} -radix unsigned} {{/riscv_tb/DM/mem[8190]} -radix unsigned} {{/riscv_tb/DM/mem[8191]} -radix unsigned} {{/riscv_tb/DM/mem[9192]} -radix unsigned} {{/riscv_tb/DM/mem[9193]} -radix unsigned} {{/riscv_tb/DM/mem[9194]} -radix unsigned} {{/riscv_tb/DM/mem[9195]} -radix unsigned} {{/riscv_tb/DM/mem[9196]} -radix unsigned} {{/riscv_tb/DM/mem[9197]} -radix unsigned} {{/riscv_tb/DM/mem[9198]} -radix unsigned} {{/riscv_tb/DM/mem[9199]} -radix unsigned} {{/riscv_tb/DM/mem[65533]} -radix unsigned}} -subitemconfig {{/riscv_tb/DM/mem[8168]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8169]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8170]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8171]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8172]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8173]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8174]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8175]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8184]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8185]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8186]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8187]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8188]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8189]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8190]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8191]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9192]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9193]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9194]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9195]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9196]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9197]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9198]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9199]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[65533]} {-height 15 -radix unsigned}} /riscv_tb/DM/mem
add wave -noupdate -group IM /riscv_tb/IM/adr
add wave -noupdate -group IM /riscv_tb/IM/d_out
add wave -noupdate -group IM /riscv_tb/IM/mem
add wave -noupdate -group IM /riscv_tb/IM/adr
add wave -noupdate -group IM /riscv_tb/IM/d_out
add wave -noupdate -group IM /riscv_tb/IM/mem
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/clk
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/rst
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/pc_en
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/PC_src
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/IF_flush
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/IF_ID_en
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/inst
add wave -noupdate -expand -group IF -radix unsigned /riscv_tb/CPU/DP/IF/jump_address
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/instruction_misaligned_address
add wave -noupdate -expand -group IF -radix unsigned /riscv_tb/CPU/DP/IF/IF_PC_In
add wave -noupdate -expand -group IF -color {Medium Violet Red} -radix hexadecimal /riscv_tb/CPU/DP/IF/IF_PC_Out
add wave -noupdate -expand -group IF -color Salmon -radix hexadecimal /riscv_tb/CPU/DP/IF/IF_PC_Out_reg
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/inst_reg
add wave -noupdate -expand -group IF -radix unsigned /riscv_tb/CPU/DP/IF/PCplus4
add wave -noupdate -expand -group IF -radix unsigned /riscv_tb/CPU/DP/IF/alu_out
add wave -noupdate -expand -group IF /riscv_tb/CPU/DP/IF/PC_src_in
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/clk
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/rst
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/imm_typ
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/jal_jalr
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ensh2
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/set0
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/mem_write_i
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/mem_read_i
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/reg_write
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/wb_src
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/csr_wr_src
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/csr_in_alu
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/csr_write
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/csr_read
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/csr_set
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/csr_clear
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/alu_operation
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/NOP
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/forwardSrc1
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/forwardSrc2
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/alu_src1
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/alu_src2
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/sgn_unsgn
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_EX_en
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/bhu
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/b
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/h
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/w
add wave -noupdate -expand -group ID -radix hexadecimal /riscv_tb/CPU/DP/ID/inst_reg
add wave -noupdate -expand -group ID -radix hexadecimal /riscv_tb/CPU/DP/ID/IF_PC_Out_reg
add wave -noupdate -expand -group ID -color {Light Steel Blue} /riscv_tb/CPU/DP/IF/trap
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/EX_RF_WR_Data
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/alu_out
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/MEM_WB_reg_write
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/MEM_WB_rd
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/RF_WR_Data
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/func3
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/func7
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/opcode
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_Src1_hu
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_Src2_hu
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/gt
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/lt
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/eq
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/jump_address
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/csr_add
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/bhu_reg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/b_reg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/h_reg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/w_reg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/control_signals_nop_reg
add wave -noupdate -expand -group ID -radix unsigned /riscv_tb/CPU/DP/ID/ID_PC_reg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_ALU_Src2_L1_reg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_rf_rd_reg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_ALU_Src2_reg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_ALU_Src1_reg
add wave -noupdate -expand -group ID -radix unsigned /riscv_tb/CPU/DP/ID/ID_PC
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/shamt
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/imm_itype
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/csr
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/imm_jtype
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/imm_stype
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/imm_btype
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/imm_utype
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_rf_src2
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_rf_src1
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_rf_rd
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/RF_src1_data
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/RF_src2_data
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/sgn_ext_imm
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/base_address
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/offset_address
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/j_address
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/control_signals_nop
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_ALU_Src1_L1
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_ALU_Src1
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_ALU_Src2_L1
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/ID_ALU_Src2
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/diff_sgn
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/diff_usg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/gt_sgn
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/lt_sgn
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/gt_usg
add wave -noupdate -expand -group ID /riscv_tb/CPU/DP/ID/lt_usg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/clk
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/rst
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/EX_MEM_en
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/bhu_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/b_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/h_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/w_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/trap
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/control_signals_nop_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/csr_add
add wave -noupdate -expand -group EX -color Salmon -radix hexadecimal /riscv_tb/CPU/DP/EX/ID_PC_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_ALU_Src2_L1_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_rf_rd_reg
add wave -noupdate -expand -group EX -radix hexadecimal /riscv_tb/CPU/DP/EX/ID_ALU_Src2_reg
add wave -noupdate -expand -group EX -radix hexadecimal /riscv_tb/CPU/DP/EX/ID_ALU_Src1_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/mepc
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/mstatus_in
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/mip_in
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/mcause_in
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/mtval
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/mstatus_out
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/mip_out
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_rd_hu
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/mem_read_hu
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_rd
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_reg_write
add wave -noupdate -expand -group EX -color Coral -radix hexadecimal /riscv_tb/CPU/DP/EX/alu_out
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_bhu_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_b_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_h_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_w_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_wb_src_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_reg_write_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_mem_read_i_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_mem_write_i_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/EX_PC_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_ALU_Src2_L1_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/alu_out_reg
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_rd_reg
add wave -noupdate -expand -group EX -color Pink -radix hexadecimal /riscv_tb/CPU/DP/EX/EX_PC
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ALU_OP1
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ALU_OP2
add wave -noupdate -expand -group EX -radix hexadecimal /riscv_tb/CPU/DP/EX/ALU_CSR_OP1
add wave -noupdate -expand -group EX -radix hexadecimal /riscv_tb/CPU/DP/EX/ALU_CSR_OP2
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/_4mcause
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/csr_out
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/csr_in
add wave -noupdate -expand -group EX -color {Medium Orchid} /riscv_tb/CPU/DP/EX/ID_EX_alu_operation
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_csr_wr_src
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_csr_in_alu
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_csr_write
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_csr_read
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_csr_set
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_csr_clear
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/alu_operation
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_wb_src
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_mem_read_i
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_mem_write_i
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/zero
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_ALU_Src2_L1
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_b
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_h
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_w
add wave -noupdate -expand -group EX /riscv_tb/CPU/DP/EX/ID_EX_bhu
add wave -noupdate -group RF -childformat {{{/riscv_tb/CPU/DP/ID/RF/register_file[0]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[1]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[2]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[3]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[4]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[5]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[6]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[7]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[8]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[9]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[10]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[11]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[12]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[13]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[14]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[15]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[16]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[17]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[18]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[19]} -radix unsigned} {{/riscv_tb/CPU/DP/ID/RF/register_file[20]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[21]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[22]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[23]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[24]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[25]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[26]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[27]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[28]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[29]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[30]} -radix hexadecimal} {{/riscv_tb/CPU/DP/ID/RF/register_file[31]} -radix hexadecimal}} -expand -subitemconfig {{/riscv_tb/CPU/DP/ID/RF/register_file[0]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[1]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[2]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[3]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[4]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[5]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[6]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[7]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[8]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[9]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[10]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[11]} {-color {Medium Orchid} -height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[12]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[13]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[14]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[15]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[16]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[17]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[18]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[19]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/ID/RF/register_file[20]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[21]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[22]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[23]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[24]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[25]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[26]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[27]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[28]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[29]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[30]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/ID/RF/register_file[31]} {-height 15 -radix hexadecimal}} /riscv_tb/CPU/DP/ID/RF/register_file
add wave -noupdate -expand -group WB /riscv_tb/CPU/DP/WB/EX_MEM_reg_write_reg
add wave -noupdate -expand -group WB /riscv_tb/CPU/DP/WB/MEM_PC_reg
add wave -noupdate -expand -group WB /riscv_tb/CPU/DP/WB/EX_RF_WR_Data_reg
add wave -noupdate -expand -group WB /riscv_tb/CPU/DP/WB/EX_MEM_rd_reg
add wave -noupdate -expand -group WB /riscv_tb/CPU/DP/WB/MEM_WB_rd
add wave -noupdate -expand -group WB /riscv_tb/CPU/DP/WB/MEM_WB_reg_write
add wave -noupdate -expand -group WB /riscv_tb/CPU/DP/WB/RF_WR_Data
add wave -noupdate -expand -group WB -radix hexadecimal /riscv_tb/CPU/DP/WB/WB_PC
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/clk
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/rst
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/reg_write
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/rd_reg1
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/rd_reg2
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/wr_reg
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/wr_data
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/rd_data1
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/rd_data2
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/register_file
add wave -noupdate -expand -group WB -group RF /riscv_tb/CPU/DP/ID/RF/i
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/csr_reg
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/set
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/clr
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/write
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/read
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/trap
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/adr
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/din
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/dout
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/mepc
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/mstatus_in
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/mstatus_out
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/mip_in
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/mip_out
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/mcause_in
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/mcause_out
add wave -noupdate -group csr /riscv_tb/CPU/DP/EX/CSR/mtval
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/clk
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/rst
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/data_in
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/data_out_mask
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/MEM_WB_en
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_bhu_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_b_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_h_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_w_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_wb_src_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_reg_write_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_mem_read_i_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_mem_write_i_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_PC_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_ALU_Src2_L1_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/alu_out_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/ID_EX_rd_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/load_data_misaligned_address
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/store_data_misaligned_address
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_rd
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_reg_write
add wave -noupdate -group MEM -radix decimal /riscv_tb/CPU/DP/MEM/EX_MEM_alu_out
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_mem_read_i
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_mem_write_i
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/data_out_pr
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_RF_WR_Data
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_reg_write_reg
add wave -noupdate -group MEM -radix unsigned /riscv_tb/CPU/DP/MEM/MEM_PC_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_RF_WR_Data_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_rd_reg
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_ALU_Src2_L1
add wave -noupdate -group MEM -radix unsigned /riscv_tb/CPU/DP/MEM/MEM_PC
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_wb_src
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/data_in_pr
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_b
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_h
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_w
add wave -noupdate -group MEM /riscv_tb/CPU/DP/MEM/EX_MEM_bhu
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/clk
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/rst
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/machine_software_interrupt
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/machine_timer_interrupt
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/machine_external_interrupt
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/instruction_misaligned_address
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/IF_PC
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/illegal_instruction
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/load_data_misaligned_address
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/store_data_misaligned_address
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/trap_flush
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/MSTATUS_IN
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/MIP_IN
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/MEPC
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/MSTATUS_OUT
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/MIP_OUT
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/MCAUSE
add wave -noupdate -group INT /riscv_tb/CPU/DP/INT_PATH/MTVAL
add wave -noupdate -group INT -radix hexadecimal /riscv_tb/CPU/DP/INT_PATH/IF_ID_cause_in
add wave -noupdate -group INT -radix hexadecimal /riscv_tb/CPU/DP/INT_PATH/IF_ID_cause_out
add wave -noupdate -group INT -radix hexadecimal /riscv_tb/CPU/DP/INT_PATH/ID_EXE_cause_in
add wave -noupdate -group INT -radix hexadecimal /riscv_tb/CPU/DP/INT_PATH/ID_EXE_cause_out
add wave -noupdate -group INT -radix hexadecimal /riscv_tb/CPU/DP/INT_PATH/EXE_MEM_cause_out
add wave -noupdate -group INT -radix hexadecimal /riscv_tb/CPU/DP/INT_PATH/MEM_WB_cause_in
add wave -noupdate -group INT -radix hexadecimal /riscv_tb/CPU/DP/INT_PATH/MEM_WB_cause_out
add wave -noupdate -group INT -radix unsigned /riscv_tb/CPU/DP/INT_PATH/IF_ID_PC_out
add wave -noupdate -group INT -radix unsigned /riscv_tb/CPU/DP/INT_PATH/ID_EXE_PC_out
add wave -noupdate -group INT -radix unsigned /riscv_tb/CPU/DP/INT_PATH/EXE_MEM_PC_out
add wave -noupdate -group INT -radix unsigned /riscv_tb/CPU/DP/INT_PATH/MEM_WB_PC_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {1101 ps} 0} {{Cursor 3} {497 ps} 0} {{Cursor 4} {6015 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1008 ps} {1264 ps}
