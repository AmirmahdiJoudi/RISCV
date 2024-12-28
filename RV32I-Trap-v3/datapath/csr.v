module csr (
    input clk,
    input rst,

    input set,
    input clr,
    input write,
    input read,
    input trap,
    input mret,

    input [11:0] adr,
    input [31:0] din,
    output [31:0] dout,

    input [31:0] mepc,
    
    input [31:0] mstatus_in,
    output [31:0] mstatus_out,

    input [31:0] mip_in,
    output [31:0] mip_out,
    output [31:0] mie_out,

    input [31:0] mcause_in,
    output [31:0] mcause_out,

    input [31:0] mtval

);

    // mstatus 300
    // misa 301
    // mie 304
    // mtvec 305
    // mepc 341
    // mcause 342
    // mtval 343
    // mip 344

    reg [31:0] csr_reg[0:4095];

    always @ (posedge clk, posedge rst) begin
        if(rst) begin
            csr_reg[12'h300] <= 32'h00001800; 
            csr_reg[12'h301] <= 32'h50000008;
            csr_reg[12'h304] <= 32'h00000000;
            csr_reg[12'h305] <= 32'h00000001;
            csr_reg[12'h341] <= 32'h00000000;
            csr_reg[12'h342] <= 32'h00000000;
            csr_reg[12'h343] <= 32'h00000000;
            csr_reg[12'h344] <= 32'h00000000;
        end
        else if(clr) begin
            if(adr == 12'h300)
                {csr_reg[12'h300][12:11], csr_reg[12'h300][7], csr_reg[12'h300][3]} <= (~{din[12:11], din[7], din[3]}) & ({csr_reg[12'h300][12:11], csr_reg[12'h300][7], csr_reg[12'h300][3]});
            else if(adr == 12'h301)
                csr_reg[12'h301] <= csr_reg[12'h301];
            else if(adr == 12'h304)
                {csr_reg[12'h304][11], csr_reg[12'h304][7], csr_reg[12'h304][3]} <= (~{din[11], din[7], din[3]}) & ({csr_reg[12'h304][11], csr_reg[12'h304][7], csr_reg[12'h304][3]});
            else if(adr == 12'h305)
                csr_reg[12'h305] <= (~din) & csr_reg[12'h305];
            else if(adr == 12'h341)
                csr_reg[12'h341] <= (~din) & csr_reg[12'h341];
            else if(adr == 12'h342)
                csr_reg[12'h342] <= (~din) & csr_reg[12'h342];
            else if(adr == 12'h343)
                csr_reg[12'h343] <= (~din) & csr_reg[12'h343];
            else if(adr == 12'h344)
                {csr_reg[12'h344][11], csr_reg[12'h344][7], csr_reg[12'h344][3]} <= (~{din[11], din[7], din[3]}) & ({csr_reg[12'h344][11], csr_reg[12'h344][7], csr_reg[12'h344][3]});        
            else 
                csr_reg[adr] <= (~din) & csr_reg[adr]; 
        end
        else if(set) begin
            if(adr == 12'h300)
                {csr_reg[12'h300][12:11], csr_reg[12'h300][7], csr_reg[12'h300][3]} <= ({din[12:11], din[7], din[3]}) | ({csr_reg[12'h300][12:11], csr_reg[12'h300][7], csr_reg[12'h300][3]});
            else if(adr == 12'h301)
                csr_reg[12'h301] <= csr_reg[12'h301];
            else if(adr == 12'h304)
                {csr_reg[12'h304][11], csr_reg[12'h304][7], csr_reg[12'h304][3]} <= ({din[11], din[7], din[3]}) | ({csr_reg[12'h304][11], csr_reg[12'h304][7], csr_reg[12'h304][3]});
            else if(adr == 12'h305)
                csr_reg[12'h305] <= (din) | csr_reg[12'h305];
            else if(adr == 12'h341)
                csr_reg[12'h341] <= (din) | csr_reg[12'h341];
            else if(adr == 12'h342)
                csr_reg[12'h342] <= (din) | csr_reg[12'h342];
            else if(adr == 12'h343)
                csr_reg[12'h343] <= (din) | csr_reg[12'h343];
            else if(adr == 12'h344)
                {csr_reg[12'h344][11], csr_reg[12'h344][7], csr_reg[12'h344][3]} <= ({din[11], din[7], din[3]}) | ({csr_reg[12'h344][11], csr_reg[12'h344][7], csr_reg[12'h344][3]});        
            else 
                csr_reg[adr] <= (din) | csr_reg[adr]; 
        end
        else if(write) begin
            if(adr == 12'h300)
                {csr_reg[12'h300][12:11], csr_reg[12'h300][7], csr_reg[12'h300][3]} <= ({din[12:11], din[7], din[3]});
            else if(adr == 12'h301)
                csr_reg[12'h301] <= csr_reg[12'h301];
            else if(adr == 12'h304)
                {csr_reg[12'h304][11], csr_reg[12'h304][7], csr_reg[12'h304][3]} <= ({din[11], din[7], din[3]});
            else if(adr == 12'h305)
                csr_reg[12'h305] <= (din);
            else if(adr == 12'h341)
                csr_reg[12'h341] <= (din);
            else if(adr == 12'h342)
                csr_reg[12'h342] <= (din);
            else if(adr == 12'h343)
                csr_reg[12'h343] <= (din);
            else if(adr == 12'h344)
                {csr_reg[12'h344][11], csr_reg[12'h344][7], csr_reg[12'h344][3]} <= ({din[11], din[7], din[3]});        
            else 
                csr_reg[adr] <= (din); 
        end
        else if(trap) begin
            csr_reg[12'h341] <= mepc;
            csr_reg[12'h300] <= mstatus_in;
            csr_reg[12'h344] <= mip_in;
            csr_reg[12'h342] <= mcause_in;
            csr_reg[12'h343] <= mtval;
        end
        else if(mret) begin
            csr_reg[12'h341] <= 32'd0;
            csr_reg[12'h300] <= {csr_reg[12'h300][31:8], 1'b0, csr_reg[12'h300][6:4], csr_reg[12'h300][7], csr_reg[12'h300][2:0]};
            csr_reg[12'h344] <= csr_reg[12'h344] & (~32'h00000888);
            csr_reg[12'h342] <= 32'd0;
            csr_reg[12'h343] <= 32'd0;
        end
    end
    
    assign dout = (trap == 1'b1) ? {2'b00, csr_reg[12'h305][31:2]} : 
                  (mret == 1'b1) ? csr_reg[12'h341] : 
                  (read == 1'b1) ? csr_reg[adr] : 32'd0;
    assign mstatus_out = csr_reg[12'h300];
    assign mip_out = csr_reg[12'h344];
    assign mie_out = csr_reg[12'h304];

    assign mcause_out = (csr_reg[12'h305][1:0]==2'b00) ? {mcause_in} : 
                        (csr_reg[12'h305][1:0]==2'b01) ? {mcause_in[29:0], 2'b00} : 32'd0;

endmodule