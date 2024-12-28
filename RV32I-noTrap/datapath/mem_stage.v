module mem_stage(
    input clk,
    input rst,
    input [31:0] data_in, // in
    input [3:0] data_out_mask, // out
    input MEM_WB_en, // in
    input ID_EX_bhu_reg, // in
    input ID_EX_b_reg, // in
    input ID_EX_h_reg, // in
    input ID_EX_w_reg, // in
    input ID_EX_wb_src_reg, // in
    input ID_EX_reg_write_reg, // in
    input ID_EX_mem_read_i_reg, // in
    input ID_EX_mem_write_i_reg, // in
    input [31:0] EX_PC_reg, // in
    input [31:0] ID_EX_ALU_Src2_L1_reg, // in
    input [31:0] alu_out_reg, // in
    input [4:0] ID_EX_rd_reg, // in

    output [4:0] EX_MEM_rd, // out w
    output EX_MEM_reg_write, // out w
    output [31:0] EX_MEM_alu_out, // out w
    output EX_MEM_mem_read_i, // out w
    output EX_MEM_mem_write_i, // out w
    output [31:0] data_out_pr, // out w
    output [31:0] EX_RF_WR_Data, // out w
    output EX_MEM_reg_write_reg, // out
    output [31:0] MEM_PC_reg, // out
    output [31:0] EX_RF_WR_Data_reg, // out
    output [4:0] EX_MEM_rd_reg // out
);

    wire [31:0] EX_MEM_ALU_Src2_L1; // w
    wire [31:0] MEM_PC; // w
    wire EX_MEM_wb_src; // w
    wire [31:0] data_in_pr;
    wire EX_MEM_b; // w
    wire EX_MEM_h; // w
    wire EX_MEM_w; // w
    wire EX_MEM_bhu; // w



    assign EX_MEM_rd = ID_EX_rd_reg;
    assign EX_MEM_alu_out = alu_out_reg;
    assign EX_MEM_ALU_Src2_L1 = ID_EX_ALU_Src2_L1_reg;
    assign MEM_PC = EX_PC_reg;
    assign {EX_MEM_wb_src, EX_MEM_reg_write, EX_MEM_mem_read_i, EX_MEM_mem_write_i} = {ID_EX_wb_src_reg, ID_EX_reg_write_reg, ID_EX_mem_read_i_reg, ID_EX_mem_write_i_reg};
    assign EX_MEM_w = ID_EX_w_reg;
    assign EX_MEM_h = ID_EX_h_reg;
    assign EX_MEM_b = ID_EX_b_reg;
    assign EX_MEM_bhu = ID_EX_bhu_reg;
    

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

    assign data_out_pr = (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b00) ? {24'd0, EX_MEM_ALU_Src2_L1[7:0]} :
                         (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b01) ? {16'd0, EX_MEM_ALU_Src2_L1[7:0], 8'd0} :
                         (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b10) ? {8'd0, EX_MEM_ALU_Src2_L1[7:0], 16'd0} :
                         (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b11) ? {EX_MEM_ALU_Src2_L1[7:0], 24'd0} :
                         (EX_MEM_h && EX_MEM_alu_out[1:0]==2'b00) ? {16'd0, EX_MEM_ALU_Src2_L1[15:0]} :
                         (EX_MEM_h && EX_MEM_alu_out[1:0]==2'b10) ? {EX_MEM_ALU_Src2_L1[15:0], 16'd0} :
                         (EX_MEM_w) ? EX_MEM_ALU_Src2_L1 :
                         EX_MEM_ALU_Src2_L1;
    
    assign data_out_mask = (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b00) ? {4'b0001} :
                           (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b01) ? {4'b0010} :
                           (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b10) ? {4'b0100} :
                           (EX_MEM_b && EX_MEM_alu_out[1:0]==2'b11) ? {4'b1000} :
                           (EX_MEM_h && EX_MEM_alu_out[1:0]==2'b00) ? {4'b0011} :
                           (EX_MEM_h && EX_MEM_alu_out[1:0]==2'b10) ? {4'b1100} :
                           (EX_MEM_w) ? 4'b1111 :
                           4'b1111;

    mux2to1 #(
        .size(32)
    ) MUX7 (
        .i0(EX_MEM_alu_out), 
        .i1(data_in_pr),
        .sel(EX_MEM_wb_src),
        .y(EX_RF_WR_Data)
    );

    register #(
        .size(70)
    ) MEM_WB_reg (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(MEM_WB_en),
        .d_in({EX_MEM_reg_write, MEM_PC, EX_RF_WR_Data, EX_MEM_rd}),
        .d_out({EX_MEM_reg_write_reg, MEM_PC_reg, EX_RF_WR_Data_reg, EX_MEM_rd_reg})
    );
    


endmodule