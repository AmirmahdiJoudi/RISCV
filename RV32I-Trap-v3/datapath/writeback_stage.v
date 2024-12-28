module writeback_stage (
    input EX_MEM_reg_write_reg, // in
    input [31:0] MEM_PC_reg, // in
    input [31:0] EX_RF_WR_Data_reg, // in
    input [4:0] EX_MEM_rd_reg, // in

    output [4:0] MEM_WB_rd, // out w
    output MEM_WB_reg_write, // out w
    output [31:0] RF_WR_Data // out w
);
  
    wire [31:0] WB_PC; // w

    assign MEM_WB_rd = EX_MEM_rd_reg;
    assign RF_WR_Data = EX_RF_WR_Data_reg;
    assign WB_PC = MEM_PC_reg;
    assign MEM_WB_reg_write = EX_MEM_reg_write_reg;

endmodule