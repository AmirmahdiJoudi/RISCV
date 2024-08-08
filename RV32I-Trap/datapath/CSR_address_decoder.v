module CSR_address_decoder (

    input [11:0] csr_add_inst,
    output [3:0] csr_add

);

    assign csr_add = (csr_add_inst == 12'h300) ? 4'd0 : // mstatus
                     (csr_add_inst == 12'h301) ? 4'd1 : // misa
                     (csr_add_inst == 12'h304) ? 4'd2 : // mie
                     (csr_add_inst == 12'h305) ? 4'd3 : // mtvec
                     (csr_add_inst == 12'h341) ? 4'd4 : // mepc
                     (csr_add_inst == 12'h342) ? 4'd5 : // mcause
                     (csr_add_inst == 12'h343) ? 4'd6 : // mtval
                     (csr_add_inst == 12'h344) ? 4'd7 : // mip 
                     4'd8 ;

endmodule
