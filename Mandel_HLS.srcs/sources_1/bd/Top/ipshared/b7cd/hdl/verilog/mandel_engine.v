// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mandel_engine,hls_ip_2017_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.720000,HLS_SYN_LAT=3086,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=11,HLS_SYN_FF=1238,HLS_SYN_LUT=2172}" *)

module mandel_engine (
        ap_clk,
        ap_rst_n,
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 25'd1;
parameter    ap_ST_fsm_state2 = 25'd2;
parameter    ap_ST_fsm_state3 = 25'd4;
parameter    ap_ST_fsm_state4 = 25'd8;
parameter    ap_ST_fsm_state5 = 25'd16;
parameter    ap_ST_fsm_state6 = 25'd32;
parameter    ap_ST_fsm_state7 = 25'd64;
parameter    ap_ST_fsm_state8 = 25'd128;
parameter    ap_ST_fsm_state9 = 25'd256;
parameter    ap_ST_fsm_state10 = 25'd512;
parameter    ap_ST_fsm_state11 = 25'd1024;
parameter    ap_ST_fsm_state12 = 25'd2048;
parameter    ap_ST_fsm_state13 = 25'd4096;
parameter    ap_ST_fsm_state14 = 25'd8192;
parameter    ap_ST_fsm_state15 = 25'd16384;
parameter    ap_ST_fsm_state16 = 25'd32768;
parameter    ap_ST_fsm_state17 = 25'd65536;
parameter    ap_ST_fsm_state18 = 25'd131072;
parameter    ap_ST_fsm_state19 = 25'd262144;
parameter    ap_ST_fsm_state20 = 25'd524288;
parameter    ap_ST_fsm_state21 = 25'd1048576;
parameter    ap_ST_fsm_state22 = 25'd2097152;
parameter    ap_ST_fsm_state23 = 25'd4194304;
parameter    ap_ST_fsm_state24 = 25'd8388608;
parameter    ap_ST_fsm_state25 = 25'd16777216;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
output   interrupt;

reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] pr;
wire   [31:0] pi;
wire   [31:0] ap_return;
wire   [31:0] grp_fu_100_p2;
reg   [31:0] reg_124;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state19;
wire   [31:0] grp_fu_106_p2;
reg   [31:0] reg_129;
wire   [31:0] grp_fu_96_p2;
reg   [31:0] reg_134;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] pi_read_reg_199;
reg   [31:0] pr_read_reg_204;
wire   [0:0] tmp_2_fu_142_p2;
reg   [0:0] tmp_2_reg_209;
wire    ap_CS_fsm_state2;
wire   [7:0] iterations_1_fu_148_p2;
reg   [7:0] iterations_1_reg_213;
wire   [31:0] grp_fu_112_p2;
reg   [31:0] tmp_7_reg_218;
reg   [31:0] tmp_8_reg_223;
wire    ap_CS_fsm_state9;
reg   [31:0] newIm_reg_228;
wire    ap_CS_fsm_state14;
reg   [31:0] tmp_6_reg_235;
wire    ap_CS_fsm_state24;
reg   [31:0] oldIm_reg_60;
wire    ap_CS_fsm_state25;
wire   [0:0] tmp_12_fu_189_p2;
reg   [31:0] oldRe_reg_72;
reg   [7:0] iterations_reg_84;
reg   [31:0] grp_fu_96_p0;
reg   [31:0] grp_fu_96_p1;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] grp_fu_100_p0;
reg   [31:0] grp_fu_100_p1;
wire    ap_CS_fsm_state16;
reg   [31:0] grp_fu_106_p0;
reg   [31:0] grp_fu_106_p1;
wire   [31:0] tmp_6_to_int_fu_154_p1;
wire   [7:0] tmp_fu_157_p4;
wire   [22:0] tmp_9_fu_167_p1;
wire   [0:0] notrhs_fu_177_p2;
wire   [0:0] notlhs_fu_171_p2;
wire   [0:0] tmp_10_fu_183_p2;
wire   [0:0] tmp_11_fu_119_p2;
reg   [1:0] grp_fu_96_opcode;
reg   [24:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 25'd1;
end

mandel_engine_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
mandel_engine_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_return(ap_return),
    .pr(pr),
    .pi(pi)
);

mandel_engine_fadbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mandel_engine_fadbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_96_p0),
    .din1(grp_fu_96_p1),
    .opcode(grp_fu_96_opcode),
    .ce(1'b1),
    .dout(grp_fu_96_p2)
);

mandel_engine_fmucud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mandel_engine_fmucud_U2(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_100_p0),
    .din1(grp_fu_100_p1),
    .ce(1'b1),
    .dout(grp_fu_100_p2)
);

mandel_engine_fmucud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mandel_engine_fmucud_U3(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_106_p0),
    .din1(grp_fu_106_p1),
    .ce(1'b1),
    .dout(grp_fu_106_p2)
);

mandel_engine_fmucud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mandel_engine_fmucud_U4(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(oldRe_reg_72),
    .din1(32'd1073741824),
    .ce(1'b1),
    .dout(grp_fu_112_p2)
);

mandel_engine_fcmdEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
mandel_engine_fcmdEe_U5(
    .din0(tmp_6_reg_235),
    .din1(32'd1082130432),
    .opcode(5'd2),
    .dout(tmp_11_fu_119_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (tmp_12_fu_189_p2 == 1'd0) & (tmp_2_reg_209 == 1'd0))) begin
        iterations_reg_84 <= iterations_1_reg_213;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        iterations_reg_84 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (tmp_12_fu_189_p2 == 1'd0) & (tmp_2_reg_209 == 1'd0))) begin
        oldIm_reg_60 <= newIm_reg_228;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        oldIm_reg_60 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (tmp_12_fu_189_p2 == 1'd0) & (tmp_2_reg_209 == 1'd0))) begin
        oldRe_reg_72 <= reg_134;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        oldRe_reg_72 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        iterations_1_reg_213 <= iterations_1_fu_148_p2;
        tmp_2_reg_209 <= tmp_2_fu_142_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        newIm_reg_228 <= grp_fu_96_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        pi_read_reg_199 <= pi;
        pr_read_reg_204 <= pr;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_124 <= grp_fu_100_p2;
        reg_129 <= grp_fu_106_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_134 <= grp_fu_96_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        tmp_6_reg_235 <= grp_fu_96_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_7_reg_218 <= grp_fu_112_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_8_reg_223 <= grp_fu_100_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) & ((tmp_12_fu_189_p2 == 1'd1) | (tmp_2_reg_209 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state25) & ((tmp_12_fu_189_p2 == 1'd1) | (tmp_2_reg_209 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_100_p0 = reg_134;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_100_p0 = tmp_7_reg_218;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_100_p0 = oldRe_reg_72;
    end else begin
        grp_fu_100_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_100_p1 = reg_134;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_100_p1 = oldIm_reg_60;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_100_p1 = oldRe_reg_72;
    end else begin
        grp_fu_100_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_106_p0 = newIm_reg_228;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_106_p0 = oldIm_reg_60;
    end else begin
        grp_fu_106_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_106_p1 = newIm_reg_228;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_106_p1 = oldIm_reg_60;
    end else begin
        grp_fu_106_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_96_opcode = 2'd1;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_96_opcode = 2'd0;
    end else begin
        grp_fu_96_opcode = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_96_p0 = reg_134;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_96_p0 = tmp_8_reg_223;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_96_p0 = reg_124;
    end else begin
        grp_fu_96_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_96_p1 = pr_read_reg_204;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_96_p1 = pi_read_reg_199;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_96_p1 = reg_129;
    end else begin
        grp_fu_96_p1 = 'bx;
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_142_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
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
            ap_NS_fsm = ap_ST_fsm_state8;
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
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((1'b1 == ap_CS_fsm_state25) & ((tmp_12_fu_189_p2 == 1'd1) | (tmp_2_reg_209 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = iterations_reg_84;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign iterations_1_fu_148_p2 = (iterations_reg_84 + 8'd1);

assign notlhs_fu_171_p2 = ((tmp_fu_157_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs_fu_177_p2 = ((tmp_9_fu_167_p1 == 23'd0) ? 1'b1 : 1'b0);

assign tmp_10_fu_183_p2 = (notrhs_fu_177_p2 | notlhs_fu_171_p2);

assign tmp_12_fu_189_p2 = (tmp_11_fu_119_p2 & tmp_10_fu_183_p2);

assign tmp_2_fu_142_p2 = ((iterations_reg_84 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_6_to_int_fu_154_p1 = tmp_6_reg_235;

assign tmp_9_fu_167_p1 = tmp_6_to_int_fu_154_p1[22:0];

assign tmp_fu_157_p4 = {{tmp_6_to_int_fu_154_p1[30:23]}};

endmodule //mandel_engine
