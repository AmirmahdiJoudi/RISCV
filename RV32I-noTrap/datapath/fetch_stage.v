module fetch_stage (
    input clk,
    input rst,
    input pc_en, // in
    input PC_src, // in
    input IF_flush, // in
    input IF_ID_en, // in
    input [31:0] inst, // in
    input [31:0] jump_address, // in

    output [31:0] IF_PC_Out, // out 
    output [31:0] IF_PC_Out_reg, // out
    output [31:0] inst_reg // out
);

    wire [31:0] IF_PC_In; // w
    wire [31:0] PCplus4; // w

    register #(
        .size(32)
    ) PC (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(pc_en),
        .d_in(IF_PC_In),
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

    mux2to1 #(
        .size(32)
    ) PC_Input_Src_MUX (
        .i0(PCplus4), 
        .i1(jump_address),
        .sel(PC_src),
        .y(IF_PC_In)
    );

    register #(
        .size(64)
    ) IF_ID_reg (
        .clk(clk),
        .rst(rst),
        .clr(IF_flush & IF_ID_en),
        .ld(IF_ID_en),
        .d_in({IF_PC_Out, inst}),
        .d_out({IF_PC_Out_reg, inst_reg})
    );




endmodule