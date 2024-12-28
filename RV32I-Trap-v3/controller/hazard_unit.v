module hazard_unit (

    input ID_EX_memread,
   // input mem_write_bh,
    input[4:0] ID_EX_rd, 
    input[4:0] IF_ID_rs1, 
    input[4:0] IF_ID_rs2,

    output pc_en, 
    output IF_ID_en, 
    output ID_EX_en,
    output EX_MEM_en,
    output MEM_WB_en, 
    output c_or_nop

);

    assign {pc_en, IF_ID_en, ID_EX_en, EX_MEM_en, MEM_WB_en, c_or_nop} = (ID_EX_memread == 1 && (ID_EX_rd == IF_ID_rs1 || ID_EX_rd == IF_ID_rs2)) ? 6'b001111 : 6'b111110;

endmodule
    