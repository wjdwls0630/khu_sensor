// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module lpf (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        low_pass_filter_x_data_address0,
        low_pass_filter_x_data_ce0,
        low_pass_filter_x_data_we0,
        low_pass_filter_x_data_d0,
        low_pass_filter_x_data_q0,
        low_pass_filter_y_data_address0,
        low_pass_filter_y_data_ce0,
        low_pass_filter_y_data_we0,
        low_pass_filter_y_data_d0,
        low_pass_filter_y_data_q0,
        a,
        ap_return
);

parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] low_pass_filter_x_data_address0;
output   low_pass_filter_x_data_ce0;
output   low_pass_filter_x_data_we0;
output  [31:0] low_pass_filter_x_data_d0;
input  [31:0] low_pass_filter_x_data_q0;
output  [1:0] low_pass_filter_y_data_address0;
output   low_pass_filter_y_data_ce0;
output   low_pass_filter_y_data_we0;
output  [31:0] low_pass_filter_y_data_d0;
input  [31:0] low_pass_filter_y_data_q0;
input  [31:0] a;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[1:0] low_pass_filter_x_data_address0;
reg low_pass_filter_x_data_ce0;
reg low_pass_filter_x_data_we0;
reg[31:0] low_pass_filter_x_data_d0;
reg[1:0] low_pass_filter_y_data_address0;
reg low_pass_filter_y_data_ce0;
reg low_pass_filter_y_data_we0;
reg[31:0] low_pass_filter_y_data_d0;
reg[31:0] ap_return;

(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] grp_fu_161_p2;
reg   [1:0] reg_128;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond_fu_229_p2;
reg   [1:0] reg_150;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_211_p2;
wire   [31:0] grp_fu_187_p2;
reg   [31:0] reg_204;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
wire   [31:0] grp_fu_192_p2;
wire    ap_CS_fsm_state6;
wire   [0:0] cond_fu_241_p2;
reg   [0:0] cond_reg_300;
wire   [31:0] low_pass_filter_Acoe_fu_247_p3;
wire    ap_CS_fsm_state8;
reg   [31:0] tmp_9_reg_336;
wire    ap_CS_fsm_state11;
wire   [31:0] grp_fu_199_p2;
reg   [31:0] tmp_s_reg_341;
wire    ap_CS_fsm_state3;
reg   [31:0] tmp_7_reg_140;
wire    ap_CS_fsm_state22;
wire   [63:0] tmp_4_fu_217_p1;
wire   [63:0] tmp_5_fu_223_p1;
wire   [63:0] tmp_8_fu_235_p1;
reg   [1:0] grp_fu_161_p0;
reg  signed [1:0] grp_fu_161_p1;
reg   [31:0] grp_fu_187_p0;
reg   [31:0] grp_fu_187_p1;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state17;
reg   [31:0] grp_fu_192_p0;
reg   [31:0] grp_fu_192_p1;
wire   [31:0] grp_fu_199_p0;
reg   [1:0] grp_fu_187_opcode;
reg   [31:0] ap_return_preg;
reg   [21:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 22'd1;
#0 ap_return_preg = 32'd0;
end

lpf_begin_faddfsubkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
lpf_begin_faddfsubkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_187_p0),
    .din1(grp_fu_187_p1),
    .opcode(grp_fu_187_opcode),
    .ce(1'b1),
    .dout(grp_fu_187_p2)
);

lpf_begin_fmul_32cud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
lpf_begin_fmul_32cud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_192_p0),
    .din1(grp_fu_192_p1),
    .ce(1'b1),
    .dout(grp_fu_192_p2)
);

lpf_begin_fmul_32cud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
lpf_begin_fmul_32cud_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_199_p0),
    .din1(low_pass_filter_y_data_q0),
    .ce(1'b1),
    .dout(grp_fu_199_p2)
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
        ap_return_preg <= 32'd0;
    end else begin
        if (((exitcond_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_return_preg <= tmp_7_reg_140;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        reg_128 <= reg_150;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        reg_128 <= 2'd2;
    end else if (((exitcond_fu_229_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        reg_128 <= grp_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_150 <= reg_128;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        reg_150 <= 2'd1;
    end else if (((tmp_fu_211_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        reg_150 <= grp_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmp_7_reg_140 <= reg_204;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_7_reg_140 <= grp_fu_192_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_229_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        cond_reg_300 <= cond_fu_241_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_204 <= grp_fu_187_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_9_reg_336 <= grp_fu_192_p2;
        tmp_s_reg_341 <= grp_fu_199_p2;
    end
end

always @ (*) begin
    if ((((exitcond_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((exitcond_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_return = tmp_7_reg_140;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_161_p0 = reg_150;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_161_p0 = reg_128;
    end else begin
        grp_fu_161_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_161_p1 = 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_161_p1 = 2'd3;
    end else begin
        grp_fu_161_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_187_opcode = 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_187_opcode = 2'd0;
    end else begin
        grp_fu_187_opcode = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_187_p0 = tmp_7_reg_140;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_187_p0 = tmp_9_reg_336;
    end else begin
        grp_fu_187_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_187_p1 = reg_204;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_187_p1 = tmp_s_reg_341;
    end else begin
        grp_fu_187_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_192_p0 = low_pass_filter_Acoe_fu_247_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_192_p0 = a;
    end else begin
        grp_fu_192_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_192_p1 = low_pass_filter_x_data_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_192_p1 = 32'd1012600047;
    end else begin
        grp_fu_192_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        low_pass_filter_x_data_address0 = tmp_8_fu_235_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        low_pass_filter_x_data_address0 = tmp_5_fu_223_p1;
    end else if (((tmp_fu_211_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        low_pass_filter_x_data_address0 = 64'd0;
    end else if (((tmp_fu_211_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        low_pass_filter_x_data_address0 = tmp_4_fu_217_p1;
    end else begin
        low_pass_filter_x_data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((tmp_fu_211_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_fu_211_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        low_pass_filter_x_data_ce0 = 1'b1;
    end else begin
        low_pass_filter_x_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        low_pass_filter_x_data_d0 = low_pass_filter_x_data_q0;
    end else if (((tmp_fu_211_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        low_pass_filter_x_data_d0 = a;
    end else begin
        low_pass_filter_x_data_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((tmp_fu_211_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        low_pass_filter_x_data_we0 = 1'b1;
    end else begin
        low_pass_filter_x_data_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        low_pass_filter_y_data_address0 = tmp_8_fu_235_p1;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state6))) begin
        low_pass_filter_y_data_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        low_pass_filter_y_data_address0 = tmp_5_fu_223_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        low_pass_filter_y_data_address0 = tmp_4_fu_217_p1;
    end else begin
        low_pass_filter_y_data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        low_pass_filter_y_data_ce0 = 1'b1;
    end else begin
        low_pass_filter_y_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        low_pass_filter_y_data_d0 = reg_204;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        low_pass_filter_y_data_d0 = grp_fu_192_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        low_pass_filter_y_data_d0 = low_pass_filter_y_data_q0;
    end else begin
        low_pass_filter_y_data_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        low_pass_filter_y_data_we0 = 1'b1;
    end else begin
        low_pass_filter_y_data_we0 = 1'b0;
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
            if (((tmp_fu_211_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign cond_fu_241_p2 = ((reg_150 == 2'd1) ? 1'b1 : 1'b0);

assign exitcond_fu_229_p2 = ((reg_150 == 2'd3) ? 1'b1 : 1'b0);

assign grp_fu_161_p2 = ($signed(grp_fu_161_p0) + $signed(grp_fu_161_p1));

assign grp_fu_199_p0 = ((cond_reg_300[0:0] === 1'b1) ? 32'd3218268152 : 32'd1060335097);

assign low_pass_filter_Acoe_fu_247_p3 = ((cond_reg_300[0:0] === 1'b1) ? 32'd1020988655 : 32'd1012600047);

assign tmp_4_fu_217_p1 = grp_fu_161_p2;

assign tmp_5_fu_223_p1 = reg_128;

assign tmp_8_fu_235_p1 = reg_150;

assign tmp_fu_211_p2 = ((reg_128 == 2'd0) ? 1'b1 : 1'b0);

endmodule //lpf
