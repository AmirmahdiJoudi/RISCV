onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/reg_write
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/rd_reg1
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/rd_reg2
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/wr_reg
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/wr_data
add wave -noupdate -group RF -radix unsigned /riscv_tb/CPU/DP/RF/rd_data1
add wave -noupdate -group RF -radix unsigned /riscv_tb/CPU/DP/RF/rd_data2
add wave -noupdate -group RF -radix unsigned -childformat {{{/riscv_tb/CPU/DP/RF/register_file[0]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[1]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[2]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[3]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[4]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[5]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[6]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[7]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[8]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[9]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[10]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[11]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[12]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[13]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[14]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[15]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[16]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[17]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[18]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[19]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[20]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[21]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[22]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[23]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[24]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[25]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[26]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[27]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[28]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[29]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[30]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[31]} -radix hexadecimal}} -subitemconfig {{/riscv_tb/CPU/DP/RF/register_file[0]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[1]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[2]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[3]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[4]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[5]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[6]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[7]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[8]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[9]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[10]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[11]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[12]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[13]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[14]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[15]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[16]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[17]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[18]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[19]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[20]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[21]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[22]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[23]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[24]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[25]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[26]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[27]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[28]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[29]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[30]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[31]} {-height 15 -radix hexadecimal}} /riscv_tb/CPU/DP/RF/register_file
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/i
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/reg_write
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/rd_reg1
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/rd_reg2
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/wr_reg
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/wr_data
add wave -noupdate -group RF -radix unsigned /riscv_tb/CPU/DP/RF/rd_data1
add wave -noupdate -group RF -radix unsigned /riscv_tb/CPU/DP/RF/rd_data2
add wave -noupdate -group RF -radix unsigned -childformat {{{/riscv_tb/CPU/DP/RF/register_file[0]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[1]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[2]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[3]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[4]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[5]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[6]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[7]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[8]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[9]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[10]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[11]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[12]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[13]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[14]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[15]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[16]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[17]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[18]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[19]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[20]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[21]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[22]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[23]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[24]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[25]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[26]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[27]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[28]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[29]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[30]} -radix unsigned} {{/riscv_tb/CPU/DP/RF/register_file[31]} -radix hexadecimal}} -subitemconfig {{/riscv_tb/CPU/DP/RF/register_file[0]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[1]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[2]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[3]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[4]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[5]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[6]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[7]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[8]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[9]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[10]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[11]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[12]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[13]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[14]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[15]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[16]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[17]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[18]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[19]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[20]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[21]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[22]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[23]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[24]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[25]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[26]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[27]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[28]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[29]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[30]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/RF/register_file[31]} {-height 15 -radix hexadecimal}} /riscv_tb/CPU/DP/RF/register_file
add wave -noupdate -group RF /riscv_tb/CPU/DP/RF/i
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_memread
add wave -noupdate -group HU /riscv_tb/CPU/HU/mem_write_bh
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_rd
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_rs1
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_rs2
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/EX_MEM_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/MEM_WB_en
add wave -noupdate -group HU /riscv_tb/CPU/HU/c_or_nop
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_memread
add wave -noupdate -group HU /riscv_tb/CPU/HU/mem_write_bh
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
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/size
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/clk
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/rst
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/clr
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/ld
add wave -noupdate -group PC -radix hexadecimal /riscv_tb/CPU/DP/PC/d_in
add wave -noupdate -group PC -radix hexadecimal /riscv_tb/CPU/DP/PC/d_out
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/size
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/clk
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/rst
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/clr
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/ld
add wave -noupdate -group PC -radix hexadecimal /riscv_tb/CPU/DP/PC/d_in
add wave -noupdate -group PC -radix hexadecimal /riscv_tb/CPU/DP/PC/d_out
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/size
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/a
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/b
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/ctrl
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/y
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/zero
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/res
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/opA
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/opB
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/opSRA
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/ov
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/size
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/a
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/b
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/ctrl
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/y
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/zero
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/res
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/opA
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/opB
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/opSRA
add wave -noupdate -group ALU -radix unsigned /riscv_tb/CPU/DP/ALU/ov
add wave -noupdate -group DM /riscv_tb/DM/mrd
add wave -noupdate -group DM /riscv_tb/DM/mwr
add wave -noupdate -group DM -radix unsigned /riscv_tb/DM/adr
add wave -noupdate -group DM -radix unsigned /riscv_tb/DM/d_in
add wave -noupdate -group DM /riscv_tb/DM/d_out
add wave -noupdate -group DM -childformat {{{/riscv_tb/DM/mem[8168]} -radix unsigned} {{/riscv_tb/DM/mem[8169]} -radix unsigned} {{/riscv_tb/DM/mem[8170]} -radix unsigned} {{/riscv_tb/DM/mem[8171]} -radix unsigned} {{/riscv_tb/DM/mem[8172]} -radix unsigned} {{/riscv_tb/DM/mem[8173]} -radix unsigned} {{/riscv_tb/DM/mem[8174]} -radix unsigned} {{/riscv_tb/DM/mem[8175]} -radix unsigned} {{/riscv_tb/DM/mem[8184]} -radix unsigned} {{/riscv_tb/DM/mem[8185]} -radix unsigned} {{/riscv_tb/DM/mem[8186]} -radix unsigned} {{/riscv_tb/DM/mem[8187]} -radix unsigned} {{/riscv_tb/DM/mem[8188]} -radix unsigned} {{/riscv_tb/DM/mem[8189]} -radix unsigned} {{/riscv_tb/DM/mem[8190]} -radix unsigned} {{/riscv_tb/DM/mem[8191]} -radix unsigned} {{/riscv_tb/DM/mem[9192]} -radix unsigned} {{/riscv_tb/DM/mem[9193]} -radix unsigned} {{/riscv_tb/DM/mem[9194]} -radix unsigned} {{/riscv_tb/DM/mem[9195]} -radix unsigned} {{/riscv_tb/DM/mem[9196]} -radix unsigned} {{/riscv_tb/DM/mem[9197]} -radix unsigned} {{/riscv_tb/DM/mem[9198]} -radix unsigned} {{/riscv_tb/DM/mem[9199]} -radix unsigned} {{/riscv_tb/DM/mem[65533]} -radix unsigned}} -subitemconfig {{/riscv_tb/DM/mem[8168]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8169]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8170]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8171]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8172]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8173]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8174]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8175]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8184]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8185]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8186]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8187]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8188]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8189]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8190]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8191]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9192]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9193]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9194]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9195]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9196]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9197]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9198]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9199]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[65533]} {-height 15 -radix unsigned}} /riscv_tb/DM/mem
add wave -noupdate -group DM /riscv_tb/DM/mrd
add wave -noupdate -group DM /riscv_tb/DM/mwr
add wave -noupdate -group DM -radix unsigned /riscv_tb/DM/adr
add wave -noupdate -group DM -radix unsigned /riscv_tb/DM/d_in
add wave -noupdate -group DM /riscv_tb/DM/d_out
add wave -noupdate -group DM -childformat {{{/riscv_tb/DM/mem[8168]} -radix unsigned} {{/riscv_tb/DM/mem[8169]} -radix unsigned} {{/riscv_tb/DM/mem[8170]} -radix unsigned} {{/riscv_tb/DM/mem[8171]} -radix unsigned} {{/riscv_tb/DM/mem[8172]} -radix unsigned} {{/riscv_tb/DM/mem[8173]} -radix unsigned} {{/riscv_tb/DM/mem[8174]} -radix unsigned} {{/riscv_tb/DM/mem[8175]} -radix unsigned} {{/riscv_tb/DM/mem[8184]} -radix unsigned} {{/riscv_tb/DM/mem[8185]} -radix unsigned} {{/riscv_tb/DM/mem[8186]} -radix unsigned} {{/riscv_tb/DM/mem[8187]} -radix unsigned} {{/riscv_tb/DM/mem[8188]} -radix unsigned} {{/riscv_tb/DM/mem[8189]} -radix unsigned} {{/riscv_tb/DM/mem[8190]} -radix unsigned} {{/riscv_tb/DM/mem[8191]} -radix unsigned} {{/riscv_tb/DM/mem[9192]} -radix unsigned} {{/riscv_tb/DM/mem[9193]} -radix unsigned} {{/riscv_tb/DM/mem[9194]} -radix unsigned} {{/riscv_tb/DM/mem[9195]} -radix unsigned} {{/riscv_tb/DM/mem[9196]} -radix unsigned} {{/riscv_tb/DM/mem[9197]} -radix unsigned} {{/riscv_tb/DM/mem[9198]} -radix unsigned} {{/riscv_tb/DM/mem[9199]} -radix unsigned} {{/riscv_tb/DM/mem[65533]} -radix unsigned}} -subitemconfig {{/riscv_tb/DM/mem[8168]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8169]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8170]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8171]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8172]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8173]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8174]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8175]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8184]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8185]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8186]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8187]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8188]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8189]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8190]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8191]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9192]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9193]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9194]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9195]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9196]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9197]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9198]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9199]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[65533]} {-height 15 -radix unsigned}} /riscv_tb/DM/mem
add wave -noupdate -group IM /riscv_tb/IM/adr
add wave -noupdate -group IM /riscv_tb/IM/d_out
add wave -noupdate -group IM /riscv_tb/IM/mem
add wave -noupdate -group IM /riscv_tb/IM/adr
add wave -noupdate -group IM /riscv_tb/IM/d_out
add wave -noupdate -group IM /riscv_tb/IM/mem
add wave -noupdate -group TB /riscv_tb/clk
add wave -noupdate -group TB /riscv_tb/rst
add wave -noupdate -group TB /riscv_tb/inst_adr
add wave -noupdate -group TB /riscv_tb/inst
add wave -noupdate -group TB /riscv_tb/data_adr
add wave -noupdate -group TB /riscv_tb/data_in
add wave -noupdate -group TB /riscv_tb/data_out
add wave -noupdate -group TB /riscv_tb/mem_read
add wave -noupdate -group TB /riscv_tb/mem_write
add wave -noupdate -group TB /riscv_tb/clk
add wave -noupdate -group TB /riscv_tb/rst
add wave -noupdate -group TB /riscv_tb/inst_adr
add wave -noupdate -group TB /riscv_tb/inst
add wave -noupdate -group TB /riscv_tb/data_adr
add wave -noupdate -group TB /riscv_tb/data_in
add wave -noupdate -group TB /riscv_tb/data_out
add wave -noupdate -group TB /riscv_tb/mem_read
add wave -noupdate -group TB /riscv_tb/mem_write
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/i0
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/i1
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/i2
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/i3
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/sel
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/y
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/i0
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/i1
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/i2
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/i3
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/sel
add wave -noupdate -group ALU_Src1_L1_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src1_L1/y
add wave -noupdate -group ALU_Src1_L2_MUX /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/size
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/i0
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/i1
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/i2
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/i3
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/sel
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/y
add wave -noupdate -group ALU_Src1_L2_MUX /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/size
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/i0
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/i1
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/i2
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/i3
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/sel
add wave -noupdate -group ALU_Src1_L2_MUX -radix unsigned /riscv_tb/CPU/DP/MUX_ALU_Src2_L1/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {760 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 361
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {3414 ps} {3526 ps}
