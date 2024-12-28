module fetch_stage (
    input clk,
    input rst,
    input pc_en, // in
    input PC_src, // in
    input IF_flush, // in
    input IF_ID_en, // in
    input [31:0] inst, // in
    input [31:0] jump_address, // in
    input [31:0] alu_out, // in
    input trap, // in
    input ID_EX_mret_out,

    output instruction_misaligned_address,
    output [31:0] IF_PC_Out, // out 
    output [31:0] IF_PC_Out_reg, // out
    output [31:0] inst_reg // out
);

    wire [31:0] IF_PC_In; // w
    wire [31:0] PCplus4; // w
    wire [1:0] PC_src_in; // w

    register #(
        .size(32)
    ) PC (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(pc_en | trap),
        .d_in(IF_PC_In),
        .initial_val(32'd0),
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

    assign PC_src_in = (trap == 1'b1 | ID_EX_mret_out == 1'b1) ? 2'b10 : {1'b0, PC_src};

    mux4to1 #(
        .size(32)
    ) PC_Input_Src_MUX (
        .i0(PCplus4), 
        .i1(jump_address),
        .i2(alu_out),
        .i3(32'd0),
        .sel(PC_src_in),
        .y(IF_PC_In)
    );

    register #(
        .size(64)
    ) IF_ID_reg (
        .clk(clk),
        .rst(rst),
        .clr((IF_flush & IF_ID_en) | trap | ID_EX_mret_out),
        .ld(IF_ID_en | trap),
        .initial_val({32'd0, 32'd19}),
        .d_in({IF_PC_Out, inst}),
        .d_out({IF_PC_Out_reg, inst_reg})
    );

    assign instruction_misaligned_address = (IF_PC_Out[1:0] == 2'b00) ? 1'b0 : 1'b1;

endmodule