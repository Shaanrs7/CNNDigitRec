// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dut,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.641875,HLS_SYN_LAT=119105,HLS_SYN_TPT=none,HLS_SYN_MEM=86,HLS_SYN_DSP=79,HLS_SYN_FF=4374,HLS_SYN_LUT=6101}" *)

module dut (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        strm_in_V_V_dout,
        strm_in_V_V_empty_n,
        strm_in_V_V_read,
        strm_out_V_V_din,
        strm_out_V_V_full_n,
        strm_out_V_V_write
);

parameter    ap_ST_st1_fsm_0 = 5'b1;
parameter    ap_ST_st2_fsm_1 = 5'b10;
parameter    ap_ST_st3_fsm_2 = 5'b100;
parameter    ap_ST_st4_fsm_3 = 5'b1000;
parameter    ap_ST_st5_fsm_4 = 5'b10000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv10_240 = 10'b1001000000;
parameter    ap_const_lv10_1 = 10'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] strm_in_V_V_dout;
input   strm_in_V_V_empty_n;
output   strm_in_V_V_read;
output  [31:0] strm_out_V_V_din;
input   strm_out_V_V_full_n;
output   strm_out_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg strm_in_V_V_read;
reg strm_out_V_V_write;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
reg    strm_in_V_V_blk_n;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_44;
reg    strm_out_V_V_blk_n;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_53;
reg   [31:0] tmp_V_2_reg_149;
reg    ap_sig_59;
wire   [48:0] p_Result_s_fu_124_p3;
reg   [48:0] p_Result_s_reg_154;
wire   [9:0] i_1_fu_138_p2;
reg   [9:0] i_1_reg_162;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_73;
wire   [0:0] exitcond_fu_132_p2;
reg   [9:0] result_address0;
reg    result_ce0;
wire   [31:0] result_q0;
wire    grp_dut_cnn_xcel_fu_106_ap_start;
wire    grp_dut_cnn_xcel_fu_106_ap_done;
wire    grp_dut_cnn_xcel_fu_106_ap_idle;
wire    grp_dut_cnn_xcel_fu_106_ap_ready;
wire   [9:0] grp_dut_cnn_xcel_fu_106_output_V_address0;
wire    grp_dut_cnn_xcel_fu_106_output_V_ce0;
wire    grp_dut_cnn_xcel_fu_106_output_V_we0;
wire   [31:0] grp_dut_cnn_xcel_fu_106_output_V_d0;
reg   [9:0] i_reg_95;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_110;
reg    ap_reg_grp_dut_cnn_xcel_fu_106_ap_start;
wire   [63:0] tmp_fu_144_p1;
wire   [16:0] tmp_44_fu_120_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'b1;
#0 ap_reg_grp_dut_cnn_xcel_fu_106_ap_start = 1'b0;
end

dut_result #(
    .DataWidth( 32 ),
    .AddressRange( 576 ),
    .AddressWidth( 10 ))
result_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(result_address0),
    .ce0(result_ce0),
    .we0(grp_dut_cnn_xcel_fu_106_output_V_we0),
    .d0(grp_dut_cnn_xcel_fu_106_output_V_d0),
    .q0(result_q0)
);

dut_cnn_xcel grp_dut_cnn_xcel_fu_106(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dut_cnn_xcel_fu_106_ap_start),
    .ap_done(grp_dut_cnn_xcel_fu_106_ap_done),
    .ap_idle(grp_dut_cnn_xcel_fu_106_ap_idle),
    .ap_ready(grp_dut_cnn_xcel_fu_106_ap_ready),
    .input_V(p_Result_s_reg_154),
    .output_V_address0(grp_dut_cnn_xcel_fu_106_output_V_address0),
    .output_V_ce0(grp_dut_cnn_xcel_fu_106_output_V_ce0),
    .output_V_we0(grp_dut_cnn_xcel_fu_106_output_V_we0),
    .output_V_d0(grp_dut_cnn_xcel_fu_106_output_V_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dut_cnn_xcel_fu_106_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(strm_in_V_V_empty_n == 1'b0))) begin
            ap_reg_grp_dut_cnn_xcel_fu_106_ap_start <= 1'b1;
        end else if ((1'b1 == grp_dut_cnn_xcel_fu_106_ap_ready)) begin
            ap_reg_grp_dut_cnn_xcel_fu_106_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(strm_out_V_V_full_n == 1'b0))) begin
        i_reg_95 <= i_1_reg_162;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_dut_cnn_xcel_fu_106_ap_done))) begin
        i_reg_95 <= ap_const_lv10_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        i_1_reg_162 <= i_1_fu_138_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(strm_in_V_V_empty_n == 1'b0))) begin
        p_Result_s_reg_154 <= p_Result_s_fu_124_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_59)) begin
        tmp_V_2_reg_149 <= strm_in_V_V_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(exitcond_fu_132_p2 == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(exitcond_fu_132_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_44) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_110) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_73) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_53) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        result_address0 = tmp_fu_144_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        result_address0 = grp_dut_cnn_xcel_fu_106_output_V_address0;
    end else begin
        result_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        result_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        result_ce0 = grp_dut_cnn_xcel_fu_106_output_V_ce0;
    end else begin
        result_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        strm_in_V_V_blk_n = strm_in_V_V_empty_n;
    end else begin
        strm_in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_59) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(strm_in_V_V_empty_n == 1'b0)))) begin
        strm_in_V_V_read = 1'b1;
    end else begin
        strm_in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        strm_out_V_V_blk_n = strm_out_V_V_full_n;
    end else begin
        strm_out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(strm_out_V_V_full_n == 1'b0))) begin
        strm_out_V_V_write = 1'b1;
    end else begin
        strm_out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_59) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(strm_in_V_V_empty_n == 1'b0)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == grp_dut_cnn_xcel_fu_106_ap_done)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if (~(exitcond_fu_132_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            if (~(strm_out_V_V_full_n == 1'b0)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_110 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_20 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_44 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_53 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_59 = ((ap_start == 1'b0) | (strm_in_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_73 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign exitcond_fu_132_p2 = ((i_reg_95 == ap_const_lv10_240) ? 1'b1 : 1'b0);

assign grp_dut_cnn_xcel_fu_106_ap_start = ap_reg_grp_dut_cnn_xcel_fu_106_ap_start;

assign i_1_fu_138_p2 = (i_reg_95 + ap_const_lv10_1);

assign p_Result_s_fu_124_p3 = {{tmp_44_fu_120_p1}, {tmp_V_2_reg_149}};

assign strm_out_V_V_din = result_q0;

assign tmp_44_fu_120_p1 = strm_in_V_V_dout[16:0];

assign tmp_fu_144_p1 = i_reg_95;

endmodule //dut
