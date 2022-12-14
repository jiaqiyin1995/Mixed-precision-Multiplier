// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_A_IO_L2_in_inter_trans (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        local_A_address1,
        local_A_ce1,
        local_A_we1,
        local_A_d1,
        fifo_A_A_IO_L2_in_072_dout,
        fifo_A_A_IO_L2_in_072_empty_n,
        fifo_A_A_IO_L2_in_072_read,
        fifo_A_A_IO_L2_in_173_din,
        fifo_A_A_IO_L2_in_173_full_n,
        fifo_A_A_IO_L2_in_173_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] local_A_address1;
output   local_A_ce1;
output   local_A_we1;
output  [255:0] local_A_d1;
input  [255:0] fifo_A_A_IO_L2_in_072_dout;
input   fifo_A_A_IO_L2_in_072_empty_n;
output   fifo_A_A_IO_L2_in_072_read;
output  [255:0] fifo_A_A_IO_L2_in_173_din;
input   fifo_A_A_IO_L2_in_173_full_n;
output   fifo_A_A_IO_L2_in_173_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_A_A_IO_L2_in_072_read;
reg fifo_A_A_IO_L2_in_173_write;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] add_ln870_fu_80_p2;
reg   [1:0] add_ln870_reg_106;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln1049_fu_86_p2;
reg   [0:0] icmp_ln1049_reg_111;
wire   [0:0] icmp_ln1069_fu_74_p2;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_done;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_idle;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_ready;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_072_read;
wire   [255:0] grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_173_din;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_173_write;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_done;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_idle;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_ready;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_fifo_A_A_IO_L2_in_072_read;
wire   [2:0] grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_address1;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_ce1;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_we1;
wire   [255:0] grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_d1;
reg    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start_reg;
reg   [1:0] c3_V_fu_46;
reg    ap_block_state3_on_subcall_done;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start_reg = 1'b0;
#0 grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start_reg = 1'b0;
end

kernel0_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3 grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start),
    .ap_done(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_done),
    .ap_idle(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_idle),
    .ap_ready(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_ready),
    .fifo_A_A_IO_L2_in_072_dout(fifo_A_A_IO_L2_in_072_dout),
    .fifo_A_A_IO_L2_in_072_empty_n(fifo_A_A_IO_L2_in_072_empty_n),
    .fifo_A_A_IO_L2_in_072_read(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_072_read),
    .fifo_A_A_IO_L2_in_173_din(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_173_din),
    .fifo_A_A_IO_L2_in_173_full_n(fifo_A_A_IO_L2_in_173_full_n),
    .fifo_A_A_IO_L2_in_173_write(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_173_write)
);

kernel0_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2 grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start),
    .ap_done(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_done),
    .ap_idle(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_idle),
    .ap_ready(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_ready),
    .fifo_A_A_IO_L2_in_072_dout(fifo_A_A_IO_L2_in_072_dout),
    .fifo_A_A_IO_L2_in_072_empty_n(fifo_A_A_IO_L2_in_072_empty_n),
    .fifo_A_A_IO_L2_in_072_read(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_fifo_A_A_IO_L2_in_072_read),
    .local_A_address1(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_address1),
    .local_A_ce1(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_ce1),
    .local_A_we1(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_we1),
    .local_A_d1(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_d1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1069_fu_74_p2 == 1'd0) & (icmp_ln1049_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_ready == 1'b1)) begin
            grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1069_fu_74_p2 == 1'd0) & (icmp_ln1049_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start_reg <= 1'b1;
        end else if ((grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_ready == 1'b1)) begin
            grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        c3_V_fu_46 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
        c3_V_fu_46 <= add_ln870_reg_106;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln870_reg_106 <= add_ln870_fu_80_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1069_fu_74_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln1049_reg_111 <= icmp_ln1049_fu_86_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state3_on_subcall_done)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln1069_fu_74_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1069_fu_74_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((icmp_ln1049_reg_111 == 1'd1)) begin
            fifo_A_A_IO_L2_in_072_read = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_fifo_A_A_IO_L2_in_072_read;
        end else if ((icmp_ln1049_reg_111 == 1'd0)) begin
            fifo_A_A_IO_L2_in_072_read = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_072_read;
        end else begin
            fifo_A_A_IO_L2_in_072_read = 1'b0;
        end
    end else begin
        fifo_A_A_IO_L2_in_072_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1049_reg_111 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        fifo_A_A_IO_L2_in_173_write = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_173_write;
    end else begin
        fifo_A_A_IO_L2_in_173_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln1069_fu_74_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln870_fu_80_p2 = (c3_V_fu_46 + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state3_on_subcall_done = (((grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_done == 1'b0) & (icmp_ln1049_reg_111 == 1'd1)) | ((grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_done == 1'b0) & (icmp_ln1049_reg_111 == 1'd0)));
end

assign fifo_A_A_IO_L2_in_173_din = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_fifo_A_A_IO_L2_in_173_din;

assign grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_ap_start_reg;

assign grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3_fu_50_ap_start_reg;

assign icmp_ln1049_fu_86_p2 = ((c3_V_fu_46 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln1069_fu_74_p2 = ((c3_V_fu_46 == 2'd2) ? 1'b1 : 1'b0);

assign local_A_address1 = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_address1;

assign local_A_ce1 = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_ce1;

assign local_A_d1 = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_d1;

assign local_A_we1 = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2_fu_58_local_A_we1;

endmodule //kernel0_A_IO_L2_in_inter_trans
