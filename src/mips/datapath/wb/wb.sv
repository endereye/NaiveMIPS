`timescale 1ns/1ps
`include "defines.vh"

module wb(
    input  logic `W_OPER oper        ,
    input  logic `W_REGF rd_regf     ,
    input  logic `W_DATA rd_data_a   ,
    input  logic `W_DATA rd_data_b   ,
    input  logic `W_ADDR pc          ,
    output logic `W_DATA rd_data     ,
    output logic `W_REGF rd_regf_out);

    regsrc regsrc_(oper, rd_regf, rd_data_a, rd_data_b, pc, rd_data, rd_regf_out);

endmodule

