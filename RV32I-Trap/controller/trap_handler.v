`define idle 4'b0000
`define mipUpd 4'b0001
`define mtvalUpd 4'b0010
`define mcauseUpd 4'b0011
`define mepcUpd 4'b0100
`define mtvecRd 4'b0101
`define mstatusUpd 4'b0110
`define retEPC 4'b0111
`define retMstatus 4'b1000

module trap_handler(

    input clk,
    input rst,

    input exceptionRaised,
    input [3:0] exceptionSrc,

    input interruptRaised,
    input machineTimerInterrupt,
    input machineSoftwareInterrupt,
    input machineExternalInterrupt,
    input MRET,

    input [31:0] csrOut,

    output reg trap_handler_csr_write,
    output reg [3:0] trap_handler_add,
    output reg [31:0] trap_handler_data,

    output reg trap_handler_add_src,

    output reg trap_handler_data_pre_exc_src,
    output reg trap_handler_data_pc_12_src,
    output reg trap_handler_data_src,

    output reg trap_handler_pc_en,
    output reg trap_flush,
    output reg trap_handler_PC_src

    );

    reg causeEN;
    reg [3:0] causeDT;
    reg [3:0] causeOut;
    wire [31:0] trap_jump_add;

    always @(posedge clk, posedge rst) begin
        if(rst)
            causeOut <= 4'b0;
        else if (causeEN)
            causeOut <= causeDT;
    end

    adder #(
        .size(32)
    ) pc_trap_jump (
        .a({2'b00, csrOut[31:2]}),
        .b({28'd0, causeOut} << 2),
        .cin(1'b0),
        .cout(),
        .sum(trap_jump_add)
    );

    reg [3:0] p_state;
    reg [3:0] n_state;

    always @(posedge clk, posedge rst) begin
        if(rst)
            p_state <= `idle;
        else
            p_state <= n_state;
    end

    always @(p_state, exceptionRaised, interruptRaised, csrOut, causeOut, MRET)
    begin
        n_state = `idle;
        case(p_state)
            `idle: n_state = (exceptionRaised == 1'b1) ? `mtvalUpd : 
                            (interruptRaised == 1'b1) ? `mipUpd : 
                            (MRET == 1'b1) ? `retEPC : n_state;
            `mipUpd: n_state = `mcauseUpd;
            `mtvalUpd: n_state = `mcauseUpd;
            `mcauseUpd: n_state = `mepcUpd;
            `mepcUpd: n_state = `mtvecRd;
            `mtvecRd: n_state = `mstatusUpd;
            `mstatusUpd: n_state = `idle;
            `retEPC: n_state = `retMstatus;
            `retMstatus: n_state = `idle;
            default: n_state <= `idle;
        endcase
    end

    always @(p_state, exceptionRaised, interruptRaised, csrOut, causeOut, MRET)
    begin
        {causeEN, causeDT} = 5'b0_0000;
        {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b0_0_0_0_0_1_0_0;
        trap_handler_add = 4'b0000;
        trap_handler_data = 32'd0;
        case(p_state)
            `idle: begin
                causeEN = (exceptionRaised | interruptRaised);
                causeDT = (interruptRaised && machineExternalInterrupt) ? 4'hB :
                          (interruptRaised && machineSoftwareInterrupt) ? 4'h3 :
                          (interruptRaised && machineTimerInterrupt) ? 4'h7 :
                          (exceptionRaised && exceptionSrc == 4'b0001) ? 4'h0 :
                          (exceptionRaised && exceptionSrc == 4'b0010) ? 4'h2 :
                          (exceptionRaised && exceptionSrc == 4'b1000) ? 4'h4 :
                          (exceptionRaised && exceptionSrc == 4'b0100) ? 4'h6 : 4'h0;
                trap_flush = (exceptionRaised | interruptRaised);
                trap_handler_pc_en = !(exceptionRaised | interruptRaised);
            end
            `mipUpd: begin
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b1_1_0_0_1_0_0_1;
                trap_handler_add = 4'b0111;
                trap_handler_data = (causeOut == 4'hB) ? 32'h00000800 :
                                    (causeOut == 4'h3) ? 32'h00000008 :
                                    (causeOut == 4'h7) ? 32'h00000080 : 32'd0;
            end
            `mtvalUpd: begin
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b1_1_1_0_0_0_0_1;
                trap_handler_add = 4'b0110;
            end
            `mcauseUpd: begin
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b1_1_0_0_1_0_0_1;
                trap_handler_add = 4'b0101;
                trap_handler_data = (causeOut[1:0] == 2'b11) ? {28'h8000000, causeOut} :{28'h0000000, causeOut} ;
            end
            `mepcUpd: begin
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b1_1_0_1_0_0_0_1;
                trap_handler_add = 4'b0100;
            end
            `mtvecRd: begin
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b0_1_0_0_0_1_1_1;
                trap_handler_add = 4'b0011;
                trap_handler_data = (csrOut[1:0] == 2'b00) ? csrOut : 
                                    (csrOut[1:0] == 2'b01) ? trap_jump_add :
                                    32'd0;
            end
            `mstatusUpd: begin
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b1_1_0_0_1_0_0_0;
                trap_handler_add = 4'b0000;
                trap_handler_data = (causeOut[1:0] == 2'b11) ? 32'h00001980 : 32'd0;
            end
            `retEPC: begin
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b0_1_0_0_0_1_1_1;
                trap_handler_add = 4'b0100;
                trap_handler_data = csrOut;
            end
            `retMstatus: begin
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b1_1_0_0_1_0_0_0;
                trap_handler_add = 4'b0000;
                trap_handler_data = (csrOut[7] == 1'b1) ? 32'h00001988 : 32'h00001900;
            end
            default: begin
                {causeEN, causeDT} = 5'b0_0000;
                {trap_handler_csr_write, trap_handler_add_src, trap_handler_data_pre_exc_src, trap_handler_data_pc_12_src, trap_handler_data_src, trap_handler_pc_en, trap_handler_PC_src, trap_flush} = 8'b0_0_0_0_0_1_0_0;
                trap_handler_add = 4'b0000;
                trap_handler_data = 32'd0;
            end
        endcase
    end

endmodule
