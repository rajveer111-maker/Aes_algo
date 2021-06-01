`timescale 1ns / 1ps

module AES_TOP(clk,finalout);
    input clk;
    output [7:0] finalout;

wire [127:0] tempout;

aescipher u1(.clk(clk),.datain(128'h dda97ca4864cdfe06eaf70a0ec0d7191),.key(128'h 2b7e151628aed2a6abf7158809cf4f3c),.dataout(tempout));

assign finalout = tempout[127:120];

endmodule
