module imm_gen (
    input [11:0] imm_itype,
    input [19:0] imm_jtype,
    input [11:0] imm_stype,
    input [11:0] imm_btype,
    input [19:0] imm_utype,
    input [4:0] shamt,
    input [4:0] rs1, // edited

    input [2:0] typ,
    output [31:0] d_out

);

    assign d_out = (typ == 3'b001) ? {{20{imm_itype[11]}}, imm_itype} :
                   (typ == 3'b010) ? {{20{imm_stype[11]}}, imm_stype} :
                   (typ == 3'b011) ? {{19{imm_btype[11]}}, imm_btype, 1'b0} :
                   (typ == 3'b100) ? {imm_utype, {12'd0}} :
                   (typ == 3'b101) ? {{11{imm_jtype[19]}}, imm_jtype, 1'b0} :
                   (typ == 3'b110) ? {27'd0, shamt} :
                   (typ == 3'b111) ? {27'd0, rs1} : // edited
                   32'd0;

endmodule