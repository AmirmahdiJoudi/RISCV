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
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_memread
add wave -noupdate -group HU /riscv_tb/CPU/HU/mem_write_bh
add wave -noupdate -group HU /riscv_tb/CPU/HU/ID_EX_rd
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_rs1
add wave -noupdate -group HU /riscv_tb/CPU/HU/IF_ID_rs2
add wave -noupdate -group HU /riscv_tb/CPU/HU/pc_en_hazard
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
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/size
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/clk
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/rst
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/clr
add wave -noupdate -group PC /riscv_tb/CPU/DP/PC/ld
add wave -noupdate -group PC -radix hexadecimal /riscv_tb/CPU/DP/PC/d_in
add wave -noupdate -group PC -radix hexadecimal /riscv_tb/CPU/DP/PC/d_out
add wave -noupdate -group CSR /riscv_tb/CPU/DP/CSR_Registers/handling_mode
add wave -noupdate -group CSR /riscv_tb/CPU/DP/CSR_Registers/csr_reg_write
add wave -noupdate -group CSR /riscv_tb/CPU/DP/CSR_Registers/csr_reg_set
add wave -noupdate -group CSR /riscv_tb/CPU/DP/CSR_Registers/csr_reg_clear
add wave -noupdate -group CSR -radix unsigned /riscv_tb/CPU/DP/CSR_Registers/csr_add
add wave -noupdate -group CSR -radix hexadecimal /riscv_tb/CPU/DP/CSR_Registers/csr_wr_data
add wave -noupdate -group CSR -radix unsigned /riscv_tb/CPU/DP/CSR_Registers/csr_rd_data
add wave -noupdate -group CSR /riscv_tb/CPU/DP/CSR_Registers/MIEN
add wave -noupdate -group CSR /riscv_tb/CPU/DP/CSR_Registers/MEIEN
add wave -noupdate -group CSR /riscv_tb/CPU/DP/CSR_Registers/MTIEN
add wave -noupdate -group CSR /riscv_tb/CPU/DP/CSR_Registers/MSIEN
add wave -noupdate -group CSR -radix hexadecimal -childformat {{{/riscv_tb/CPU/DP/CSR_Registers/register_file[0]} -radix hexadecimal -childformat {{{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][31]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][30]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][29]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][28]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][27]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][26]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][25]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][24]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][23]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][22]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][21]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][20]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][19]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][18]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][17]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][16]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][15]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][14]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][13]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][12]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][11]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][10]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][9]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][8]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][7]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][6]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][5]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][4]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][3]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][2]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][1]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][0]} -radix unsigned}}} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[1]} -radix hexadecimal} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[2]} -radix hexadecimal} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[3]} -radix hexadecimal} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[4]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[5]} -radix hexadecimal} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[6]} -radix hexadecimal} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7]} -radix hexadecimal -childformat {{{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][31]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][30]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][29]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][28]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][27]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][26]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][25]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][24]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][23]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][22]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][21]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][20]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][19]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][18]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][17]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][16]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][15]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][14]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][13]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][12]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][11]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][10]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][9]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][8]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][7]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][6]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][5]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][4]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][3]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][2]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][1]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][0]} -radix unsigned}}}} -subitemconfig {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0]} {-height 15 -radix hexadecimal -childformat {{{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][31]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][30]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][29]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][28]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][27]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][26]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][25]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][24]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][23]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][22]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][21]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][20]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][19]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][18]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][17]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][16]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][15]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][14]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][13]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][12]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][11]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][10]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][9]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][8]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][7]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][6]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][5]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][4]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][3]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][2]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][1]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[0][0]} -radix unsigned}}} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][31]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][30]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][29]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][28]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][27]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][26]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][25]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][24]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][23]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][22]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][21]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][20]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][19]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][18]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][17]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][16]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][15]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][14]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][13]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][12]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][11]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][10]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][9]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][8]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][7]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][6]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][5]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][4]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][3]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][2]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][1]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[0][0]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[1]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/CSR_Registers/register_file[2]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/CSR_Registers/register_file[3]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/CSR_Registers/register_file[4]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[5]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/CSR_Registers/register_file[6]} {-height 15 -radix hexadecimal} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7]} {-height 15 -radix hexadecimal -childformat {{{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][31]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][30]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][29]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][28]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][27]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][26]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][25]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][24]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][23]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][22]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][21]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][20]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][19]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][18]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][17]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][16]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][15]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][14]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][13]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][12]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][11]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][10]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][9]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][8]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][7]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][6]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][5]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][4]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][3]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][2]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][1]} -radix unsigned} {{/riscv_tb/CPU/DP/CSR_Registers/register_file[7][0]} -radix unsigned}}} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][31]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][30]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][29]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][28]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][27]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][26]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][25]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][24]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][23]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][22]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][21]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][20]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][19]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][18]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][17]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][16]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][15]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][14]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][13]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][12]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][11]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][10]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][9]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][8]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][7]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][6]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][5]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][4]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][3]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][2]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][1]} {-height 15 -radix unsigned} {/riscv_tb/CPU/DP/CSR_Registers/register_file[7][0]} {-height 15 -radix unsigned}} /riscv_tb/CPU/DP/CSR_Registers/register_file
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
add wave -noupdate -group DM -childformat {{{/riscv_tb/DM/mem[4108]} -radix unsigned} {{/riscv_tb/DM/mem[4112]} -radix unsigned} {{/riscv_tb/DM/mem[4116]} -radix unsigned} {{/riscv_tb/DM/mem[4117]} -radix unsigned} {{/riscv_tb/DM/mem[4118]} -radix unsigned} {{/riscv_tb/DM/mem[4119]} -radix unsigned} {{/riscv_tb/DM/mem[4120]} -radix unsigned} {{/riscv_tb/DM/mem[4121]} -radix unsigned} {{/riscv_tb/DM/mem[4122]} -radix unsigned} {{/riscv_tb/DM/mem[4123]} -radix unsigned} {{/riscv_tb/DM/mem[4124]} -radix unsigned} {{/riscv_tb/DM/mem[4125]} -radix unsigned} {{/riscv_tb/DM/mem[4126]} -radix unsigned} {{/riscv_tb/DM/mem[4127]} -radix unsigned} {{/riscv_tb/DM/mem[8168]} -radix unsigned} {{/riscv_tb/DM/mem[8169]} -radix unsigned} {{/riscv_tb/DM/mem[8170]} -radix unsigned} {{/riscv_tb/DM/mem[8171]} -radix unsigned} {{/riscv_tb/DM/mem[8172]} -radix unsigned} {{/riscv_tb/DM/mem[8173]} -radix unsigned} {{/riscv_tb/DM/mem[8174]} -radix unsigned} {{/riscv_tb/DM/mem[8175]} -radix unsigned} {{/riscv_tb/DM/mem[8184]} -radix unsigned} {{/riscv_tb/DM/mem[8185]} -radix unsigned} {{/riscv_tb/DM/mem[8186]} -radix unsigned} {{/riscv_tb/DM/mem[8187]} -radix unsigned} {{/riscv_tb/DM/mem[8188]} -radix unsigned} {{/riscv_tb/DM/mem[8189]} -radix unsigned} {{/riscv_tb/DM/mem[8190]} -radix unsigned} {{/riscv_tb/DM/mem[8191]} -radix unsigned} {{/riscv_tb/DM/mem[9192]} -radix unsigned} {{/riscv_tb/DM/mem[9193]} -radix unsigned} {{/riscv_tb/DM/mem[9194]} -radix unsigned} {{/riscv_tb/DM/mem[9195]} -radix unsigned} {{/riscv_tb/DM/mem[9196]} -radix unsigned} {{/riscv_tb/DM/mem[9197]} -radix unsigned} {{/riscv_tb/DM/mem[9198]} -radix unsigned} {{/riscv_tb/DM/mem[9199]} -radix unsigned} {{/riscv_tb/DM/mem[65533]} -radix unsigned}} -subitemconfig {{/riscv_tb/DM/mem[4108]} {-radix unsigned} {/riscv_tb/DM/mem[4112]} {-radix unsigned} {/riscv_tb/DM/mem[4116]} {-radix unsigned} {/riscv_tb/DM/mem[4117]} {-radix unsigned} {/riscv_tb/DM/mem[4118]} {-radix unsigned} {/riscv_tb/DM/mem[4119]} {-radix unsigned} {/riscv_tb/DM/mem[4120]} {-radix unsigned} {/riscv_tb/DM/mem[4121]} {-radix unsigned} {/riscv_tb/DM/mem[4122]} {-radix unsigned} {/riscv_tb/DM/mem[4123]} {-radix unsigned} {/riscv_tb/DM/mem[4124]} {-radix unsigned} {/riscv_tb/DM/mem[4125]} {-radix unsigned} {/riscv_tb/DM/mem[4126]} {-radix unsigned} {/riscv_tb/DM/mem[4127]} {-radix unsigned} {/riscv_tb/DM/mem[8168]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8169]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8170]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8171]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8172]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8173]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8174]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8175]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8184]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8185]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8186]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8187]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8188]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8189]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8190]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[8191]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9192]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9193]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9194]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9195]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9196]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9197]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9198]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[9199]} {-height 15 -radix unsigned} {/riscv_tb/DM/mem[65533]} {-height 15 -radix unsigned}} /riscv_tb/DM/mem
add wave -noupdate -group IM /riscv_tb/IM/adr
add wave -noupdate -group IM /riscv_tb/IM/d_out
add wave -noupdate -group IM /riscv_tb/IM/mem
add wave -noupdate -group TRAP /riscv_tb/CPU/DP/MEM_pre_exc
add wave -noupdate -group TRAP -radix unsigned /riscv_tb/CPU/DP/EX_MEM_alu_out
add wave -noupdate -group TRAP /riscv_tb/CPU/DP/EX_MEM_b
add wave -noupdate -group TRAP /riscv_tb/CPU/DP/EX_MEM_h
add wave -noupdate -group TRAP /riscv_tb/CPU/DP/EX_MEM_w
add wave -noupdate -group TRAP /riscv_tb/CPU/DP/EX_MEM_bhu
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/exceptionRaised
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/exceptionSrc
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/interruptRaised
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/machineTimerInterrupt
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/machineSoftwareInterrupt
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/machineExternalInterrupt
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/MRET
add wave -noupdate -group TRAP -radix hexadecimal /riscv_tb/CPU/trap_handler/csrOut
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_handler_csr_write
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_handler_add
add wave -noupdate -group TRAP -radix unsigned /riscv_tb/CPU/trap_handler/trap_handler_data
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_handler_add_src
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_handler_data_pre_exc_src
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_handler_data_pc_12_src
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_handler_data_src
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_handler_pc_en
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_flush
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/trap_handler_PC_src
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/causeEN
add wave -noupdate -group TRAP -radix hexadecimal /riscv_tb/CPU/trap_handler/causeDT
add wave -noupdate -group TRAP -radix hexadecimal /riscv_tb/CPU/trap_handler/causeOut
add wave -noupdate -group TRAP -radix unsigned /riscv_tb/CPU/trap_handler/trap_jump_add
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/p_state
add wave -noupdate -group TRAP /riscv_tb/CPU/trap_handler/n_state
add wave -noupdate -group TB /riscv_tb/clk
add wave -noupdate -group TB /riscv_tb/rst
add wave -noupdate -group TB /riscv_tb/inst_adr
add wave -noupdate -group TB /riscv_tb/inst
add wave -noupdate -group TB /riscv_tb/data_adr
add wave -noupdate -group TB /riscv_tb/data_in
add wave -noupdate -group TB /riscv_tb/data_out
add wave -noupdate -group TB /riscv_tb/mem_read
add wave -noupdate -group TB /riscv_tb/mem_write
add wave -noupdate -group TB /riscv_tb/machineTimerInterrupt
add wave -noupdate -group TB /riscv_tb/machineSoftwareInterrupt
add wave -noupdate -group TB /riscv_tb/machineExternalInterrupt
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1992 ps} 0}
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
WaveRestoreZoom {0 ps} {28672 ps}
