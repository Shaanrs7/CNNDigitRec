// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
// Date        : Wed Nov  1 17:47:01 2017
// Host        : en-ec-ecelinux-01.coecis.cornell.edu running 64-bit Red Hat Enterprise Linux Server release 7.4 (Maipo)
// Command     : write_verilog -force -mode synth_stub
//               /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512_stub.v
// Design      : fifo_32x512
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_1_1,Vivado 2016.2" *)
module fifo_32x512(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[31:0],wr_en,rd_en,dout[31:0],full,empty" */;
  input clk;
  input srst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  output [31:0]dout;
  output full;
  output empty;
endmodule
