`timescale 1ns / 1ps

module rounndlast(clk,rc,rin,keylastin,cipherout);
input clk;
input [3:0]rc;
input [127:0]rin;
input [127:0]keylastin;
output [127:0]cipherout;

wire [127:0] sb,sr,keyout;

KeyGeneration t0(rc,keylastin,keyout);

shiftrow t1(rin,sr);
subbytes t2(sr,sb);
assign cipherout= keyout^sb;

endmodule
