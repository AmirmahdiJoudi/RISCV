module CSR (

    input clk,
    input rst,

    input handling_mode,
    input csr_reg_write,  
    input csr_reg_set,
    input csr_reg_clear,    
    
    input [3:0] csr_add,
    input [31:0] csr_wr_data,
    
    output [31:0] csr_rd_data,
    output MIEN,
    output MEIEN,
    output MTIEN,
    output MSIEN

);

    reg [31:0] register_file [0:7];

    assign csr_rd_data = (csr_add[3] == 1'b0) ? register_file[csr_add[2:0]] : 32'd0;   
    assign MIEN = register_file[0][3];
    assign MEIEN = register_file[2][11];
    assign MTIEN = register_file[2][7];
    assign MSIEN = register_file[2][3];

    always @(posedge clk, posedge rst)begin
        if (rst == 1'b1) begin
            register_file[0] <= 32'h00001800; // mstatus
            register_file[1] <= 32'h40000008; // misa
            register_file[2] <= 32'd0; // mie
            register_file[3] <= 32'd1; // mtvec
            register_file[4] <= 32'd0; // mepc
            register_file[5] <= 32'd0; // mcause
            register_file[6] <= 32'd0; // mtval
            register_file[7] <= 32'd0; // mip
        end

        else if (csr_reg_write == 1'b1 && csr_add[3] == 1'b0) begin
            if(csr_add[2:0] == 3'd0)
                register_file[csr_add[2:0]] <= csr_wr_data & 32'h00001988;
            else if(csr_add[2:0] == 3'd1)
                register_file[csr_add[2:0]] <= register_file[csr_add[2:0]];
            else if(csr_add[2:0] == 3'd2)
                register_file[csr_add[2:0]] <= csr_wr_data & 32'h00000888;
            else if(csr_add[2:0] == 3'd3)
                register_file[csr_add[2:0]] <= csr_wr_data & 32'hFFFFFFFD;
            else if(csr_add[2:0] == 3'd4)
                register_file[csr_add[2:0]] <= csr_wr_data;
            else if(csr_add[2:0] == 3'd5)
                register_file[csr_add[2:0]] <= csr_wr_data;
            else if(csr_add[2:0] == 3'd6)
                register_file[csr_add[2:0]] <= csr_wr_data;
            else if(csr_add[2:0] == 3'd7)
                register_file[csr_add[2:0]] <= (handling_mode) ? (csr_wr_data & 32'h00000888) : register_file[csr_add[2:0]] ;
        end

        else if (csr_reg_set == 1'b1 && csr_add[3] == 1'b0) begin
            if(csr_add[2:0] == 3'd0)
                register_file[csr_add[2:0]] <= csr_wr_data | (csr_rd_data & 32'h00001988);
            else if(csr_add[2:0] == 3'd1)
                register_file[csr_add[2:0]] <= register_file[csr_add[2:0]];
            else if(csr_add[2:0] == 3'd2)
                register_file[csr_add[2:0]] <= csr_rd_data | (csr_wr_data & 32'h00000888);
            else if(csr_add[2:0] == 3'd3)
                register_file[csr_add[2:0]] <= csr_rd_data | (csr_wr_data & 32'hFFFFFFFD);
            else if(csr_add[2:0] == 3'd4)
                register_file[csr_add[2:0]] <= csr_rd_data | csr_wr_data;
            else if(csr_add[2:0] == 3'd5)
                register_file[csr_add[2:0]] <= csr_rd_data | csr_wr_data;
            else if(csr_add[2:0] == 3'd6)
                register_file[csr_add[2:0]] <= csr_rd_data | csr_wr_data;
            else if(csr_add[2:0] == 3'd7)
                register_file[csr_add[2:0]] <= (handling_mode) ? (csr_wr_data | (csr_rd_data & 32'h00000888)) : register_file[csr_add[2:0]];
        end

        else if (csr_reg_clear == 1'b1 && csr_add[3] == 1'b0) begin
            if(csr_add[2:0] == 3'd0)
                register_file[csr_add[2:0]] <= ~csr_rd_data & (csr_wr_data & 32'h00001988);
            else if(csr_add[2:0] == 3'd1)
                register_file[csr_add[2:0]] <= register_file[csr_add[2:0]];
            else if(csr_add[2:0] == 3'd2)
                register_file[csr_add[2:0]] <= ~csr_rd_data & (csr_wr_data & 32'h00000888);
            else if(csr_add[2:0] == 3'd3)
                register_file[csr_add[2:0]] <= ~csr_rd_data & (csr_wr_data & 32'hFFFFFFFD);
            else if(csr_add[2:0] == 3'd4)
                register_file[csr_add[2:0]] <= ~csr_rd_data & csr_wr_data;
            else if(csr_add[2:0] == 3'd5)
                register_file[csr_add[2:0]] <= ~csr_rd_data & csr_wr_data;
            else if(csr_add[2:0] == 3'd6)
                register_file[csr_add[2:0]] <= ~csr_rd_data & csr_wr_data;
            else if(csr_add[2:0] == 3'd7)
                register_file[csr_add[2:0]] <= (handling_mode) ? (~csr_rd_data & (csr_wr_data & 32'h00000888)) : register_file[csr_add[2:0]];
        end
    end
    
endmodule