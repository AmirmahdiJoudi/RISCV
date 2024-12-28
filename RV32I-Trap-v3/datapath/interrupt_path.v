module interrupt_path (
    input clk,
    input rst,

    input IF_flush,
    input trap,
    input ID_EX_mret_out,
    
    input machine_software_interrupt,
    input machine_timer_interrupt,
    input machine_external_interrupt,

    input instruction_misaligned_address,
    input [31:0] IF_PC,

    input illegal_instruction,

    input load_data_misaligned_address,
    input store_data_misaligned_address,

    output trap_flush,

    output [31:0] MSTATUS_IN,
    output [31:0] MIP_IN,
    output [31:0] MIE_IN,
    
    output [31:0] MEPC,
    output [31:0] MSTATUS_OUT,
    output [31:0] MIP_OUT,
    output [31:0] MCAUSE,
    output [31:0] MTVAL

);

    wire [6:0] IF_ID_cause_in;
    wire [6:0] IF_ID_cause_out;

    wire [6:0] ID_EXE_cause_in;
    wire [6:0] ID_EXE_cause_out;

    wire [6:0] EXE_MEM_cause_out;
    
    wire [6:0] MEM_WB_cause_in;
    wire [6:0] MEM_WB_cause_out;

    wire [31:0] IF_ID_PC_out;
    wire [31:0] ID_EXE_PC_out;
    wire [31:0] EXE_MEM_PC_out;
    wire [31:0] MEM_WB_PC_out;

    // IF_ID
    assign IF_ID_cause_in = (machine_external_interrupt == 1'b1) ? 7'b0000001 :
                         (machine_software_interrupt == 1'b1) ? 7'b0000010 :
                         (machine_timer_interrupt == 1'b1) ? 7'b0000100 :
                         (instruction_misaligned_address == 1'b1) ? 7'b0001000 : 7'b0000000;
    register #( 
        .size(39)
    ) IF_ID_INT (
        .clk(clk),
        .rst(rst),
        .clr(IF_flush | trap | ID_EX_mret_out), 
        .ld(1'b1),
        .initial_val(39'd0),
        .d_in({IF_PC, IF_ID_cause_in}),
        .d_out({IF_ID_PC_out, IF_ID_cause_out})
    );

    // ID_EXE
    assign ID_EXE_cause_in = (IF_ID_cause_out == 7'b0000000 && illegal_instruction == 1'b1) ? 7'b0010000 : IF_ID_cause_out;
    register #( 
        .size(39)
    ) ID_EXE_INT (
        .clk(clk),
        .rst(rst),
        .clr(trap | ID_EX_mret_out), 
        .ld(1'b1),
        .initial_val(39'd0),
        .d_in({IF_ID_PC_out, ID_EXE_cause_in}),
        .d_out({ID_EXE_PC_out, ID_EXE_cause_out})
    );

    // EXE_MEM
    register #( 
        .size(39)
    ) EXE_MEM_INT (
        .clk(clk),
        .rst(rst),
        .clr(1'b0), 
        .ld(1'b1),
        .initial_val(39'd0),
        .d_in({ID_EXE_PC_out, ID_EXE_cause_out}),
        .d_out({EXE_MEM_PC_out, EXE_MEM_cause_out})
    );

    // MEM_WB
    assign MEM_WB_cause_in = (EXE_MEM_cause_out == 7'b0000000 && load_data_misaligned_address == 1'b1) ? 7'b0100000 :
                             (EXE_MEM_cause_out == 7'b0000000 && store_data_misaligned_address == 1'b1) ? 7'b1000000 : EXE_MEM_cause_out;
    register #( 
        .size(39)
    ) MEM_WB_INT (
        .clk(clk),
        .rst(rst),
        .clr(1'b0), 
        .ld(1'b1),
        .initial_val(39'd0),
        .d_in({EXE_MEM_PC_out, MEM_WB_cause_in}),
        .d_out({MEM_WB_PC_out, MEM_WB_cause_out})
    );

    assign trap_flush = ({|{MEM_WB_cause_out[6:3]}} == 1'b1) ? 1'b1 :
                        (MSTATUS_IN[3] == 1'b1 && MEM_WB_cause_out[0] == 1'b1 && MIE_IN[11] == 1'b1) ? 1'b1 :
                        (MSTATUS_IN[3] == 1'b1 && MEM_WB_cause_out[1] == 1'b1 && MIE_IN[3] == 1'b1) ? 1'b1 :
                        (MSTATUS_IN[3] == 1'b1 && MEM_WB_cause_out[2] == 1'b1 && MIE_IN[7] == 1'b1) ? 1'b1 : 1'b0;

    assign MEPC = MEM_WB_PC_out;
    assign MSTATUS_OUT = ({|{MEM_WB_cause_out[2:0]}} == 1'b1) ? {MSTATUS_IN[31:8], MSTATUS_IN[3], MSTATUS_IN[6:4], 1'b0, MSTATUS_IN[2:0]} : MSTATUS_IN;
    assign MIP_OUT = (MEM_WB_cause_out[2:0] == 3'b001) ? (MIP_IN | {20'b0, 1'b1, 11'b0}) :
                     (MEM_WB_cause_out[2:0] == 3'b010) ? (MIP_IN | {28'b0, 1'b1, 3'b0}) :
                     (MEM_WB_cause_out[2:0] == 3'b100) ? (MIP_IN | {24'b0, 1'b1, 7'b0}) : MIP_IN;

    assign MCAUSE = (MEM_WB_cause_out == 7'b0000001) ? 32'h0000000B:
                    (MEM_WB_cause_out == 7'b0000010) ? 32'h00000003:
                    (MEM_WB_cause_out == 7'b0000100) ? 32'h00000007:
                    (MEM_WB_cause_out == 7'b0001000) ? 32'h00000000:
                    (MEM_WB_cause_out == 7'b0010000) ? 32'h00000002:
                    (MEM_WB_cause_out == 7'b0100000) ? 32'h00000004:
                    (MEM_WB_cause_out == 7'b1000000) ? 32'h00000006: 32'h00000000;

    assign MTVAL = MEM_WB_PC_out;

   
endmodule