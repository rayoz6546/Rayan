// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Dec  5 19:47:50 2021
// Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_hw_conv_0_0_sim_netlist.v
// Design      : system_hw_conv_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv
   (ap_clk,
    ap_rst_n,
    sin_TDATA,
    sin_TVALID,
    sin_TREADY,
    sin_TKEEP,
    sin_TSTRB,
    sin_TUSER,
    sin_TLAST,
    sin_TID,
    sin_TDEST,
    sout_TDATA,
    sout_TVALID,
    sout_TREADY,
    sout_TKEEP,
    sout_TSTRB,
    sout_TUSER,
    sout_TLAST,
    sout_TID,
    sout_TDEST);
  input ap_clk;
  input ap_rst_n;
  input [7:0]sin_TDATA;
  input sin_TVALID;
  output sin_TREADY;
  input [0:0]sin_TKEEP;
  input [0:0]sin_TSTRB;
  input [0:0]sin_TUSER;
  input [0:0]sin_TLAST;
  input [0:0]sin_TID;
  input [0:0]sin_TDEST;
  output [7:0]sout_TDATA;
  output sout_TVALID;
  input sout_TREADY;
  output [0:0]sout_TKEEP;
  output [0:0]sout_TSTRB;
  output [0:0]sout_TUSER;
  output [0:0]sout_TLAST;
  output [0:0]sout_TID;
  output [0:0]sout_TDEST;

  wire \<const0> ;
  wire \<const1> ;
  wire \ap_CS_fsm[0]_i_2_n_2 ;
  wire \ap_CS_fsm[0]_i_3_n_2 ;
  wire \ap_CS_fsm[0]_i_4_n_2 ;
  wire \ap_CS_fsm[2]_i_2_n_2 ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state6;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_2;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_2;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_2;
  wire ap_enable_reg_pp0_iter3_i_1_n_2;
  wire ap_enable_reg_pp0_iter3_reg_n_2;
  wire ap_rst_n;
  wire ce0;
  wire ce1;
  wire exitcond1_fu_253_p2;
  wire exitcond1_reg_6090;
  wire \exitcond1_reg_609[0]_i_2_n_2 ;
  wire \exitcond1_reg_609[0]_i_3_n_2 ;
  wire \exitcond1_reg_609[0]_i_4_n_2 ;
  wire \exitcond1_reg_609_reg_n_2_[0] ;
  wire i_reg_228;
  wire i_reg_2280;
  wire \i_reg_228[0]_i_4_n_2 ;
  wire [18:18]i_reg_228_reg;
  wire \i_reg_228_reg[0]_i_3_n_2 ;
  wire \i_reg_228_reg[0]_i_3_n_3 ;
  wire \i_reg_228_reg[0]_i_3_n_4 ;
  wire \i_reg_228_reg[0]_i_3_n_5 ;
  wire \i_reg_228_reg[0]_i_3_n_6 ;
  wire \i_reg_228_reg[0]_i_3_n_7 ;
  wire \i_reg_228_reg[0]_i_3_n_8 ;
  wire \i_reg_228_reg[0]_i_3_n_9 ;
  wire \i_reg_228_reg[12]_i_1_n_2 ;
  wire \i_reg_228_reg[12]_i_1_n_3 ;
  wire \i_reg_228_reg[12]_i_1_n_4 ;
  wire \i_reg_228_reg[12]_i_1_n_5 ;
  wire \i_reg_228_reg[12]_i_1_n_6 ;
  wire \i_reg_228_reg[12]_i_1_n_7 ;
  wire \i_reg_228_reg[12]_i_1_n_8 ;
  wire \i_reg_228_reg[12]_i_1_n_9 ;
  wire \i_reg_228_reg[16]_i_1_n_4 ;
  wire \i_reg_228_reg[16]_i_1_n_5 ;
  wire \i_reg_228_reg[16]_i_1_n_7 ;
  wire \i_reg_228_reg[16]_i_1_n_8 ;
  wire \i_reg_228_reg[16]_i_1_n_9 ;
  wire \i_reg_228_reg[4]_i_1_n_2 ;
  wire \i_reg_228_reg[4]_i_1_n_3 ;
  wire \i_reg_228_reg[4]_i_1_n_4 ;
  wire \i_reg_228_reg[4]_i_1_n_5 ;
  wire \i_reg_228_reg[4]_i_1_n_6 ;
  wire \i_reg_228_reg[4]_i_1_n_7 ;
  wire \i_reg_228_reg[4]_i_1_n_8 ;
  wire \i_reg_228_reg[4]_i_1_n_9 ;
  wire \i_reg_228_reg[8]_i_1_n_2 ;
  wire \i_reg_228_reg[8]_i_1_n_3 ;
  wire \i_reg_228_reg[8]_i_1_n_4 ;
  wire \i_reg_228_reg[8]_i_1_n_5 ;
  wire \i_reg_228_reg[8]_i_1_n_6 ;
  wire \i_reg_228_reg[8]_i_1_n_7 ;
  wire \i_reg_228_reg[8]_i_1_n_8 ;
  wire \i_reg_228_reg[8]_i_1_n_9 ;
  wire [17:0]i_reg_228_reg__0;
  wire [7:0]kbuf_0_0_fu_108;
  wire [7:0]kbuf_0_1_fu_112;
  wire [7:0]kbuf_1_0_fu_120;
  wire [7:0]kbuf_1_0_s_fu_116;
  wire [7:0]kbuf_1_1_fu_124;
  wire [7:0]kbuf_1_2_1_fu_379_p3;
  wire [7:0]kbuf_2_0_fu_132;
  wire [7:0]kbuf_2_0_load_6_reg_652;
  wire [7:0]kbuf_2_0_s_fu_128;
  wire [7:0]kbuf_2_1_1_reg_603;
  wire [7:0]kbuf_2_1_fu_136;
  wire \kbuf_2_1_fu_136[7]_i_1_n_2 ;
  wire lbuf_0_addr_reg_6180;
  wire [7:0]lbuf_0_q0;
  wire lbuf_1_U_n_5;
  wire [8:0]lbuf_1_addr_reg_629;
  wire [18:0]next_urem_fu_306_p2;
  wire \phi_urem_reg_239[0]_i_11_n_2 ;
  wire \phi_urem_reg_239[0]_i_1_n_2 ;
  wire \phi_urem_reg_239[0]_i_3_n_2 ;
  wire \phi_urem_reg_239[0]_i_4_n_2 ;
  wire \phi_urem_reg_239[0]_i_8_n_2 ;
  wire [8:0]phi_urem_reg_239_reg;
  wire \phi_urem_reg_239_reg[0]_i_10_n_2 ;
  wire \phi_urem_reg_239_reg[0]_i_10_n_3 ;
  wire \phi_urem_reg_239_reg[0]_i_10_n_4 ;
  wire \phi_urem_reg_239_reg[0]_i_10_n_5 ;
  wire \phi_urem_reg_239_reg[0]_i_12_n_2 ;
  wire \phi_urem_reg_239_reg[0]_i_12_n_3 ;
  wire \phi_urem_reg_239_reg[0]_i_12_n_4 ;
  wire \phi_urem_reg_239_reg[0]_i_12_n_5 ;
  wire \phi_urem_reg_239_reg[0]_i_2_n_2 ;
  wire \phi_urem_reg_239_reg[0]_i_2_n_3 ;
  wire \phi_urem_reg_239_reg[0]_i_2_n_4 ;
  wire \phi_urem_reg_239_reg[0]_i_2_n_5 ;
  wire \phi_urem_reg_239_reg[0]_i_2_n_6 ;
  wire \phi_urem_reg_239_reg[0]_i_2_n_7 ;
  wire \phi_urem_reg_239_reg[0]_i_2_n_8 ;
  wire \phi_urem_reg_239_reg[0]_i_2_n_9 ;
  wire \phi_urem_reg_239_reg[0]_i_5_n_2 ;
  wire \phi_urem_reg_239_reg[0]_i_5_n_3 ;
  wire \phi_urem_reg_239_reg[0]_i_5_n_4 ;
  wire \phi_urem_reg_239_reg[0]_i_5_n_5 ;
  wire \phi_urem_reg_239_reg[0]_i_7_n_2 ;
  wire \phi_urem_reg_239_reg[0]_i_7_n_3 ;
  wire \phi_urem_reg_239_reg[0]_i_7_n_4 ;
  wire \phi_urem_reg_239_reg[0]_i_7_n_5 ;
  wire \phi_urem_reg_239_reg[0]_i_9_n_5 ;
  wire \phi_urem_reg_239_reg[12]_i_1_n_2 ;
  wire \phi_urem_reg_239_reg[12]_i_1_n_3 ;
  wire \phi_urem_reg_239_reg[12]_i_1_n_4 ;
  wire \phi_urem_reg_239_reg[12]_i_1_n_5 ;
  wire \phi_urem_reg_239_reg[12]_i_1_n_6 ;
  wire \phi_urem_reg_239_reg[12]_i_1_n_7 ;
  wire \phi_urem_reg_239_reg[12]_i_1_n_8 ;
  wire \phi_urem_reg_239_reg[12]_i_1_n_9 ;
  wire \phi_urem_reg_239_reg[16]_i_1_n_4 ;
  wire \phi_urem_reg_239_reg[16]_i_1_n_5 ;
  wire \phi_urem_reg_239_reg[16]_i_1_n_7 ;
  wire \phi_urem_reg_239_reg[16]_i_1_n_8 ;
  wire \phi_urem_reg_239_reg[16]_i_1_n_9 ;
  wire \phi_urem_reg_239_reg[4]_i_1_n_2 ;
  wire \phi_urem_reg_239_reg[4]_i_1_n_3 ;
  wire \phi_urem_reg_239_reg[4]_i_1_n_4 ;
  wire \phi_urem_reg_239_reg[4]_i_1_n_5 ;
  wire \phi_urem_reg_239_reg[4]_i_1_n_6 ;
  wire \phi_urem_reg_239_reg[4]_i_1_n_7 ;
  wire \phi_urem_reg_239_reg[4]_i_1_n_8 ;
  wire \phi_urem_reg_239_reg[4]_i_1_n_9 ;
  wire \phi_urem_reg_239_reg[8]_i_1_n_2 ;
  wire \phi_urem_reg_239_reg[8]_i_1_n_3 ;
  wire \phi_urem_reg_239_reg[8]_i_1_n_4 ;
  wire \phi_urem_reg_239_reg[8]_i_1_n_5 ;
  wire \phi_urem_reg_239_reg[8]_i_1_n_6 ;
  wire \phi_urem_reg_239_reg[8]_i_1_n_7 ;
  wire \phi_urem_reg_239_reg[8]_i_1_n_8 ;
  wire \phi_urem_reg_239_reg[8]_i_1_n_9 ;
  wire [18:9]phi_urem_reg_239_reg__0;
  wire reset;
  wire [11:0]result_2_1_1_fu_457_p2;
  wire [11:0]result_2_1_1_reg_657;
  wire result_2_1_1_reg_6570;
  wire \result_2_1_1_reg_657[11]_i_10_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_11_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_12_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_13_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_14_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_15_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_16_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_17_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_6_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_7_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_8_n_2 ;
  wire \result_2_1_1_reg_657[11]_i_9_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_11_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_12_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_13_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_14_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_15_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_16_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_17_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_18_n_2 ;
  wire \result_2_1_1_reg_657_reg[11]_i_3_n_3 ;
  wire \result_2_1_1_reg_657_reg[11]_i_3_n_4 ;
  wire \result_2_1_1_reg_657_reg[11]_i_3_n_5 ;
  wire \result_2_1_1_reg_657_reg[11]_i_3_n_6 ;
  wire \result_2_1_1_reg_657_reg[11]_i_3_n_7 ;
  wire \result_2_1_1_reg_657_reg[11]_i_3_n_8 ;
  wire \result_2_1_1_reg_657_reg[11]_i_3_n_9 ;
  wire \result_2_1_1_reg_657_reg[11]_i_5_n_2 ;
  wire \result_2_1_1_reg_657_reg[11]_i_5_n_3 ;
  wire \result_2_1_1_reg_657_reg[11]_i_5_n_4 ;
  wire \result_2_1_1_reg_657_reg[11]_i_5_n_5 ;
  wire \result_2_1_1_reg_657_reg[11]_i_5_n_6 ;
  wire \result_2_1_1_reg_657_reg[11]_i_5_n_7 ;
  wire \result_2_1_1_reg_657_reg[11]_i_5_n_8 ;
  wire \result_2_1_1_reg_657_reg[11]_i_5_n_9 ;
  wire \result_2_1_1_reg_657_reg[7]_i_10_n_2 ;
  wire \result_2_1_1_reg_657_reg[7]_i_10_n_3 ;
  wire \result_2_1_1_reg_657_reg[7]_i_10_n_4 ;
  wire \result_2_1_1_reg_657_reg[7]_i_10_n_5 ;
  wire \result_2_1_1_reg_657_reg[7]_i_10_n_6 ;
  wire \result_2_1_1_reg_657_reg[7]_i_10_n_7 ;
  wire \result_2_1_1_reg_657_reg[7]_i_10_n_8 ;
  wire \result_2_1_1_reg_657_reg[7]_i_10_n_9 ;
  wire [7:0]sin_TDATA;
  wire sin_TREADY;
  wire sin_TVALID;
  wire sin_V_data_V_0_ack_in;
  wire [7:0]sin_V_data_V_0_data_out;
  wire sin_V_data_V_0_load_A;
  wire sin_V_data_V_0_load_B;
  wire [7:0]sin_V_data_V_0_payload_A;
  wire [7:0]sin_V_data_V_0_payload_B;
  wire sin_V_data_V_0_sel;
  wire sin_V_data_V_0_sel_rd_i_1_n_2;
  wire sin_V_data_V_0_sel_wr;
  wire sin_V_data_V_0_sel_wr_i_1_n_2;
  wire [1:1]sin_V_data_V_0_state;
  wire \sin_V_data_V_0_state[0]_i_1_n_2 ;
  wire \sin_V_data_V_0_state_reg_n_2_[0] ;
  wire [1:1]sin_V_dest_V_0_state;
  wire \sin_V_dest_V_0_state[0]_i_1_n_2 ;
  wire \sin_V_dest_V_0_state_reg_n_2_[0] ;
  wire [7:0]sout_TDATA;
  wire [0:0]sout_TLAST;
  wire sout_TREADY;
  wire sout_TVALID;
  wire sout_V_data_V_1_ack_in;
  wire sout_V_data_V_1_load_A;
  wire sout_V_data_V_1_load_B;
  wire [7:0]sout_V_data_V_1_payload_A;
  wire \sout_V_data_V_1_payload_A[3]_i_3_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_4_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_5_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_6_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_7_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_8_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_9_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_10_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_11_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_12_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_13_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_14_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_15_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_16_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_17_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_18_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_6_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_7_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_8_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_9_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_6 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_7 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_8 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_9 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_4_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_4_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_4_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_6 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_7 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_8 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_9 ;
  wire [7:0]sout_V_data_V_1_payload_B;
  wire \sout_V_data_V_1_payload_B[7]_i_1_n_2 ;
  wire sout_V_data_V_1_sel;
  wire sout_V_data_V_1_sel_rd_i_1_n_2;
  wire sout_V_data_V_1_sel_wr;
  wire sout_V_data_V_1_sel_wr_i_1_n_2;
  wire \sout_V_data_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_data_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_data_V_1_state_reg_n_2_[0] ;
  wire \sout_V_dest_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_dest_V_1_state[0]_i_2_n_2 ;
  wire \sout_V_dest_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_dest_V_1_state_reg_n_2_[1] ;
  wire \sout_V_id_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_id_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_id_V_1_state_reg_n_2_[0] ;
  wire \sout_V_id_V_1_state_reg_n_2_[1] ;
  wire \sout_V_keep_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_keep_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_keep_V_1_state_reg_n_2_[0] ;
  wire \sout_V_keep_V_1_state_reg_n_2_[1] ;
  wire sout_V_last_V_1_ack_in;
  wire sout_V_last_V_1_payload_A;
  wire \sout_V_last_V_1_payload_A[0]_i_1_n_2 ;
  wire sout_V_last_V_1_payload_B;
  wire \sout_V_last_V_1_payload_B[0]_i_1_n_2 ;
  wire sout_V_last_V_1_sel;
  wire sout_V_last_V_1_sel_rd_i_1_n_2;
  wire sout_V_last_V_1_sel_wr;
  wire sout_V_last_V_1_sel_wr_i_1_n_2;
  wire [1:1]sout_V_last_V_1_state;
  wire \sout_V_last_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_last_V_1_state_reg_n_2_[0] ;
  wire \sout_V_strb_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_strb_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_strb_V_1_state_reg_n_2_[0] ;
  wire \sout_V_strb_V_1_state_reg_n_2_[1] ;
  wire \sout_V_user_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_user_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_user_V_1_state_reg_n_2_[0] ;
  wire \sout_V_user_V_1_state_reg_n_2_[1] ;
  wire [9:0]tmp6_fu_484_p2;
  wire [9:0]tmp6_reg_662;
  wire tmp_3_fu_294_p2;
  wire tmp_3_reg_638;
  wire \tmp_3_reg_638[0]_i_3_n_2 ;
  wire \tmp_3_reg_638[0]_i_4_n_2 ;
  wire \tmp_3_reg_638[0]_i_5_n_2 ;
  wire \tmp_3_reg_638[0]_i_6_n_2 ;
  wire tmp_3_reg_638_pp0_iter1_reg;
  wire tmp_3_reg_638_pp0_iter2_reg;
  wire \tmp_3_reg_638_pp0_iter2_reg[0]_i_1_n_2 ;
  wire [3:0]tmp_4_fu_507_p4;
  wire tmp_5_fu_271_p2;
  wire tmp_5_reg_624;
  wire \tmp_5_reg_624[0]_i_2_n_2 ;
  wire [7:0]tmp_7_fu_539_p1;
  wire \tmp_last_V_reg_642[0]_i_1_n_2 ;
  wire tmp_last_V_reg_642_pp0_iter1_reg;
  wire \tmp_last_V_reg_642_reg_n_2_[0] ;
  wire we1;
  wire [3:2]\NLW_i_reg_228_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_reg_228_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_phi_urem_reg_239_reg[0]_i_9_CO_UNCONNECTED ;
  wire [3:2]\NLW_phi_urem_reg_239_reg[0]_i_9_O_UNCONNECTED ;
  wire [3:2]\NLW_phi_urem_reg_239_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_phi_urem_reg_239_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_result_2_1_1_reg_657_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_sout_V_data_V_1_payload_A_reg[7]_i_4_CO_UNCONNECTED ;

  assign sout_TDEST[0] = \<const0> ;
  assign sout_TID[0] = \<const0> ;
  assign sout_TKEEP[0] = \<const1> ;
  assign sout_TSTRB[0] = \<const0> ;
  assign sout_TUSER[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm[0]_i_2_n_2 ),
        .I1(\ap_CS_fsm[0]_i_3_n_2 ),
        .I2(\ap_CS_fsm[0]_i_4_n_2 ),
        .I3(sout_TVALID),
        .I4(\sout_V_dest_V_1_state_reg_n_2_[1] ),
        .I5(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .O(ap_NS_fsm[0]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(\sout_V_keep_V_1_state_reg_n_2_[1] ),
        .I1(sout_V_last_V_1_ack_in),
        .I2(\sout_V_user_V_1_state_reg_n_2_[0] ),
        .I3(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .O(\ap_CS_fsm[0]_i_2_n_2 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \ap_CS_fsm[0]_i_3 
       (.I0(\sout_V_id_V_1_state_reg_n_2_[0] ),
        .I1(sout_V_data_V_1_ack_in),
        .I2(\sout_V_user_V_1_state_reg_n_2_[1] ),
        .I3(\sout_V_id_V_1_state_reg_n_2_[1] ),
        .O(\ap_CS_fsm[0]_i_3_n_2 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ap_CS_fsm[0]_i_4 
       (.I0(\sout_V_strb_V_1_state_reg_n_2_[1] ),
        .I1(\sout_V_strb_V_1_state_reg_n_2_[0] ),
        .I2(ap_CS_fsm_state6),
        .I3(\sout_V_keep_V_1_state_reg_n_2_[0] ),
        .O(\ap_CS_fsm[0]_i_4_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state1),
        .I1(\ap_CS_fsm[2]_i_2_n_2 ),
        .I2(ap_CS_fsm_state6),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_NS_fsm[0]),
        .I1(ap_CS_fsm_state6),
        .I2(\ap_CS_fsm[2]_i_2_n_2 ),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'h0000000055550400)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(lbuf_1_U_n_5),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_enable_reg_pp0_iter3_reg_n_2),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\ap_CS_fsm[2]_i_2_n_2 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state6),
        .R(reset));
  LUT6 #(
    .INIT(64'hBFBFBF0000000000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(lbuf_1_U_n_5),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(exitcond1_fu_253_p2),
        .I3(ap_CS_fsm_state1),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter0_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(lbuf_1_U_n_5),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter1),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(lbuf_1_U_n_5),
        .I3(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter2),
        .R(reset));
  LUT5 #(
    .INIT(32'h4F400000)) 
    ap_enable_reg_pp0_iter3_i_1
       (.I0(ap_CS_fsm_state1),
        .I1(ap_enable_reg_pp0_iter3_reg_n_2),
        .I2(lbuf_1_U_n_5),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(ap_rst_n),
        .O(ap_enable_reg_pp0_iter3_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter3_reg_n_2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \exitcond1_reg_609[0]_i_1 
       (.I0(\exitcond1_reg_609[0]_i_2_n_2 ),
        .I1(i_reg_228_reg__0[0]),
        .I2(\exitcond1_reg_609[0]_i_3_n_2 ),
        .O(exitcond1_fu_253_p2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exitcond1_reg_609[0]_i_2 
       (.I0(i_reg_228_reg__0[13]),
        .I1(i_reg_228_reg__0[16]),
        .I2(i_reg_228_reg__0[14]),
        .I3(i_reg_228_reg__0[15]),
        .I4(\exitcond1_reg_609[0]_i_4_n_2 ),
        .O(\exitcond1_reg_609[0]_i_2_n_2 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exitcond1_reg_609[0]_i_3 
       (.I0(\tmp_3_reg_638[0]_i_5_n_2 ),
        .I1(i_reg_228_reg__0[11]),
        .I2(i_reg_228_reg__0[12]),
        .I3(i_reg_228_reg__0[3]),
        .I4(i_reg_228_reg__0[4]),
        .O(\exitcond1_reg_609[0]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \exitcond1_reg_609[0]_i_4 
       (.I0(i_reg_228_reg__0[9]),
        .I1(i_reg_228_reg),
        .I2(i_reg_228_reg__0[10]),
        .I3(i_reg_228_reg__0[2]),
        .I4(i_reg_228_reg__0[17]),
        .I5(i_reg_228_reg__0[1]),
        .O(\exitcond1_reg_609[0]_i_4_n_2 ));
  FDRE \exitcond1_reg_609_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(exitcond1_fu_253_p2),
        .Q(\exitcond1_reg_609_reg_n_2_[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \i_reg_228[0]_i_1 
       (.I0(ap_CS_fsm_state1),
        .I1(i_reg_2280),
        .O(i_reg_228));
  LUT4 #(
    .INIT(16'h0400)) 
    \i_reg_228[0]_i_2 
       (.I0(lbuf_1_U_n_5),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(exitcond1_fu_253_p2),
        .I3(ap_enable_reg_pp0_iter0),
        .O(i_reg_2280));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_228[0]_i_4 
       (.I0(i_reg_228_reg__0[0]),
        .O(\i_reg_228[0]_i_4_n_2 ));
  FDRE \i_reg_228_reg[0] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[0]_i_3_n_9 ),
        .Q(i_reg_228_reg__0[0]),
        .R(i_reg_228));
  CARRY4 \i_reg_228_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\i_reg_228_reg[0]_i_3_n_2 ,\i_reg_228_reg[0]_i_3_n_3 ,\i_reg_228_reg[0]_i_3_n_4 ,\i_reg_228_reg[0]_i_3_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg_228_reg[0]_i_3_n_6 ,\i_reg_228_reg[0]_i_3_n_7 ,\i_reg_228_reg[0]_i_3_n_8 ,\i_reg_228_reg[0]_i_3_n_9 }),
        .S({i_reg_228_reg__0[3:1],\i_reg_228[0]_i_4_n_2 }));
  FDRE \i_reg_228_reg[10] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[8]_i_1_n_7 ),
        .Q(i_reg_228_reg__0[10]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[11] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[8]_i_1_n_6 ),
        .Q(i_reg_228_reg__0[11]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[12] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[12]_i_1_n_9 ),
        .Q(i_reg_228_reg__0[12]),
        .R(i_reg_228));
  CARRY4 \i_reg_228_reg[12]_i_1 
       (.CI(\i_reg_228_reg[8]_i_1_n_2 ),
        .CO({\i_reg_228_reg[12]_i_1_n_2 ,\i_reg_228_reg[12]_i_1_n_3 ,\i_reg_228_reg[12]_i_1_n_4 ,\i_reg_228_reg[12]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_228_reg[12]_i_1_n_6 ,\i_reg_228_reg[12]_i_1_n_7 ,\i_reg_228_reg[12]_i_1_n_8 ,\i_reg_228_reg[12]_i_1_n_9 }),
        .S(i_reg_228_reg__0[15:12]));
  FDRE \i_reg_228_reg[13] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[12]_i_1_n_8 ),
        .Q(i_reg_228_reg__0[13]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[14] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[12]_i_1_n_7 ),
        .Q(i_reg_228_reg__0[14]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[15] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[12]_i_1_n_6 ),
        .Q(i_reg_228_reg__0[15]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[16] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[16]_i_1_n_9 ),
        .Q(i_reg_228_reg__0[16]),
        .R(i_reg_228));
  CARRY4 \i_reg_228_reg[16]_i_1 
       (.CI(\i_reg_228_reg[12]_i_1_n_2 ),
        .CO({\NLW_i_reg_228_reg[16]_i_1_CO_UNCONNECTED [3:2],\i_reg_228_reg[16]_i_1_n_4 ,\i_reg_228_reg[16]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg_228_reg[16]_i_1_O_UNCONNECTED [3],\i_reg_228_reg[16]_i_1_n_7 ,\i_reg_228_reg[16]_i_1_n_8 ,\i_reg_228_reg[16]_i_1_n_9 }),
        .S({1'b0,i_reg_228_reg,i_reg_228_reg__0[17:16]}));
  FDRE \i_reg_228_reg[17] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[16]_i_1_n_8 ),
        .Q(i_reg_228_reg__0[17]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[18] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[16]_i_1_n_7 ),
        .Q(i_reg_228_reg),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[1] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[0]_i_3_n_8 ),
        .Q(i_reg_228_reg__0[1]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[2] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[0]_i_3_n_7 ),
        .Q(i_reg_228_reg__0[2]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[3] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[0]_i_3_n_6 ),
        .Q(i_reg_228_reg__0[3]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[4] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[4]_i_1_n_9 ),
        .Q(i_reg_228_reg__0[4]),
        .R(i_reg_228));
  CARRY4 \i_reg_228_reg[4]_i_1 
       (.CI(\i_reg_228_reg[0]_i_3_n_2 ),
        .CO({\i_reg_228_reg[4]_i_1_n_2 ,\i_reg_228_reg[4]_i_1_n_3 ,\i_reg_228_reg[4]_i_1_n_4 ,\i_reg_228_reg[4]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_228_reg[4]_i_1_n_6 ,\i_reg_228_reg[4]_i_1_n_7 ,\i_reg_228_reg[4]_i_1_n_8 ,\i_reg_228_reg[4]_i_1_n_9 }),
        .S(i_reg_228_reg__0[7:4]));
  FDRE \i_reg_228_reg[5] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[4]_i_1_n_8 ),
        .Q(i_reg_228_reg__0[5]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[6] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[4]_i_1_n_7 ),
        .Q(i_reg_228_reg__0[6]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[7] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[4]_i_1_n_6 ),
        .Q(i_reg_228_reg__0[7]),
        .R(i_reg_228));
  FDRE \i_reg_228_reg[8] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[8]_i_1_n_9 ),
        .Q(i_reg_228_reg__0[8]),
        .R(i_reg_228));
  CARRY4 \i_reg_228_reg[8]_i_1 
       (.CI(\i_reg_228_reg[4]_i_1_n_2 ),
        .CO({\i_reg_228_reg[8]_i_1_n_2 ,\i_reg_228_reg[8]_i_1_n_3 ,\i_reg_228_reg[8]_i_1_n_4 ,\i_reg_228_reg[8]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_228_reg[8]_i_1_n_6 ,\i_reg_228_reg[8]_i_1_n_7 ,\i_reg_228_reg[8]_i_1_n_8 ,\i_reg_228_reg[8]_i_1_n_9 }),
        .S(i_reg_228_reg__0[11:8]));
  FDRE \i_reg_228_reg[9] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\i_reg_228_reg[8]_i_1_n_8 ),
        .Q(i_reg_228_reg__0[9]),
        .R(i_reg_228));
  FDRE \kbuf_0_0_fu_108_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_112[0]),
        .Q(kbuf_0_0_fu_108[0]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_108_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_112[1]),
        .Q(kbuf_0_0_fu_108[1]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_108_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_112[2]),
        .Q(kbuf_0_0_fu_108[2]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_108_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_112[3]),
        .Q(kbuf_0_0_fu_108[3]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_108_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_112[4]),
        .Q(kbuf_0_0_fu_108[4]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_108_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_112[5]),
        .Q(kbuf_0_0_fu_108[5]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_108_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_112[6]),
        .Q(kbuf_0_0_fu_108[6]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_108_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_112[7]),
        .Q(kbuf_0_0_fu_108[7]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_112_reg[0] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[0]),
        .Q(kbuf_0_1_fu_112[0]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_112_reg[1] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[1]),
        .Q(kbuf_0_1_fu_112[1]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_112_reg[2] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[2]),
        .Q(kbuf_0_1_fu_112[2]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_112_reg[3] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[3]),
        .Q(kbuf_0_1_fu_112[3]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_112_reg[4] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[4]),
        .Q(kbuf_0_1_fu_112[4]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_112_reg[5] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[5]),
        .Q(kbuf_0_1_fu_112[5]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_112_reg[6] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[6]),
        .Q(kbuf_0_1_fu_112[6]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_112_reg[7] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[7]),
        .Q(kbuf_0_1_fu_112[7]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_120_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_1_fu_124[0]),
        .Q(kbuf_1_0_fu_120[0]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_120_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_1_fu_124[1]),
        .Q(kbuf_1_0_fu_120[1]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_120_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_1_fu_124[2]),
        .Q(kbuf_1_0_fu_120[2]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_120_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_1_fu_124[3]),
        .Q(kbuf_1_0_fu_120[3]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_120_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_1_fu_124[4]),
        .Q(kbuf_1_0_fu_120[4]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_120_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_1_fu_124[5]),
        .Q(kbuf_1_0_fu_120[5]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_120_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_1_fu_124[6]),
        .Q(kbuf_1_0_fu_120[6]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_120_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_1_fu_124[7]),
        .Q(kbuf_1_0_fu_120[7]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_116_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_120[0]),
        .Q(kbuf_1_0_s_fu_116[0]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_116_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_120[1]),
        .Q(kbuf_1_0_s_fu_116[1]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_116_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_120[2]),
        .Q(kbuf_1_0_s_fu_116[2]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_116_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_120[3]),
        .Q(kbuf_1_0_s_fu_116[3]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_116_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_120[4]),
        .Q(kbuf_1_0_s_fu_116[4]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_116_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_120[5]),
        .Q(kbuf_1_0_s_fu_116[5]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_116_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_120[6]),
        .Q(kbuf_1_0_s_fu_116[6]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_116_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_120[7]),
        .Q(kbuf_1_0_s_fu_116[7]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_124_reg[0] 
       (.C(ap_clk),
        .CE(we1),
        .D(kbuf_1_2_1_fu_379_p3[0]),
        .Q(kbuf_1_1_fu_124[0]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_124_reg[1] 
       (.C(ap_clk),
        .CE(we1),
        .D(kbuf_1_2_1_fu_379_p3[1]),
        .Q(kbuf_1_1_fu_124[1]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_124_reg[2] 
       (.C(ap_clk),
        .CE(we1),
        .D(kbuf_1_2_1_fu_379_p3[2]),
        .Q(kbuf_1_1_fu_124[2]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_124_reg[3] 
       (.C(ap_clk),
        .CE(we1),
        .D(kbuf_1_2_1_fu_379_p3[3]),
        .Q(kbuf_1_1_fu_124[3]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_124_reg[4] 
       (.C(ap_clk),
        .CE(we1),
        .D(kbuf_1_2_1_fu_379_p3[4]),
        .Q(kbuf_1_1_fu_124[4]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_124_reg[5] 
       (.C(ap_clk),
        .CE(we1),
        .D(kbuf_1_2_1_fu_379_p3[5]),
        .Q(kbuf_1_1_fu_124[5]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_124_reg[6] 
       (.C(ap_clk),
        .CE(we1),
        .D(kbuf_1_2_1_fu_379_p3[6]),
        .Q(kbuf_1_1_fu_124[6]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_124_reg[7] 
       (.C(ap_clk),
        .CE(we1),
        .D(kbuf_1_2_1_fu_379_p3[7]),
        .Q(kbuf_1_1_fu_124[7]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_132_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_603[0]),
        .Q(kbuf_2_0_fu_132[0]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_132_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_603[1]),
        .Q(kbuf_2_0_fu_132[1]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_132_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_603[2]),
        .Q(kbuf_2_0_fu_132[2]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_132_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_603[3]),
        .Q(kbuf_2_0_fu_132[3]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_132_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_603[4]),
        .Q(kbuf_2_0_fu_132[4]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_132_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_603[5]),
        .Q(kbuf_2_0_fu_132[5]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_132_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_603[6]),
        .Q(kbuf_2_0_fu_132[6]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_132_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_603[7]),
        .Q(kbuf_2_0_fu_132[7]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_652_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_0_fu_132[0]),
        .Q(kbuf_2_0_load_6_reg_652[0]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_652_reg[1] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_0_fu_132[1]),
        .Q(kbuf_2_0_load_6_reg_652[1]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_652_reg[2] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_0_fu_132[2]),
        .Q(kbuf_2_0_load_6_reg_652[2]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_652_reg[3] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_0_fu_132[3]),
        .Q(kbuf_2_0_load_6_reg_652[3]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_652_reg[4] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_0_fu_132[4]),
        .Q(kbuf_2_0_load_6_reg_652[4]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_652_reg[5] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_0_fu_132[5]),
        .Q(kbuf_2_0_load_6_reg_652[5]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_652_reg[6] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_0_fu_132[6]),
        .Q(kbuf_2_0_load_6_reg_652[6]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_652_reg[7] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_0_fu_132[7]),
        .Q(kbuf_2_0_load_6_reg_652[7]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_128_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_132[0]),
        .Q(kbuf_2_0_s_fu_128[0]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_128_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_132[1]),
        .Q(kbuf_2_0_s_fu_128[1]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_128_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_132[2]),
        .Q(kbuf_2_0_s_fu_128[2]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_128_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_132[3]),
        .Q(kbuf_2_0_s_fu_128[3]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_128_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_132[4]),
        .Q(kbuf_2_0_s_fu_128[4]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_128_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_132[5]),
        .Q(kbuf_2_0_s_fu_128[5]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_128_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_132[6]),
        .Q(kbuf_2_0_s_fu_128[6]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_128_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_132[7]),
        .Q(kbuf_2_0_s_fu_128[7]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_603_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_1_fu_136[0]),
        .Q(kbuf_2_1_1_reg_603[0]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_603_reg[1] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_1_fu_136[1]),
        .Q(kbuf_2_1_1_reg_603[1]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_603_reg[2] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_1_fu_136[2]),
        .Q(kbuf_2_1_1_reg_603[2]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_603_reg[3] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_1_fu_136[3]),
        .Q(kbuf_2_1_1_reg_603[3]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_603_reg[4] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_1_fu_136[4]),
        .Q(kbuf_2_1_1_reg_603[4]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_603_reg[5] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_1_fu_136[5]),
        .Q(kbuf_2_1_1_reg_603[5]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_603_reg[6] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_1_fu_136[6]),
        .Q(kbuf_2_1_1_reg_603[6]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_603_reg[7] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(kbuf_2_1_fu_136[7]),
        .Q(kbuf_2_1_1_reg_603[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_136[0]_i_1 
       (.I0(sin_V_data_V_0_payload_B[0]),
        .I1(sin_V_data_V_0_payload_A[0]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_136[1]_i_1 
       (.I0(sin_V_data_V_0_payload_B[1]),
        .I1(sin_V_data_V_0_payload_A[1]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_136[2]_i_1 
       (.I0(sin_V_data_V_0_payload_B[2]),
        .I1(sin_V_data_V_0_payload_A[2]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_136[3]_i_1 
       (.I0(sin_V_data_V_0_payload_B[3]),
        .I1(sin_V_data_V_0_payload_A[3]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_136[4]_i_1 
       (.I0(sin_V_data_V_0_payload_B[4]),
        .I1(sin_V_data_V_0_payload_A[4]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_136[5]_i_1 
       (.I0(sin_V_data_V_0_payload_B[5]),
        .I1(sin_V_data_V_0_payload_A[5]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_136[6]_i_1 
       (.I0(sin_V_data_V_0_payload_B[6]),
        .I1(sin_V_data_V_0_payload_A[6]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[6]));
  LUT4 #(
    .INIT(16'h0400)) 
    \kbuf_2_1_fu_136[7]_i_1 
       (.I0(lbuf_1_U_n_5),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(i_reg_228_reg),
        .I3(ap_enable_reg_pp0_iter0),
        .O(\kbuf_2_1_fu_136[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_136[7]_i_2 
       (.I0(sin_V_data_V_0_payload_B[7]),
        .I1(sin_V_data_V_0_payload_A[7]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[7]));
  FDRE \kbuf_2_1_fu_136_reg[0] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[0]),
        .Q(kbuf_2_1_fu_136[0]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_136_reg[1] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[1]),
        .Q(kbuf_2_1_fu_136[1]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_136_reg[2] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[2]),
        .Q(kbuf_2_1_fu_136[2]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_136_reg[3] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[3]),
        .Q(kbuf_2_1_fu_136[3]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_136_reg[4] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[4]),
        .Q(kbuf_2_1_fu_136[4]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_136_reg[5] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[5]),
        .Q(kbuf_2_1_fu_136[5]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_136_reg[6] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[6]),
        .Q(kbuf_2_1_fu_136[6]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_136_reg[7] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[7]),
        .Q(kbuf_2_1_fu_136[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0 lbuf_0_U
       (.D(lbuf_0_q0),
        .E(we1),
        .O({\result_2_1_1_reg_657_reg[11]_i_3_n_6 ,\result_2_1_1_reg_657_reg[11]_i_3_n_7 ,\result_2_1_1_reg_657_reg[11]_i_3_n_8 ,\result_2_1_1_reg_657_reg[11]_i_3_n_9 }),
        .Q(lbuf_1_addr_reg_629),
        .WEA(ce1),
        .ap_clk(ap_clk),
        .ce0(ce0),
        .\kbuf_0_1_fu_112_reg[7] (result_2_1_1_fu_457_p2),
        .out(phi_urem_reg_239_reg),
        .ram_reg(kbuf_1_0_s_fu_116),
        .\result_2_1_1_reg_657_reg[11] (kbuf_0_1_fu_112),
        .\result_2_1_1_reg_657_reg[11]_0 ({\result_2_1_1_reg_657_reg[11]_i_5_n_6 ,\result_2_1_1_reg_657_reg[11]_i_5_n_7 ,\result_2_1_1_reg_657_reg[11]_i_5_n_8 ,\result_2_1_1_reg_657_reg[11]_i_5_n_9 }),
        .\result_2_1_1_reg_657_reg[3] ({\result_2_1_1_reg_657_reg[7]_i_10_n_6 ,\result_2_1_1_reg_657_reg[7]_i_10_n_7 ,\result_2_1_1_reg_657_reg[7]_i_10_n_8 ,\result_2_1_1_reg_657_reg[7]_i_10_n_9 }));
  FDRE \lbuf_0_addr_reg_618_reg[0] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[0]),
        .Q(lbuf_1_addr_reg_629[0]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_618_reg[1] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[1]),
        .Q(lbuf_1_addr_reg_629[1]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_618_reg[2] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[2]),
        .Q(lbuf_1_addr_reg_629[2]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_618_reg[3] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[3]),
        .Q(lbuf_1_addr_reg_629[3]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_618_reg[4] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[4]),
        .Q(lbuf_1_addr_reg_629[4]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_618_reg[5] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[5]),
        .Q(lbuf_1_addr_reg_629[5]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_618_reg[6] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[6]),
        .Q(lbuf_1_addr_reg_629[6]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_618_reg[7] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[7]),
        .Q(lbuf_1_addr_reg_629[7]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_618_reg[8] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(phi_urem_reg_239_reg[8]),
        .Q(lbuf_1_addr_reg_629[8]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_0 lbuf_1_U
       (.D(tmp6_fu_484_p2),
        .E(we1),
        .Q(lbuf_1_addr_reg_629),
        .WEA(ce1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ce0(ce0),
        .i_reg_228_reg(i_reg_228_reg),
        .\kbuf_1_1_fu_124_reg[7] (kbuf_1_1_fu_124),
        .out(phi_urem_reg_239_reg),
        .ram_reg(kbuf_1_2_1_fu_379_p3),
        .ram_reg_0(kbuf_2_0_s_fu_128),
        .ram_reg_1(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .ram_reg_2(ap_CS_fsm_pp0_stage0),
        .ram_reg_3(\exitcond1_reg_609_reg_n_2_[0] ),
        .ram_reg_i_4(ap_enable_reg_pp0_iter3_reg_n_2),
        .\sin_V_data_V_0_state_reg[0] (lbuf_1_U_n_5),
        .sout_V_data_V_1_ack_in(sout_V_data_V_1_ack_in),
        .\tmp6_reg_662_reg[9] (kbuf_2_1_fu_136),
        .\tmp6_reg_662_reg[9]_0 (kbuf_2_1_1_reg_603),
        .tmp_3_reg_638_pp0_iter1_reg(tmp_3_reg_638_pp0_iter1_reg),
        .tmp_3_reg_638_pp0_iter2_reg(tmp_3_reg_638_pp0_iter2_reg),
        .tmp_5_reg_624(tmp_5_reg_624));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \phi_urem_reg_239[0]_i_1 
       (.I0(\phi_urem_reg_239[0]_i_3_n_2 ),
        .I1(\phi_urem_reg_239[0]_i_4_n_2 ),
        .I2(next_urem_fu_306_p2[10]),
        .I3(next_urem_fu_306_p2[9]),
        .I4(i_reg_2280),
        .I5(ap_CS_fsm_state1),
        .O(\phi_urem_reg_239[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \phi_urem_reg_239[0]_i_11 
       (.I0(next_urem_fu_306_p2[13]),
        .I1(next_urem_fu_306_p2[14]),
        .I2(next_urem_fu_306_p2[11]),
        .I3(next_urem_fu_306_p2[12]),
        .O(\phi_urem_reg_239[0]_i_11_n_2 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \phi_urem_reg_239[0]_i_3 
       (.I0(next_urem_fu_306_p2[8]),
        .I1(next_urem_fu_306_p2[7]),
        .I2(next_urem_fu_306_p2[6]),
        .I3(\phi_urem_reg_239[0]_i_8_n_2 ),
        .O(\phi_urem_reg_239[0]_i_3_n_2 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \phi_urem_reg_239[0]_i_4 
       (.I0(next_urem_fu_306_p2[18]),
        .I1(next_urem_fu_306_p2[15]),
        .I2(next_urem_fu_306_p2[17]),
        .I3(next_urem_fu_306_p2[16]),
        .I4(\phi_urem_reg_239[0]_i_11_n_2 ),
        .O(\phi_urem_reg_239[0]_i_4_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phi_urem_reg_239[0]_i_6 
       (.I0(phi_urem_reg_239_reg[0]),
        .O(next_urem_fu_306_p2[0]));
  LUT6 #(
    .INIT(64'h4FFFFFFFFFFFFFFF)) 
    \phi_urem_reg_239[0]_i_8 
       (.I0(next_urem_fu_306_p2[1]),
        .I1(phi_urem_reg_239_reg[0]),
        .I2(next_urem_fu_306_p2[5]),
        .I3(next_urem_fu_306_p2[3]),
        .I4(next_urem_fu_306_p2[4]),
        .I5(next_urem_fu_306_p2[2]),
        .O(\phi_urem_reg_239[0]_i_8_n_2 ));
  FDRE \phi_urem_reg_239_reg[0] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[0]_i_2_n_9 ),
        .Q(phi_urem_reg_239_reg[0]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_239_reg[0]_i_10 
       (.CI(\phi_urem_reg_239_reg[0]_i_5_n_2 ),
        .CO({\phi_urem_reg_239_reg[0]_i_10_n_2 ,\phi_urem_reg_239_reg[0]_i_10_n_3 ,\phi_urem_reg_239_reg[0]_i_10_n_4 ,\phi_urem_reg_239_reg[0]_i_10_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_urem_fu_306_p2[16:13]),
        .S(phi_urem_reg_239_reg__0[16:13]));
  CARRY4 \phi_urem_reg_239_reg[0]_i_12 
       (.CI(1'b0),
        .CO({\phi_urem_reg_239_reg[0]_i_12_n_2 ,\phi_urem_reg_239_reg[0]_i_12_n_3 ,\phi_urem_reg_239_reg[0]_i_12_n_4 ,\phi_urem_reg_239_reg[0]_i_12_n_5 }),
        .CYINIT(phi_urem_reg_239_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_urem_fu_306_p2[4:1]),
        .S(phi_urem_reg_239_reg[4:1]));
  CARRY4 \phi_urem_reg_239_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\phi_urem_reg_239_reg[0]_i_2_n_2 ,\phi_urem_reg_239_reg[0]_i_2_n_3 ,\phi_urem_reg_239_reg[0]_i_2_n_4 ,\phi_urem_reg_239_reg[0]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\phi_urem_reg_239_reg[0]_i_2_n_6 ,\phi_urem_reg_239_reg[0]_i_2_n_7 ,\phi_urem_reg_239_reg[0]_i_2_n_8 ,\phi_urem_reg_239_reg[0]_i_2_n_9 }),
        .S({phi_urem_reg_239_reg[3:1],next_urem_fu_306_p2[0]}));
  CARRY4 \phi_urem_reg_239_reg[0]_i_5 
       (.CI(\phi_urem_reg_239_reg[0]_i_7_n_2 ),
        .CO({\phi_urem_reg_239_reg[0]_i_5_n_2 ,\phi_urem_reg_239_reg[0]_i_5_n_3 ,\phi_urem_reg_239_reg[0]_i_5_n_4 ,\phi_urem_reg_239_reg[0]_i_5_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_urem_fu_306_p2[12:9]),
        .S(phi_urem_reg_239_reg__0[12:9]));
  CARRY4 \phi_urem_reg_239_reg[0]_i_7 
       (.CI(\phi_urem_reg_239_reg[0]_i_12_n_2 ),
        .CO({\phi_urem_reg_239_reg[0]_i_7_n_2 ,\phi_urem_reg_239_reg[0]_i_7_n_3 ,\phi_urem_reg_239_reg[0]_i_7_n_4 ,\phi_urem_reg_239_reg[0]_i_7_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_urem_fu_306_p2[8:5]),
        .S(phi_urem_reg_239_reg[8:5]));
  CARRY4 \phi_urem_reg_239_reg[0]_i_9 
       (.CI(\phi_urem_reg_239_reg[0]_i_10_n_2 ),
        .CO({\NLW_phi_urem_reg_239_reg[0]_i_9_CO_UNCONNECTED [3:1],\phi_urem_reg_239_reg[0]_i_9_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_phi_urem_reg_239_reg[0]_i_9_O_UNCONNECTED [3:2],next_urem_fu_306_p2[18:17]}),
        .S({1'b0,1'b0,phi_urem_reg_239_reg__0[18:17]}));
  FDRE \phi_urem_reg_239_reg[10] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[8]_i_1_n_7 ),
        .Q(phi_urem_reg_239_reg__0[10]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[11] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[8]_i_1_n_6 ),
        .Q(phi_urem_reg_239_reg__0[11]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[12] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[12]_i_1_n_9 ),
        .Q(phi_urem_reg_239_reg__0[12]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_239_reg[12]_i_1 
       (.CI(\phi_urem_reg_239_reg[8]_i_1_n_2 ),
        .CO({\phi_urem_reg_239_reg[12]_i_1_n_2 ,\phi_urem_reg_239_reg[12]_i_1_n_3 ,\phi_urem_reg_239_reg[12]_i_1_n_4 ,\phi_urem_reg_239_reg[12]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_urem_reg_239_reg[12]_i_1_n_6 ,\phi_urem_reg_239_reg[12]_i_1_n_7 ,\phi_urem_reg_239_reg[12]_i_1_n_8 ,\phi_urem_reg_239_reg[12]_i_1_n_9 }),
        .S(phi_urem_reg_239_reg__0[15:12]));
  FDRE \phi_urem_reg_239_reg[13] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[12]_i_1_n_8 ),
        .Q(phi_urem_reg_239_reg__0[13]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[14] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[12]_i_1_n_7 ),
        .Q(phi_urem_reg_239_reg__0[14]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[15] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[12]_i_1_n_6 ),
        .Q(phi_urem_reg_239_reg__0[15]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[16] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[16]_i_1_n_9 ),
        .Q(phi_urem_reg_239_reg__0[16]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_239_reg[16]_i_1 
       (.CI(\phi_urem_reg_239_reg[12]_i_1_n_2 ),
        .CO({\NLW_phi_urem_reg_239_reg[16]_i_1_CO_UNCONNECTED [3:2],\phi_urem_reg_239_reg[16]_i_1_n_4 ,\phi_urem_reg_239_reg[16]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_phi_urem_reg_239_reg[16]_i_1_O_UNCONNECTED [3],\phi_urem_reg_239_reg[16]_i_1_n_7 ,\phi_urem_reg_239_reg[16]_i_1_n_8 ,\phi_urem_reg_239_reg[16]_i_1_n_9 }),
        .S({1'b0,phi_urem_reg_239_reg__0[18:16]}));
  FDRE \phi_urem_reg_239_reg[17] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[16]_i_1_n_8 ),
        .Q(phi_urem_reg_239_reg__0[17]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[18] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[16]_i_1_n_7 ),
        .Q(phi_urem_reg_239_reg__0[18]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[1] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[0]_i_2_n_8 ),
        .Q(phi_urem_reg_239_reg[1]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[2] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[0]_i_2_n_7 ),
        .Q(phi_urem_reg_239_reg[2]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[3] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[0]_i_2_n_6 ),
        .Q(phi_urem_reg_239_reg[3]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[4] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[4]_i_1_n_9 ),
        .Q(phi_urem_reg_239_reg[4]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_239_reg[4]_i_1 
       (.CI(\phi_urem_reg_239_reg[0]_i_2_n_2 ),
        .CO({\phi_urem_reg_239_reg[4]_i_1_n_2 ,\phi_urem_reg_239_reg[4]_i_1_n_3 ,\phi_urem_reg_239_reg[4]_i_1_n_4 ,\phi_urem_reg_239_reg[4]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_urem_reg_239_reg[4]_i_1_n_6 ,\phi_urem_reg_239_reg[4]_i_1_n_7 ,\phi_urem_reg_239_reg[4]_i_1_n_8 ,\phi_urem_reg_239_reg[4]_i_1_n_9 }),
        .S(phi_urem_reg_239_reg[7:4]));
  FDRE \phi_urem_reg_239_reg[5] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[4]_i_1_n_8 ),
        .Q(phi_urem_reg_239_reg[5]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[6] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[4]_i_1_n_7 ),
        .Q(phi_urem_reg_239_reg[6]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[7] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[4]_i_1_n_6 ),
        .Q(phi_urem_reg_239_reg[7]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_239_reg[8] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[8]_i_1_n_9 ),
        .Q(phi_urem_reg_239_reg[8]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_239_reg[8]_i_1 
       (.CI(\phi_urem_reg_239_reg[4]_i_1_n_2 ),
        .CO({\phi_urem_reg_239_reg[8]_i_1_n_2 ,\phi_urem_reg_239_reg[8]_i_1_n_3 ,\phi_urem_reg_239_reg[8]_i_1_n_4 ,\phi_urem_reg_239_reg[8]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_urem_reg_239_reg[8]_i_1_n_6 ,\phi_urem_reg_239_reg[8]_i_1_n_7 ,\phi_urem_reg_239_reg[8]_i_1_n_8 ,\phi_urem_reg_239_reg[8]_i_1_n_9 }),
        .S({phi_urem_reg_239_reg__0[11:9],phi_urem_reg_239_reg[8]}));
  FDRE \phi_urem_reg_239_reg[9] 
       (.C(ap_clk),
        .CE(i_reg_2280),
        .D(\phi_urem_reg_239_reg[8]_i_1_n_8 ),
        .Q(phi_urem_reg_239_reg__0[9]),
        .R(\phi_urem_reg_239[0]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h04)) 
    \result_2_1_1_reg_657[11]_i_1 
       (.I0(lbuf_1_U_n_5),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\exitcond1_reg_609_reg_n_2_[0] ),
        .O(result_2_1_1_reg_6570));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \result_2_1_1_reg_657[11]_i_10 
       (.I0(kbuf_1_1_fu_124[3]),
        .I1(kbuf_1_0_fu_120[6]),
        .I2(kbuf_0_0_fu_108[6]),
        .O(\result_2_1_1_reg_657[11]_i_10_n_2 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \result_2_1_1_reg_657[11]_i_11 
       (.I0(kbuf_1_1_fu_124[2]),
        .I1(kbuf_1_0_fu_120[5]),
        .I2(kbuf_0_0_fu_108[5]),
        .O(\result_2_1_1_reg_657[11]_i_11_n_2 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \result_2_1_1_reg_657[11]_i_12 
       (.I0(kbuf_1_1_fu_124[1]),
        .I1(kbuf_1_0_fu_120[4]),
        .I2(kbuf_0_0_fu_108[4]),
        .O(\result_2_1_1_reg_657[11]_i_12_n_2 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \result_2_1_1_reg_657[11]_i_13 
       (.I0(kbuf_1_1_fu_124[0]),
        .I1(kbuf_1_0_fu_120[3]),
        .I2(kbuf_0_0_fu_108[3]),
        .O(\result_2_1_1_reg_657[11]_i_13_n_2 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \result_2_1_1_reg_657[11]_i_14 
       (.I0(\result_2_1_1_reg_657[11]_i_10_n_2 ),
        .I1(kbuf_1_1_fu_124[4]),
        .I2(kbuf_1_0_fu_120[7]),
        .I3(kbuf_0_0_fu_108[7]),
        .O(\result_2_1_1_reg_657[11]_i_14_n_2 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \result_2_1_1_reg_657[11]_i_15 
       (.I0(kbuf_1_1_fu_124[3]),
        .I1(kbuf_1_0_fu_120[6]),
        .I2(kbuf_0_0_fu_108[6]),
        .I3(\result_2_1_1_reg_657[11]_i_11_n_2 ),
        .O(\result_2_1_1_reg_657[11]_i_15_n_2 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \result_2_1_1_reg_657[11]_i_16 
       (.I0(kbuf_1_1_fu_124[2]),
        .I1(kbuf_1_0_fu_120[5]),
        .I2(kbuf_0_0_fu_108[5]),
        .I3(\result_2_1_1_reg_657[11]_i_12_n_2 ),
        .O(\result_2_1_1_reg_657[11]_i_16_n_2 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \result_2_1_1_reg_657[11]_i_17 
       (.I0(kbuf_1_1_fu_124[1]),
        .I1(kbuf_1_0_fu_120[4]),
        .I2(kbuf_0_0_fu_108[4]),
        .I3(\result_2_1_1_reg_657[11]_i_13_n_2 ),
        .O(\result_2_1_1_reg_657[11]_i_17_n_2 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \result_2_1_1_reg_657[11]_i_6 
       (.I0(kbuf_1_1_fu_124[4]),
        .I1(kbuf_1_0_fu_120[7]),
        .I2(kbuf_0_0_fu_108[7]),
        .O(\result_2_1_1_reg_657[11]_i_6_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_2_1_1_reg_657[11]_i_7 
       (.I0(kbuf_1_1_fu_124[7]),
        .O(\result_2_1_1_reg_657[11]_i_7_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_2_1_1_reg_657[11]_i_8 
       (.I0(kbuf_1_1_fu_124[6]),
        .O(\result_2_1_1_reg_657[11]_i_8_n_2 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \result_2_1_1_reg_657[11]_i_9 
       (.I0(kbuf_0_0_fu_108[7]),
        .I1(kbuf_1_0_fu_120[7]),
        .I2(kbuf_1_1_fu_124[4]),
        .I3(kbuf_1_1_fu_124[5]),
        .O(\result_2_1_1_reg_657[11]_i_9_n_2 ));
  (* HLUTNM = "lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_2_1_1_reg_657[7]_i_11 
       (.I0(kbuf_0_0_fu_108[2]),
        .I1(kbuf_1_0_fu_120[2]),
        .O(\result_2_1_1_reg_657[7]_i_11_n_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_2_1_1_reg_657[7]_i_12 
       (.I0(kbuf_1_0_fu_120[2]),
        .I1(kbuf_0_0_fu_108[2]),
        .O(\result_2_1_1_reg_657[7]_i_12_n_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_2_1_1_reg_657[7]_i_13 
       (.I0(kbuf_0_0_fu_108[0]),
        .I1(kbuf_1_0_fu_120[0]),
        .O(\result_2_1_1_reg_657[7]_i_13_n_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_2_1_1_reg_657[7]_i_14 
       (.I0(kbuf_1_0_fu_120[0]),
        .I1(kbuf_0_0_fu_108[0]),
        .O(\result_2_1_1_reg_657[7]_i_14_n_2 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \result_2_1_1_reg_657[7]_i_15 
       (.I0(kbuf_1_1_fu_124[0]),
        .I1(kbuf_1_0_fu_120[3]),
        .I2(kbuf_0_0_fu_108[3]),
        .I3(\result_2_1_1_reg_657[7]_i_11_n_2 ),
        .O(\result_2_1_1_reg_657[7]_i_15_n_2 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6999)) 
    \result_2_1_1_reg_657[7]_i_16 
       (.I0(kbuf_0_0_fu_108[2]),
        .I1(kbuf_1_0_fu_120[2]),
        .I2(kbuf_0_0_fu_108[1]),
        .I3(kbuf_1_0_fu_120[1]),
        .O(\result_2_1_1_reg_657[7]_i_16_n_2 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \result_2_1_1_reg_657[7]_i_17 
       (.I0(kbuf_1_0_fu_120[0]),
        .I1(kbuf_0_0_fu_108[0]),
        .I2(kbuf_1_0_fu_120[1]),
        .I3(kbuf_0_0_fu_108[1]),
        .O(\result_2_1_1_reg_657[7]_i_17_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_2_1_1_reg_657[7]_i_18 
       (.I0(kbuf_0_0_fu_108[0]),
        .I1(kbuf_1_0_fu_120[0]),
        .O(\result_2_1_1_reg_657[7]_i_18_n_2 ));
  FDRE \result_2_1_1_reg_657_reg[0] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[0]),
        .Q(result_2_1_1_reg_657[0]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[10] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[10]),
        .Q(result_2_1_1_reg_657[10]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[11] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[11]),
        .Q(result_2_1_1_reg_657[11]),
        .R(1'b0));
  CARRY4 \result_2_1_1_reg_657_reg[11]_i_3 
       (.CI(\result_2_1_1_reg_657_reg[11]_i_5_n_2 ),
        .CO({\NLW_result_2_1_1_reg_657_reg[11]_i_3_CO_UNCONNECTED [3],\result_2_1_1_reg_657_reg[11]_i_3_n_3 ,\result_2_1_1_reg_657_reg[11]_i_3_n_4 ,\result_2_1_1_reg_657_reg[11]_i_3_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\result_2_1_1_reg_657[11]_i_6_n_2 }),
        .O({\result_2_1_1_reg_657_reg[11]_i_3_n_6 ,\result_2_1_1_reg_657_reg[11]_i_3_n_7 ,\result_2_1_1_reg_657_reg[11]_i_3_n_8 ,\result_2_1_1_reg_657_reg[11]_i_3_n_9 }),
        .S({1'b1,\result_2_1_1_reg_657[11]_i_7_n_2 ,\result_2_1_1_reg_657[11]_i_8_n_2 ,\result_2_1_1_reg_657[11]_i_9_n_2 }));
  CARRY4 \result_2_1_1_reg_657_reg[11]_i_5 
       (.CI(\result_2_1_1_reg_657_reg[7]_i_10_n_2 ),
        .CO({\result_2_1_1_reg_657_reg[11]_i_5_n_2 ,\result_2_1_1_reg_657_reg[11]_i_5_n_3 ,\result_2_1_1_reg_657_reg[11]_i_5_n_4 ,\result_2_1_1_reg_657_reg[11]_i_5_n_5 }),
        .CYINIT(1'b0),
        .DI({\result_2_1_1_reg_657[11]_i_10_n_2 ,\result_2_1_1_reg_657[11]_i_11_n_2 ,\result_2_1_1_reg_657[11]_i_12_n_2 ,\result_2_1_1_reg_657[11]_i_13_n_2 }),
        .O({\result_2_1_1_reg_657_reg[11]_i_5_n_6 ,\result_2_1_1_reg_657_reg[11]_i_5_n_7 ,\result_2_1_1_reg_657_reg[11]_i_5_n_8 ,\result_2_1_1_reg_657_reg[11]_i_5_n_9 }),
        .S({\result_2_1_1_reg_657[11]_i_14_n_2 ,\result_2_1_1_reg_657[11]_i_15_n_2 ,\result_2_1_1_reg_657[11]_i_16_n_2 ,\result_2_1_1_reg_657[11]_i_17_n_2 }));
  FDRE \result_2_1_1_reg_657_reg[1] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[1]),
        .Q(result_2_1_1_reg_657[1]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[2] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[2]),
        .Q(result_2_1_1_reg_657[2]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[3] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[3]),
        .Q(result_2_1_1_reg_657[3]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[4] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[4]),
        .Q(result_2_1_1_reg_657[4]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[5] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[5]),
        .Q(result_2_1_1_reg_657[5]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[6] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[6]),
        .Q(result_2_1_1_reg_657[6]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[7] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[7]),
        .Q(result_2_1_1_reg_657[7]),
        .R(1'b0));
  CARRY4 \result_2_1_1_reg_657_reg[7]_i_10 
       (.CI(1'b0),
        .CO({\result_2_1_1_reg_657_reg[7]_i_10_n_2 ,\result_2_1_1_reg_657_reg[7]_i_10_n_3 ,\result_2_1_1_reg_657_reg[7]_i_10_n_4 ,\result_2_1_1_reg_657_reg[7]_i_10_n_5 }),
        .CYINIT(1'b1),
        .DI({\result_2_1_1_reg_657[7]_i_11_n_2 ,\result_2_1_1_reg_657[7]_i_12_n_2 ,\result_2_1_1_reg_657[7]_i_13_n_2 ,\result_2_1_1_reg_657[7]_i_14_n_2 }),
        .O({\result_2_1_1_reg_657_reg[7]_i_10_n_6 ,\result_2_1_1_reg_657_reg[7]_i_10_n_7 ,\result_2_1_1_reg_657_reg[7]_i_10_n_8 ,\result_2_1_1_reg_657_reg[7]_i_10_n_9 }),
        .S({\result_2_1_1_reg_657[7]_i_15_n_2 ,\result_2_1_1_reg_657[7]_i_16_n_2 ,\result_2_1_1_reg_657[7]_i_17_n_2 ,\result_2_1_1_reg_657[7]_i_18_n_2 }));
  FDRE \result_2_1_1_reg_657_reg[8] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[8]),
        .Q(result_2_1_1_reg_657[8]),
        .R(1'b0));
  FDRE \result_2_1_1_reg_657_reg[9] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(result_2_1_1_fu_457_p2[9]),
        .Q(result_2_1_1_reg_657[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \sin_V_data_V_0_payload_A[7]_i_1 
       (.I0(sin_V_data_V_0_sel_wr),
        .I1(sin_V_data_V_0_ack_in),
        .I2(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .O(sin_V_data_V_0_load_A));
  FDRE \sin_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[0]),
        .Q(sin_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[1]),
        .Q(sin_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[2]),
        .Q(sin_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[3]),
        .Q(sin_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[4]),
        .Q(sin_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[5]),
        .Q(sin_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[6]),
        .Q(sin_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[7]),
        .Q(sin_V_data_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \sin_V_data_V_0_payload_B[7]_i_1 
       (.I0(sin_V_data_V_0_sel_wr),
        .I1(sin_V_data_V_0_ack_in),
        .I2(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .O(sin_V_data_V_0_load_B));
  FDRE \sin_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[0]),
        .Q(sin_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[1]),
        .Q(sin_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[2]),
        .Q(sin_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[3]),
        .Q(sin_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[4]),
        .Q(sin_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[5]),
        .Q(sin_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[6]),
        .Q(sin_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[7]),
        .Q(sin_V_data_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sin_V_data_V_0_sel_rd_i_1
       (.I0(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .I1(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sin_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sin_V_data_V_0_sel_rd_i_1_n_2),
        .Q(sin_V_data_V_0_sel),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    sin_V_data_V_0_sel_wr_i_1
       (.I0(sin_V_data_V_0_ack_in),
        .I1(sin_TVALID),
        .I2(sin_V_data_V_0_sel_wr),
        .O(sin_V_data_V_0_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sin_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sin_V_data_V_0_sel_wr_i_1_n_2),
        .Q(sin_V_data_V_0_sel_wr),
        .R(reset));
  LUT5 #(
    .INIT(32'h8A80AA80)) 
    \sin_V_data_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(sin_TVALID),
        .I2(sin_V_data_V_0_ack_in),
        .I3(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .I4(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .O(\sin_V_data_V_0_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \sin_V_data_V_0_state[1]_i_1 
       (.I0(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .I1(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .I2(sin_TVALID),
        .I3(sin_V_data_V_0_ack_in),
        .O(sin_V_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \sin_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sin_V_data_V_0_state[0]_i_1_n_2 ),
        .Q(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sin_V_data_V_0_state),
        .Q(sin_V_data_V_0_ack_in),
        .R(reset));
  LUT5 #(
    .INIT(32'hD0F0C000)) 
    \sin_V_dest_V_0_state[0]_i_1 
       (.I0(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .I1(sin_TVALID),
        .I2(ap_rst_n),
        .I3(sin_TREADY),
        .I4(\sin_V_dest_V_0_state_reg_n_2_[0] ),
        .O(\sin_V_dest_V_0_state[0]_i_1_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sin_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(reset));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \sin_V_dest_V_0_state[1]_i_2 
       (.I0(sin_TVALID),
        .I1(sin_TREADY),
        .I2(\sin_V_dest_V_0_state_reg_n_2_[0] ),
        .I3(\kbuf_2_1_fu_136[7]_i_1_n_2 ),
        .O(sin_V_dest_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \sin_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sin_V_dest_V_0_state[0]_i_1_n_2 ),
        .Q(\sin_V_dest_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sin_V_dest_V_0_state),
        .Q(sin_TREADY),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[0]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[0]),
        .I1(sout_V_data_V_1_payload_A[0]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[1]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[1]),
        .I1(sout_V_data_V_1_payload_A[1]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[2]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[2]),
        .I1(sout_V_data_V_1_payload_A[2]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[3]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[3]),
        .I1(sout_V_data_V_1_payload_A[3]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[4]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[4]),
        .I1(sout_V_data_V_1_payload_A[4]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[5]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[5]),
        .I1(sout_V_data_V_1_payload_A[5]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[6]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[6]),
        .I1(sout_V_data_V_1_payload_A[6]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[7]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[7]),
        .I1(sout_V_data_V_1_payload_A[7]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sout_TLAST[0]_INST_0 
       (.I0(sout_V_last_V_1_payload_B),
        .I1(sout_V_last_V_1_sel),
        .I2(sout_V_last_V_1_payload_A),
        .O(sout_TLAST));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \sout_V_data_V_1_payload_A[0]_i_1 
       (.I0(\sout_V_data_V_1_payload_A_reg[3]_i_2_n_9 ),
        .I1(tmp_4_fu_507_p4[3]),
        .I2(tmp_4_fu_507_p4[0]),
        .I3(tmp_4_fu_507_p4[1]),
        .I4(tmp_4_fu_507_p4[2]),
        .O(tmp_7_fu_539_p1[0]));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \sout_V_data_V_1_payload_A[1]_i_1 
       (.I0(\sout_V_data_V_1_payload_A_reg[3]_i_2_n_8 ),
        .I1(tmp_4_fu_507_p4[3]),
        .I2(tmp_4_fu_507_p4[0]),
        .I3(tmp_4_fu_507_p4[1]),
        .I4(tmp_4_fu_507_p4[2]),
        .O(tmp_7_fu_539_p1[1]));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \sout_V_data_V_1_payload_A[2]_i_1 
       (.I0(\sout_V_data_V_1_payload_A_reg[3]_i_2_n_7 ),
        .I1(tmp_4_fu_507_p4[3]),
        .I2(tmp_4_fu_507_p4[0]),
        .I3(tmp_4_fu_507_p4[1]),
        .I4(tmp_4_fu_507_p4[2]),
        .O(tmp_7_fu_539_p1[2]));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \sout_V_data_V_1_payload_A[3]_i_1 
       (.I0(\sout_V_data_V_1_payload_A_reg[3]_i_2_n_6 ),
        .I1(tmp_4_fu_507_p4[3]),
        .I2(tmp_4_fu_507_p4[0]),
        .I3(tmp_4_fu_507_p4[1]),
        .I4(tmp_4_fu_507_p4[2]),
        .O(tmp_7_fu_539_p1[3]));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[3]_i_3 
       (.I0(result_2_1_1_reg_657[2]),
        .I1(tmp6_reg_662[2]),
        .I2(kbuf_2_0_load_6_reg_652[2]),
        .O(\sout_V_data_V_1_payload_A[3]_i_3_n_2 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[3]_i_4 
       (.I0(result_2_1_1_reg_657[1]),
        .I1(tmp6_reg_662[1]),
        .I2(kbuf_2_0_load_6_reg_652[1]),
        .O(\sout_V_data_V_1_payload_A[3]_i_4_n_2 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[3]_i_5 
       (.I0(result_2_1_1_reg_657[0]),
        .I1(tmp6_reg_662[0]),
        .I2(kbuf_2_0_load_6_reg_652[0]),
        .O(\sout_V_data_V_1_payload_A[3]_i_5_n_2 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[3]_i_6 
       (.I0(result_2_1_1_reg_657[3]),
        .I1(tmp6_reg_662[3]),
        .I2(kbuf_2_0_load_6_reg_652[3]),
        .I3(\sout_V_data_V_1_payload_A[3]_i_3_n_2 ),
        .O(\sout_V_data_V_1_payload_A[3]_i_6_n_2 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[3]_i_7 
       (.I0(result_2_1_1_reg_657[2]),
        .I1(tmp6_reg_662[2]),
        .I2(kbuf_2_0_load_6_reg_652[2]),
        .I3(\sout_V_data_V_1_payload_A[3]_i_4_n_2 ),
        .O(\sout_V_data_V_1_payload_A[3]_i_7_n_2 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[3]_i_8 
       (.I0(result_2_1_1_reg_657[1]),
        .I1(tmp6_reg_662[1]),
        .I2(kbuf_2_0_load_6_reg_652[1]),
        .I3(\sout_V_data_V_1_payload_A[3]_i_5_n_2 ),
        .O(\sout_V_data_V_1_payload_A[3]_i_8_n_2 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sout_V_data_V_1_payload_A[3]_i_9 
       (.I0(result_2_1_1_reg_657[0]),
        .I1(tmp6_reg_662[0]),
        .I2(kbuf_2_0_load_6_reg_652[0]),
        .O(\sout_V_data_V_1_payload_A[3]_i_9_n_2 ));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \sout_V_data_V_1_payload_A[4]_i_1 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_5_n_9 ),
        .I1(tmp_4_fu_507_p4[3]),
        .I2(tmp_4_fu_507_p4[0]),
        .I3(tmp_4_fu_507_p4[1]),
        .I4(tmp_4_fu_507_p4[2]),
        .O(tmp_7_fu_539_p1[4]));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \sout_V_data_V_1_payload_A[5]_i_1 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_5_n_8 ),
        .I1(tmp_4_fu_507_p4[3]),
        .I2(tmp_4_fu_507_p4[0]),
        .I3(tmp_4_fu_507_p4[1]),
        .I4(tmp_4_fu_507_p4[2]),
        .O(tmp_7_fu_539_p1[5]));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \sout_V_data_V_1_payload_A[6]_i_1 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_5_n_7 ),
        .I1(tmp_4_fu_507_p4[3]),
        .I2(tmp_4_fu_507_p4[0]),
        .I3(tmp_4_fu_507_p4[1]),
        .I4(tmp_4_fu_507_p4[2]),
        .O(tmp_7_fu_539_p1[6]));
  LUT4 #(
    .INIT(16'h4500)) 
    \sout_V_data_V_1_payload_A[7]_i_1 
       (.I0(sout_V_data_V_1_sel_wr),
        .I1(sout_V_data_V_1_ack_in),
        .I2(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .I3(tmp_4_fu_507_p4[3]),
        .O(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sout_V_data_V_1_payload_A[7]_i_10 
       (.I0(kbuf_2_0_load_6_reg_652[7]),
        .I1(tmp6_reg_662[7]),
        .I2(result_2_1_1_reg_657[7]),
        .I3(result_2_1_1_reg_657[8]),
        .I4(tmp6_reg_662[8]),
        .O(\sout_V_data_V_1_payload_A[7]_i_10_n_2 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_11 
       (.I0(result_2_1_1_reg_657[6]),
        .I1(tmp6_reg_662[6]),
        .I2(kbuf_2_0_load_6_reg_652[6]),
        .O(\sout_V_data_V_1_payload_A[7]_i_11_n_2 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_12 
       (.I0(result_2_1_1_reg_657[5]),
        .I1(tmp6_reg_662[5]),
        .I2(kbuf_2_0_load_6_reg_652[5]),
        .O(\sout_V_data_V_1_payload_A[7]_i_12_n_2 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_13 
       (.I0(result_2_1_1_reg_657[4]),
        .I1(tmp6_reg_662[4]),
        .I2(kbuf_2_0_load_6_reg_652[4]),
        .O(\sout_V_data_V_1_payload_A[7]_i_13_n_2 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_14 
       (.I0(result_2_1_1_reg_657[3]),
        .I1(tmp6_reg_662[3]),
        .I2(kbuf_2_0_load_6_reg_652[3]),
        .O(\sout_V_data_V_1_payload_A[7]_i_14_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_15 
       (.I0(\sout_V_data_V_1_payload_A[7]_i_11_n_2 ),
        .I1(tmp6_reg_662[7]),
        .I2(result_2_1_1_reg_657[7]),
        .I3(kbuf_2_0_load_6_reg_652[7]),
        .O(\sout_V_data_V_1_payload_A[7]_i_15_n_2 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_16 
       (.I0(result_2_1_1_reg_657[6]),
        .I1(tmp6_reg_662[6]),
        .I2(kbuf_2_0_load_6_reg_652[6]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_12_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_16_n_2 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_17 
       (.I0(result_2_1_1_reg_657[5]),
        .I1(tmp6_reg_662[5]),
        .I2(kbuf_2_0_load_6_reg_652[5]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_13_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_17_n_2 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_18 
       (.I0(result_2_1_1_reg_657[4]),
        .I1(tmp6_reg_662[4]),
        .I2(kbuf_2_0_load_6_reg_652[4]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_14_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_18_n_2 ));
  LUT3 #(
    .INIT(8'h45)) 
    \sout_V_data_V_1_payload_A[7]_i_2 
       (.I0(sout_V_data_V_1_sel_wr),
        .I1(sout_V_data_V_1_ack_in),
        .I2(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .O(sout_V_data_V_1_load_A));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \sout_V_data_V_1_payload_A[7]_i_3 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_5_n_6 ),
        .I1(tmp_4_fu_507_p4[3]),
        .I2(tmp_4_fu_507_p4[0]),
        .I3(tmp_4_fu_507_p4[1]),
        .I4(tmp_4_fu_507_p4[2]),
        .O(tmp_7_fu_539_p1[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sout_V_data_V_1_payload_A[7]_i_6 
       (.I0(result_2_1_1_reg_657[8]),
        .I1(tmp6_reg_662[8]),
        .O(\sout_V_data_V_1_payload_A[7]_i_6_n_2 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_7 
       (.I0(result_2_1_1_reg_657[7]),
        .I1(tmp6_reg_662[7]),
        .I2(kbuf_2_0_load_6_reg_652[7]),
        .O(\sout_V_data_V_1_payload_A[7]_i_7_n_2 ));
  LUT3 #(
    .INIT(8'h78)) 
    \sout_V_data_V_1_payload_A[7]_i_8 
       (.I0(tmp6_reg_662[9]),
        .I1(result_2_1_1_reg_657[9]),
        .I2(result_2_1_1_reg_657[10]),
        .O(\sout_V_data_V_1_payload_A[7]_i_8_n_2 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \sout_V_data_V_1_payload_A[7]_i_9 
       (.I0(tmp6_reg_662[8]),
        .I1(result_2_1_1_reg_657[8]),
        .I2(result_2_1_1_reg_657[9]),
        .I3(tmp6_reg_662[9]),
        .O(\sout_V_data_V_1_payload_A[7]_i_9_n_2 ));
  FDRE \sout_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(tmp_7_fu_539_p1[0]),
        .Q(sout_V_data_V_1_payload_A[0]),
        .R(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(tmp_7_fu_539_p1[1]),
        .Q(sout_V_data_V_1_payload_A[1]),
        .R(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(tmp_7_fu_539_p1[2]),
        .Q(sout_V_data_V_1_payload_A[2]),
        .R(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(tmp_7_fu_539_p1[3]),
        .Q(sout_V_data_V_1_payload_A[3]),
        .R(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  CARRY4 \sout_V_data_V_1_payload_A_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\sout_V_data_V_1_payload_A_reg[3]_i_2_n_2 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_3 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_4 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({\sout_V_data_V_1_payload_A[3]_i_3_n_2 ,\sout_V_data_V_1_payload_A[3]_i_4_n_2 ,\sout_V_data_V_1_payload_A[3]_i_5_n_2 ,1'b0}),
        .O({\sout_V_data_V_1_payload_A_reg[3]_i_2_n_6 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_7 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_8 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_9 }),
        .S({\sout_V_data_V_1_payload_A[3]_i_6_n_2 ,\sout_V_data_V_1_payload_A[3]_i_7_n_2 ,\sout_V_data_V_1_payload_A[3]_i_8_n_2 ,\sout_V_data_V_1_payload_A[3]_i_9_n_2 }));
  FDRE \sout_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(tmp_7_fu_539_p1[4]),
        .Q(sout_V_data_V_1_payload_A[4]),
        .R(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(tmp_7_fu_539_p1[5]),
        .Q(sout_V_data_V_1_payload_A[5]),
        .R(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(tmp_7_fu_539_p1[6]),
        .Q(sout_V_data_V_1_payload_A[6]),
        .R(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(tmp_7_fu_539_p1[7]),
        .Q(sout_V_data_V_1_payload_A[7]),
        .R(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_4 
       (.CI(\sout_V_data_V_1_payload_A_reg[7]_i_5_n_2 ),
        .CO({\NLW_sout_V_data_V_1_payload_A_reg[7]_i_4_CO_UNCONNECTED [3],\sout_V_data_V_1_payload_A_reg[7]_i_4_n_3 ,\sout_V_data_V_1_payload_A_reg[7]_i_4_n_4 ,\sout_V_data_V_1_payload_A_reg[7]_i_4_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,result_2_1_1_reg_657[10],\sout_V_data_V_1_payload_A[7]_i_6_n_2 ,\sout_V_data_V_1_payload_A[7]_i_7_n_2 }),
        .O(tmp_4_fu_507_p4),
        .S({result_2_1_1_reg_657[11],\sout_V_data_V_1_payload_A[7]_i_8_n_2 ,\sout_V_data_V_1_payload_A[7]_i_9_n_2 ,\sout_V_data_V_1_payload_A[7]_i_10_n_2 }));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_5 
       (.CI(\sout_V_data_V_1_payload_A_reg[3]_i_2_n_2 ),
        .CO({\sout_V_data_V_1_payload_A_reg[7]_i_5_n_2 ,\sout_V_data_V_1_payload_A_reg[7]_i_5_n_3 ,\sout_V_data_V_1_payload_A_reg[7]_i_5_n_4 ,\sout_V_data_V_1_payload_A_reg[7]_i_5_n_5 }),
        .CYINIT(1'b0),
        .DI({\sout_V_data_V_1_payload_A[7]_i_11_n_2 ,\sout_V_data_V_1_payload_A[7]_i_12_n_2 ,\sout_V_data_V_1_payload_A[7]_i_13_n_2 ,\sout_V_data_V_1_payload_A[7]_i_14_n_2 }),
        .O({\sout_V_data_V_1_payload_A_reg[7]_i_5_n_6 ,\sout_V_data_V_1_payload_A_reg[7]_i_5_n_7 ,\sout_V_data_V_1_payload_A_reg[7]_i_5_n_8 ,\sout_V_data_V_1_payload_A_reg[7]_i_5_n_9 }),
        .S({\sout_V_data_V_1_payload_A[7]_i_15_n_2 ,\sout_V_data_V_1_payload_A[7]_i_16_n_2 ,\sout_V_data_V_1_payload_A[7]_i_17_n_2 ,\sout_V_data_V_1_payload_A[7]_i_18_n_2 }));
  LUT4 #(
    .INIT(16'h8A00)) 
    \sout_V_data_V_1_payload_B[7]_i_1 
       (.I0(sout_V_data_V_1_sel_wr),
        .I1(sout_V_data_V_1_ack_in),
        .I2(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .I3(tmp_4_fu_507_p4[3]),
        .O(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \sout_V_data_V_1_payload_B[7]_i_2 
       (.I0(sout_V_data_V_1_sel_wr),
        .I1(sout_V_data_V_1_ack_in),
        .I2(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .O(sout_V_data_V_1_load_B));
  FDRE \sout_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(tmp_7_fu_539_p1[0]),
        .Q(sout_V_data_V_1_payload_B[0]),
        .R(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(tmp_7_fu_539_p1[1]),
        .Q(sout_V_data_V_1_payload_B[1]),
        .R(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(tmp_7_fu_539_p1[2]),
        .Q(sout_V_data_V_1_payload_B[2]),
        .R(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(tmp_7_fu_539_p1[3]),
        .Q(sout_V_data_V_1_payload_B[3]),
        .R(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(tmp_7_fu_539_p1[4]),
        .Q(sout_V_data_V_1_payload_B[4]),
        .R(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(tmp_7_fu_539_p1[5]),
        .Q(sout_V_data_V_1_payload_B[5]),
        .R(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(tmp_7_fu_539_p1[6]),
        .Q(sout_V_data_V_1_payload_B[6]),
        .R(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDRE \sout_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(tmp_7_fu_539_p1[7]),
        .Q(sout_V_data_V_1_payload_B[7]),
        .R(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    sout_V_data_V_1_sel_rd_i_1
       (.I0(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .I1(sout_TREADY),
        .I2(sout_V_data_V_1_sel),
        .O(sout_V_data_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sout_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_data_V_1_sel_rd_i_1_n_2),
        .Q(sout_V_data_V_1_sel),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    sout_V_data_V_1_sel_wr_i_1
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_V_data_V_1_sel_wr),
        .O(sout_V_data_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sout_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_data_V_1_sel_wr_i_1_n_2),
        .Q(sout_V_data_V_1_sel_wr),
        .R(reset));
  LUT5 #(
    .INIT(32'h2A00AAAA)) 
    \sout_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(sout_V_data_V_1_ack_in),
        .I2(sout_TREADY),
        .I3(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .I4(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .O(\sout_V_data_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \sout_V_data_V_1_state[1]_i_1 
       (.I0(sout_TREADY),
        .I1(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .I2(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I3(sout_V_data_V_1_ack_in),
        .O(\sout_V_data_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_data_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_data_V_1_state[1]_i_1_n_2 ),
        .Q(sout_V_data_V_1_ack_in),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_dest_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_dest_V_1_state_reg_n_2_[1] ),
        .I4(sout_TVALID),
        .O(\sout_V_dest_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \sout_V_dest_V_1_state[0]_i_2 
       (.I0(tmp_3_reg_638_pp0_iter1_reg),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(lbuf_1_U_n_5),
        .O(\sout_V_dest_V_1_state[0]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_dest_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_dest_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(sout_TVALID),
        .O(\sout_V_dest_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_dest_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_dest_V_1_state[0]_i_1_n_2 ),
        .Q(sout_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_dest_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_dest_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_dest_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_id_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_id_V_1_state_reg_n_2_[1] ),
        .I4(\sout_V_id_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_id_V_1_state[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_id_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_id_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(\sout_V_id_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_id_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_id_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_id_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_id_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_id_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_id_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_id_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_keep_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_keep_V_1_state_reg_n_2_[1] ),
        .I4(\sout_V_keep_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_keep_V_1_state[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_keep_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_keep_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(\sout_V_keep_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_keep_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_keep_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_keep_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_keep_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_keep_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \sout_V_last_V_1_payload_A[0]_i_1 
       (.I0(tmp_last_V_reg_642_pp0_iter1_reg),
        .I1(sout_V_last_V_1_sel_wr),
        .I2(sout_V_last_V_1_ack_in),
        .I3(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I4(sout_V_last_V_1_payload_A),
        .O(\sout_V_last_V_1_payload_A[0]_i_1_n_2 ));
  FDRE \sout_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_last_V_1_payload_A[0]_i_1_n_2 ),
        .Q(sout_V_last_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \sout_V_last_V_1_payload_B[0]_i_1 
       (.I0(tmp_last_V_reg_642_pp0_iter1_reg),
        .I1(sout_V_last_V_1_sel_wr),
        .I2(sout_V_last_V_1_ack_in),
        .I3(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I4(sout_V_last_V_1_payload_B),
        .O(\sout_V_last_V_1_payload_B[0]_i_1_n_2 ));
  FDRE \sout_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_last_V_1_payload_B[0]_i_1_n_2 ),
        .Q(sout_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    sout_V_last_V_1_sel_rd_i_1
       (.I0(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I1(sout_TREADY),
        .I2(sout_V_last_V_1_sel),
        .O(sout_V_last_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sout_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_last_V_1_sel_rd_i_1_n_2),
        .Q(sout_V_last_V_1_sel),
        .R(reset));
  LUT3 #(
    .INIT(8'hB4)) 
    sout_V_last_V_1_sel_wr_i_1
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_V_last_V_1_ack_in),
        .I2(sout_V_last_V_1_sel_wr),
        .O(sout_V_last_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sout_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_last_V_1_sel_wr_i_1_n_2),
        .Q(sout_V_last_V_1_sel_wr),
        .R(reset));
  LUT5 #(
    .INIT(32'h20AAA0A0)) 
    \sout_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(sout_TREADY),
        .I2(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I3(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I4(sout_V_last_V_1_ack_in),
        .O(\sout_V_last_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \sout_V_last_V_1_state[1]_i_1 
       (.I0(sout_TREADY),
        .I1(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I2(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I3(sout_V_last_V_1_ack_in),
        .O(sout_V_last_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_last_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_last_V_1_state),
        .Q(sout_V_last_V_1_ack_in),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_strb_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_strb_V_1_state_reg_n_2_[1] ),
        .I4(\sout_V_strb_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_strb_V_1_state[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_strb_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_strb_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(\sout_V_strb_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_strb_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_strb_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_strb_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_strb_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_strb_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_user_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_user_V_1_state_reg_n_2_[1] ),
        .I4(\sout_V_user_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_user_V_1_state[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_user_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_user_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(\sout_V_user_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_user_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_user_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_user_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_user_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_user_V_1_state_reg_n_2_[1] ),
        .R(reset));
  FDRE \tmp6_reg_662_reg[0] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[0]),
        .Q(tmp6_reg_662[0]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[1] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[1]),
        .Q(tmp6_reg_662[1]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[2] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[2]),
        .Q(tmp6_reg_662[2]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[3] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[3]),
        .Q(tmp6_reg_662[3]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[4] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[4]),
        .Q(tmp6_reg_662[4]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[5] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[5]),
        .Q(tmp6_reg_662[5]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[6] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[6]),
        .Q(tmp6_reg_662[6]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[7] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[7]),
        .Q(tmp6_reg_662[7]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[8] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[8]),
        .Q(tmp6_reg_662[8]),
        .R(1'b0));
  FDRE \tmp6_reg_662_reg[9] 
       (.C(ap_clk),
        .CE(result_2_1_1_reg_6570),
        .D(tmp6_fu_484_p2[9]),
        .Q(tmp6_reg_662[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_3_reg_638[0]_i_1 
       (.I0(lbuf_1_U_n_5),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(exitcond1_fu_253_p2),
        .O(lbuf_0_addr_reg_6180));
  LUT3 #(
    .INIT(8'hF8)) 
    \tmp_3_reg_638[0]_i_2 
       (.I0(i_reg_228_reg__0[9]),
        .I1(\tmp_3_reg_638[0]_i_3_n_2 ),
        .I2(\tmp_3_reg_638[0]_i_4_n_2 ),
        .O(tmp_3_fu_294_p2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tmp_3_reg_638[0]_i_3 
       (.I0(\tmp_3_reg_638[0]_i_5_n_2 ),
        .I1(i_reg_228_reg__0[2]),
        .I2(i_reg_228_reg__0[4]),
        .I3(i_reg_228_reg__0[3]),
        .I4(i_reg_228_reg__0[0]),
        .I5(i_reg_228_reg__0[1]),
        .O(\tmp_3_reg_638[0]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tmp_3_reg_638[0]_i_4 
       (.I0(\tmp_3_reg_638[0]_i_6_n_2 ),
        .I1(i_reg_228_reg__0[17]),
        .I2(i_reg_228_reg__0[10]),
        .I3(i_reg_228_reg),
        .I4(i_reg_228_reg__0[11]),
        .I5(i_reg_228_reg__0[12]),
        .O(\tmp_3_reg_638[0]_i_4_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp_3_reg_638[0]_i_5 
       (.I0(i_reg_228_reg__0[7]),
        .I1(i_reg_228_reg__0[6]),
        .I2(i_reg_228_reg__0[8]),
        .I3(i_reg_228_reg__0[5]),
        .O(\tmp_3_reg_638[0]_i_5_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp_3_reg_638[0]_i_6 
       (.I0(i_reg_228_reg__0[15]),
        .I1(i_reg_228_reg__0[14]),
        .I2(i_reg_228_reg__0[16]),
        .I3(i_reg_228_reg__0[13]),
        .O(\tmp_3_reg_638[0]_i_6_n_2 ));
  LUT2 #(
    .INIT(4'h4)) 
    \tmp_3_reg_638_pp0_iter1_reg[0]_i_1 
       (.I0(lbuf_1_U_n_5),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(exitcond1_reg_6090));
  FDRE \tmp_3_reg_638_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(tmp_3_reg_638),
        .Q(tmp_3_reg_638_pp0_iter1_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \tmp_3_reg_638_pp0_iter2_reg[0]_i_1 
       (.I0(tmp_3_reg_638_pp0_iter1_reg),
        .I1(lbuf_1_U_n_5),
        .I2(tmp_3_reg_638_pp0_iter2_reg),
        .O(\tmp_3_reg_638_pp0_iter2_reg[0]_i_1_n_2 ));
  FDRE \tmp_3_reg_638_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_3_reg_638_pp0_iter2_reg[0]_i_1_n_2 ),
        .Q(tmp_3_reg_638_pp0_iter2_reg),
        .R(1'b0));
  FDRE \tmp_3_reg_638_reg[0] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(tmp_3_fu_294_p2),
        .Q(tmp_3_reg_638),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEEEEEEEEEEEEEE)) 
    \tmp_5_reg_624[0]_i_1 
       (.I0(\tmp_3_reg_638[0]_i_4_n_2 ),
        .I1(i_reg_228_reg__0[9]),
        .I2(\tmp_5_reg_624[0]_i_2_n_2 ),
        .I3(i_reg_228_reg__0[3]),
        .I4(i_reg_228_reg__0[7]),
        .I5(i_reg_228_reg__0[4]),
        .O(tmp_5_fu_271_p2));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \tmp_5_reg_624[0]_i_2 
       (.I0(i_reg_228_reg__0[1]),
        .I1(i_reg_228_reg__0[0]),
        .I2(i_reg_228_reg__0[8]),
        .I3(i_reg_228_reg__0[2]),
        .I4(i_reg_228_reg__0[5]),
        .I5(i_reg_228_reg__0[6]),
        .O(\tmp_5_reg_624[0]_i_2_n_2 ));
  FDRE \tmp_5_reg_624_reg[0] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6180),
        .D(tmp_5_fu_271_p2),
        .Q(tmp_5_reg_624),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0003AAAAAAAAAAAA)) 
    \tmp_last_V_reg_642[0]_i_1 
       (.I0(\tmp_last_V_reg_642_reg_n_2_[0] ),
        .I1(\exitcond1_reg_609[0]_i_2_n_2 ),
        .I2(\exitcond1_reg_609[0]_i_3_n_2 ),
        .I3(i_reg_228_reg__0[0]),
        .I4(lbuf_0_addr_reg_6180),
        .I5(tmp_3_fu_294_p2),
        .O(\tmp_last_V_reg_642[0]_i_1_n_2 ));
  FDRE \tmp_last_V_reg_642_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6090),
        .D(\tmp_last_V_reg_642_reg_n_2_[0] ),
        .Q(tmp_last_V_reg_642_pp0_iter1_reg),
        .R(1'b0));
  FDRE \tmp_last_V_reg_642_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_last_V_reg_642[0]_i_1_n_2 ),
        .Q(\tmp_last_V_reg_642_reg_n_2_[0] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0
   (D,
    \kbuf_0_1_fu_112_reg[7] ,
    ap_clk,
    E,
    ce0,
    Q,
    out,
    ram_reg,
    WEA,
    \result_2_1_1_reg_657_reg[11] ,
    O,
    \result_2_1_1_reg_657_reg[11]_0 ,
    \result_2_1_1_reg_657_reg[3] );
  output [7:0]D;
  output [11:0]\kbuf_0_1_fu_112_reg[7] ;
  input ap_clk;
  input [0:0]E;
  input ce0;
  input [8:0]Q;
  input [8:0]out;
  input [7:0]ram_reg;
  input [0:0]WEA;
  input [7:0]\result_2_1_1_reg_657_reg[11] ;
  input [3:0]O;
  input [3:0]\result_2_1_1_reg_657_reg[11]_0 ;
  input [3:0]\result_2_1_1_reg_657_reg[3] ;

  wire [7:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [8:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ce0;
  wire [11:0]\kbuf_0_1_fu_112_reg[7] ;
  wire [8:0]out;
  wire [7:0]ram_reg;
  wire [7:0]\result_2_1_1_reg_657_reg[11] ;
  wire [3:0]\result_2_1_1_reg_657_reg[11]_0 ;
  wire [3:0]\result_2_1_1_reg_657_reg[3] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_ram_1 hw_conv_lbuf_0_ram_U
       (.D(D),
        .E(E),
        .O(O),
        .Q(Q),
        .WEA(WEA),
        .ap_clk(ap_clk),
        .ce0(ce0),
        .\kbuf_0_1_fu_112_reg[7] (\kbuf_0_1_fu_112_reg[7] ),
        .out(out),
        .ram_reg_0(ram_reg),
        .\result_2_1_1_reg_657_reg[11] (\result_2_1_1_reg_657_reg[11] ),
        .\result_2_1_1_reg_657_reg[11]_0 (\result_2_1_1_reg_657_reg[11]_0 ),
        .\result_2_1_1_reg_657_reg[3] (\result_2_1_1_reg_657_reg[3] ));
endmodule

(* ORIG_REF_NAME = "hw_conv_lbuf_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_0
   (E,
    ce0,
    WEA,
    \sin_V_data_V_0_state_reg[0] ,
    D,
    ram_reg,
    ap_clk,
    Q,
    out,
    ram_reg_0,
    ram_reg_1,
    ap_enable_reg_pp0_iter0,
    i_reg_228_reg,
    ap_enable_reg_pp0_iter2,
    tmp_3_reg_638_pp0_iter1_reg,
    ram_reg_i_4,
    tmp_3_reg_638_pp0_iter2_reg,
    sout_V_data_V_1_ack_in,
    \tmp6_reg_662_reg[9] ,
    tmp_5_reg_624,
    \kbuf_1_1_fu_124_reg[7] ,
    \tmp6_reg_662_reg[9]_0 ,
    ram_reg_2,
    ap_enable_reg_pp0_iter1,
    ram_reg_3);
  output [0:0]E;
  output ce0;
  output [0:0]WEA;
  output \sin_V_data_V_0_state_reg[0] ;
  output [9:0]D;
  output [7:0]ram_reg;
  input ap_clk;
  input [8:0]Q;
  input [8:0]out;
  input [7:0]ram_reg_0;
  input ram_reg_1;
  input ap_enable_reg_pp0_iter0;
  input [0:0]i_reg_228_reg;
  input ap_enable_reg_pp0_iter2;
  input tmp_3_reg_638_pp0_iter1_reg;
  input ram_reg_i_4;
  input tmp_3_reg_638_pp0_iter2_reg;
  input sout_V_data_V_1_ack_in;
  input [7:0]\tmp6_reg_662_reg[9] ;
  input tmp_5_reg_624;
  input [7:0]\kbuf_1_1_fu_124_reg[7] ;
  input [7:0]\tmp6_reg_662_reg[9]_0 ;
  input [0:0]ram_reg_2;
  input ap_enable_reg_pp0_iter1;
  input ram_reg_3;

  wire [9:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ce0;
  wire [0:0]i_reg_228_reg;
  wire [7:0]\kbuf_1_1_fu_124_reg[7] ;
  wire [8:0]out;
  wire [7:0]ram_reg;
  wire [7:0]ram_reg_0;
  wire ram_reg_1;
  wire [0:0]ram_reg_2;
  wire ram_reg_3;
  wire ram_reg_i_4;
  wire \sin_V_data_V_0_state_reg[0] ;
  wire sout_V_data_V_1_ack_in;
  wire [7:0]\tmp6_reg_662_reg[9] ;
  wire [7:0]\tmp6_reg_662_reg[9]_0 ;
  wire tmp_3_reg_638_pp0_iter1_reg;
  wire tmp_3_reg_638_pp0_iter2_reg;
  wire tmp_5_reg_624;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_ram hw_conv_lbuf_0_ram_U
       (.D(D),
        .E(E),
        .Q(Q),
        .WEA(WEA),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ce0(ce0),
        .i_reg_228_reg(i_reg_228_reg),
        .\kbuf_1_1_fu_124_reg[7] (\kbuf_1_1_fu_124_reg[7] ),
        .out(out),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_2(ram_reg_1),
        .ram_reg_3(ram_reg_2),
        .ram_reg_4(ram_reg_3),
        .ram_reg_i_4_0(ram_reg_i_4),
        .\sin_V_data_V_0_state_reg[0] (\sin_V_data_V_0_state_reg[0] ),
        .sout_V_data_V_1_ack_in(sout_V_data_V_1_ack_in),
        .\tmp6_reg_662_reg[9] (\tmp6_reg_662_reg[9] ),
        .\tmp6_reg_662_reg[9]_0 (\tmp6_reg_662_reg[9]_0 ),
        .tmp_3_reg_638_pp0_iter1_reg(tmp_3_reg_638_pp0_iter1_reg),
        .tmp_3_reg_638_pp0_iter2_reg(tmp_3_reg_638_pp0_iter2_reg),
        .tmp_5_reg_624(tmp_5_reg_624));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_ram
   (E,
    ce0,
    WEA,
    \sin_V_data_V_0_state_reg[0] ,
    D,
    ram_reg_0,
    ap_clk,
    Q,
    out,
    ram_reg_1,
    ram_reg_2,
    ap_enable_reg_pp0_iter0,
    i_reg_228_reg,
    ap_enable_reg_pp0_iter2,
    tmp_3_reg_638_pp0_iter1_reg,
    ram_reg_i_4_0,
    tmp_3_reg_638_pp0_iter2_reg,
    sout_V_data_V_1_ack_in,
    \tmp6_reg_662_reg[9] ,
    tmp_5_reg_624,
    \kbuf_1_1_fu_124_reg[7] ,
    \tmp6_reg_662_reg[9]_0 ,
    ram_reg_3,
    ap_enable_reg_pp0_iter1,
    ram_reg_4);
  output [0:0]E;
  output ce0;
  output [0:0]WEA;
  output \sin_V_data_V_0_state_reg[0] ;
  output [9:0]D;
  output [7:0]ram_reg_0;
  input ap_clk;
  input [8:0]Q;
  input [8:0]out;
  input [7:0]ram_reg_1;
  input ram_reg_2;
  input ap_enable_reg_pp0_iter0;
  input [0:0]i_reg_228_reg;
  input ap_enable_reg_pp0_iter2;
  input tmp_3_reg_638_pp0_iter1_reg;
  input ram_reg_i_4_0;
  input tmp_3_reg_638_pp0_iter2_reg;
  input sout_V_data_V_1_ack_in;
  input [7:0]\tmp6_reg_662_reg[9] ;
  input tmp_5_reg_624;
  input [7:0]\kbuf_1_1_fu_124_reg[7] ;
  input [7:0]\tmp6_reg_662_reg[9]_0 ;
  input [0:0]ram_reg_3;
  input ap_enable_reg_pp0_iter1;
  input ram_reg_4;

  wire [9:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ce0;
  wire [0:0]i_reg_228_reg;
  wire [7:0]\kbuf_1_1_fu_124_reg[7] ;
  wire [7:0]lbuf_1_q0;
  wire [8:0]out;
  wire [7:0]ram_reg_0;
  wire [7:0]ram_reg_1;
  wire ram_reg_2;
  wire [0:0]ram_reg_3;
  wire ram_reg_4;
  wire ram_reg_i_4_0;
  wire ram_reg_i_5_n_2;
  wire \sin_V_data_V_0_state_reg[0] ;
  wire sout_V_data_V_1_ack_in;
  wire \tmp6_reg_662[3]_i_2_n_2 ;
  wire \tmp6_reg_662[3]_i_3_n_2 ;
  wire \tmp6_reg_662[3]_i_4_n_2 ;
  wire \tmp6_reg_662[3]_i_5_n_2 ;
  wire \tmp6_reg_662[3]_i_6_n_2 ;
  wire \tmp6_reg_662[3]_i_7_n_2 ;
  wire \tmp6_reg_662[3]_i_8_n_2 ;
  wire \tmp6_reg_662[7]_i_2_n_2 ;
  wire \tmp6_reg_662[7]_i_3_n_2 ;
  wire \tmp6_reg_662[7]_i_4_n_2 ;
  wire \tmp6_reg_662[7]_i_5_n_2 ;
  wire \tmp6_reg_662[7]_i_6_n_2 ;
  wire \tmp6_reg_662[7]_i_7_n_2 ;
  wire \tmp6_reg_662[7]_i_8_n_2 ;
  wire \tmp6_reg_662[7]_i_9_n_2 ;
  wire \tmp6_reg_662[9]_i_2_n_2 ;
  wire \tmp6_reg_662_reg[3]_i_1_n_2 ;
  wire \tmp6_reg_662_reg[3]_i_1_n_3 ;
  wire \tmp6_reg_662_reg[3]_i_1_n_4 ;
  wire \tmp6_reg_662_reg[3]_i_1_n_5 ;
  wire \tmp6_reg_662_reg[7]_i_1_n_2 ;
  wire \tmp6_reg_662_reg[7]_i_1_n_3 ;
  wire \tmp6_reg_662_reg[7]_i_1_n_4 ;
  wire \tmp6_reg_662_reg[7]_i_1_n_5 ;
  wire [7:0]\tmp6_reg_662_reg[9] ;
  wire [7:0]\tmp6_reg_662_reg[9]_0 ;
  wire tmp_3_reg_638_pp0_iter1_reg;
  wire tmp_3_reg_638_pp0_iter2_reg;
  wire tmp_5_reg_624;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]\NLW_tmp6_reg_662_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp6_reg_662_reg[9]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_1_1_fu_124[0]_i_1 
       (.I0(lbuf_1_q0[0]),
        .I1(\kbuf_1_1_fu_124_reg[7] [0]),
        .I2(tmp_5_reg_624),
        .O(ram_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_1_1_fu_124[1]_i_1 
       (.I0(lbuf_1_q0[1]),
        .I1(\kbuf_1_1_fu_124_reg[7] [1]),
        .I2(tmp_5_reg_624),
        .O(ram_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_1_1_fu_124[2]_i_1 
       (.I0(lbuf_1_q0[2]),
        .I1(\kbuf_1_1_fu_124_reg[7] [2]),
        .I2(tmp_5_reg_624),
        .O(ram_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_1_1_fu_124[3]_i_1 
       (.I0(lbuf_1_q0[3]),
        .I1(\kbuf_1_1_fu_124_reg[7] [3]),
        .I2(tmp_5_reg_624),
        .O(ram_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_1_1_fu_124[4]_i_1 
       (.I0(lbuf_1_q0[4]),
        .I1(\kbuf_1_1_fu_124_reg[7] [4]),
        .I2(tmp_5_reg_624),
        .O(ram_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_1_1_fu_124[5]_i_1 
       (.I0(lbuf_1_q0[5]),
        .I1(\kbuf_1_1_fu_124_reg[7] [5]),
        .I2(tmp_5_reg_624),
        .O(ram_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_1_1_fu_124[6]_i_1 
       (.I0(lbuf_1_q0[6]),
        .I1(\kbuf_1_1_fu_124_reg[7] [6]),
        .I2(tmp_5_reg_624),
        .O(ram_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_1_1_fu_124[7]_i_1 
       (.I0(lbuf_1_q0[7]),
        .I1(\kbuf_1_1_fu_124_reg[7] [7]),
        .I2(tmp_5_reg_624),
        .O(ram_reg_0[7]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4072" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:8],lbuf_1_q0}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(E),
        .ENBWREN(ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0040)) 
    ram_reg_i_1
       (.I0(\sin_V_data_V_0_state_reg[0] ),
        .I1(ram_reg_3),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ram_reg_4),
        .O(E));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_i_2
       (.I0(\sin_V_data_V_0_state_reg[0] ),
        .I1(ram_reg_3),
        .I2(ap_enable_reg_pp0_iter0),
        .O(ce0));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_i_3
       (.I0(\sin_V_data_V_0_state_reg[0] ),
        .I1(ram_reg_3),
        .I2(ap_enable_reg_pp0_iter1),
        .O(WEA));
  LUT4 #(
    .INIT(16'hFF04)) 
    ram_reg_i_4
       (.I0(ram_reg_2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(i_reg_228_reg),
        .I3(ram_reg_i_5_n_2),
        .O(\sin_V_data_V_0_state_reg[0] ));
  LUT5 #(
    .INIT(32'h0000F888)) 
    ram_reg_i_5
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(tmp_3_reg_638_pp0_iter1_reg),
        .I2(ram_reg_i_4_0),
        .I3(tmp_3_reg_638_pp0_iter2_reg),
        .I4(sout_V_data_V_1_ack_in),
        .O(ram_reg_i_5_n_2));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    \tmp6_reg_662[3]_i_2 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [2]),
        .I2(lbuf_1_q0[2]),
        .I3(\tmp6_reg_662_reg[9] [2]),
        .I4(\tmp6_reg_662_reg[9]_0 [2]),
        .O(\tmp6_reg_662[3]_i_2_n_2 ));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    \tmp6_reg_662[3]_i_3 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [1]),
        .I2(lbuf_1_q0[1]),
        .I3(\tmp6_reg_662_reg[9] [1]),
        .I4(\tmp6_reg_662_reg[9]_0 [1]),
        .O(\tmp6_reg_662[3]_i_3_n_2 ));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    \tmp6_reg_662[3]_i_4 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [0]),
        .I2(lbuf_1_q0[0]),
        .I3(\tmp6_reg_662_reg[9] [0]),
        .I4(\tmp6_reg_662_reg[9]_0 [0]),
        .O(\tmp6_reg_662[3]_i_4_n_2 ));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    \tmp6_reg_662[3]_i_5 
       (.I0(\tmp6_reg_662[3]_i_2_n_2 ),
        .I1(\tmp6_reg_662_reg[9] [3]),
        .I2(tmp_5_reg_624),
        .I3(\kbuf_1_1_fu_124_reg[7] [3]),
        .I4(lbuf_1_q0[3]),
        .I5(\tmp6_reg_662_reg[9]_0 [3]),
        .O(\tmp6_reg_662[3]_i_5_n_2 ));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    \tmp6_reg_662[3]_i_6 
       (.I0(\tmp6_reg_662[3]_i_3_n_2 ),
        .I1(\tmp6_reg_662_reg[9] [2]),
        .I2(tmp_5_reg_624),
        .I3(\kbuf_1_1_fu_124_reg[7] [2]),
        .I4(lbuf_1_q0[2]),
        .I5(\tmp6_reg_662_reg[9]_0 [2]),
        .O(\tmp6_reg_662[3]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    \tmp6_reg_662[3]_i_7 
       (.I0(\tmp6_reg_662[3]_i_4_n_2 ),
        .I1(\tmp6_reg_662_reg[9] [1]),
        .I2(tmp_5_reg_624),
        .I3(\kbuf_1_1_fu_124_reg[7] [1]),
        .I4(lbuf_1_q0[1]),
        .I5(\tmp6_reg_662_reg[9]_0 [1]),
        .O(\tmp6_reg_662[3]_i_7_n_2 ));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'hE41B1BE4)) 
    \tmp6_reg_662[3]_i_8 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [0]),
        .I2(lbuf_1_q0[0]),
        .I3(\tmp6_reg_662_reg[9] [0]),
        .I4(\tmp6_reg_662_reg[9]_0 [0]),
        .O(\tmp6_reg_662[3]_i_8_n_2 ));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    \tmp6_reg_662[7]_i_2 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [6]),
        .I2(lbuf_1_q0[6]),
        .I3(\tmp6_reg_662_reg[9] [6]),
        .I4(\tmp6_reg_662_reg[9]_0 [6]),
        .O(\tmp6_reg_662[7]_i_2_n_2 ));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    \tmp6_reg_662[7]_i_3 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [5]),
        .I2(lbuf_1_q0[5]),
        .I3(\tmp6_reg_662_reg[9] [5]),
        .I4(\tmp6_reg_662_reg[9]_0 [5]),
        .O(\tmp6_reg_662[7]_i_3_n_2 ));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    \tmp6_reg_662[7]_i_4 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [4]),
        .I2(lbuf_1_q0[4]),
        .I3(\tmp6_reg_662_reg[9] [4]),
        .I4(\tmp6_reg_662_reg[9]_0 [4]),
        .O(\tmp6_reg_662[7]_i_4_n_2 ));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    \tmp6_reg_662[7]_i_5 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [3]),
        .I2(lbuf_1_q0[3]),
        .I3(\tmp6_reg_662_reg[9] [3]),
        .I4(\tmp6_reg_662_reg[9]_0 [3]),
        .O(\tmp6_reg_662[7]_i_5_n_2 ));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    \tmp6_reg_662[7]_i_6 
       (.I0(\tmp6_reg_662[7]_i_2_n_2 ),
        .I1(\tmp6_reg_662_reg[9] [7]),
        .I2(tmp_5_reg_624),
        .I3(\kbuf_1_1_fu_124_reg[7] [7]),
        .I4(lbuf_1_q0[7]),
        .I5(\tmp6_reg_662_reg[9]_0 [7]),
        .O(\tmp6_reg_662[7]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    \tmp6_reg_662[7]_i_7 
       (.I0(\tmp6_reg_662[7]_i_3_n_2 ),
        .I1(\tmp6_reg_662_reg[9] [6]),
        .I2(tmp_5_reg_624),
        .I3(\kbuf_1_1_fu_124_reg[7] [6]),
        .I4(lbuf_1_q0[6]),
        .I5(\tmp6_reg_662_reg[9]_0 [6]),
        .O(\tmp6_reg_662[7]_i_7_n_2 ));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    \tmp6_reg_662[7]_i_8 
       (.I0(\tmp6_reg_662[7]_i_4_n_2 ),
        .I1(\tmp6_reg_662_reg[9] [5]),
        .I2(tmp_5_reg_624),
        .I3(\kbuf_1_1_fu_124_reg[7] [5]),
        .I4(lbuf_1_q0[5]),
        .I5(\tmp6_reg_662_reg[9]_0 [5]),
        .O(\tmp6_reg_662[7]_i_8_n_2 ));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    \tmp6_reg_662[7]_i_9 
       (.I0(\tmp6_reg_662[7]_i_5_n_2 ),
        .I1(\tmp6_reg_662_reg[9] [4]),
        .I2(tmp_5_reg_624),
        .I3(\kbuf_1_1_fu_124_reg[7] [4]),
        .I4(lbuf_1_q0[4]),
        .I5(\tmp6_reg_662_reg[9]_0 [4]),
        .O(\tmp6_reg_662[7]_i_9_n_2 ));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    \tmp6_reg_662[9]_i_2 
       (.I0(tmp_5_reg_624),
        .I1(\kbuf_1_1_fu_124_reg[7] [7]),
        .I2(lbuf_1_q0[7]),
        .I3(\tmp6_reg_662_reg[9] [7]),
        .I4(\tmp6_reg_662_reg[9]_0 [7]),
        .O(\tmp6_reg_662[9]_i_2_n_2 ));
  CARRY4 \tmp6_reg_662_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\tmp6_reg_662_reg[3]_i_1_n_2 ,\tmp6_reg_662_reg[3]_i_1_n_3 ,\tmp6_reg_662_reg[3]_i_1_n_4 ,\tmp6_reg_662_reg[3]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\tmp6_reg_662[3]_i_2_n_2 ,\tmp6_reg_662[3]_i_3_n_2 ,\tmp6_reg_662[3]_i_4_n_2 ,1'b0}),
        .O(D[3:0]),
        .S({\tmp6_reg_662[3]_i_5_n_2 ,\tmp6_reg_662[3]_i_6_n_2 ,\tmp6_reg_662[3]_i_7_n_2 ,\tmp6_reg_662[3]_i_8_n_2 }));
  CARRY4 \tmp6_reg_662_reg[7]_i_1 
       (.CI(\tmp6_reg_662_reg[3]_i_1_n_2 ),
        .CO({\tmp6_reg_662_reg[7]_i_1_n_2 ,\tmp6_reg_662_reg[7]_i_1_n_3 ,\tmp6_reg_662_reg[7]_i_1_n_4 ,\tmp6_reg_662_reg[7]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\tmp6_reg_662[7]_i_2_n_2 ,\tmp6_reg_662[7]_i_3_n_2 ,\tmp6_reg_662[7]_i_4_n_2 ,\tmp6_reg_662[7]_i_5_n_2 }),
        .O(D[7:4]),
        .S({\tmp6_reg_662[7]_i_6_n_2 ,\tmp6_reg_662[7]_i_7_n_2 ,\tmp6_reg_662[7]_i_8_n_2 ,\tmp6_reg_662[7]_i_9_n_2 }));
  CARRY4 \tmp6_reg_662_reg[9]_i_1 
       (.CI(\tmp6_reg_662_reg[7]_i_1_n_2 ),
        .CO({\NLW_tmp6_reg_662_reg[9]_i_1_CO_UNCONNECTED [3:2],D[9],\NLW_tmp6_reg_662_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp6_reg_662_reg[9]_i_1_O_UNCONNECTED [3:1],D[8]}),
        .S({1'b0,1'b0,1'b1,\tmp6_reg_662[9]_i_2_n_2 }));
endmodule

(* ORIG_REF_NAME = "hw_conv_lbuf_0_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_ram_1
   (D,
    \kbuf_0_1_fu_112_reg[7] ,
    ap_clk,
    E,
    ce0,
    Q,
    out,
    ram_reg_0,
    WEA,
    \result_2_1_1_reg_657_reg[11] ,
    O,
    \result_2_1_1_reg_657_reg[11]_0 ,
    \result_2_1_1_reg_657_reg[3] );
  output [7:0]D;
  output [11:0]\kbuf_0_1_fu_112_reg[7] ;
  input ap_clk;
  input [0:0]E;
  input ce0;
  input [8:0]Q;
  input [8:0]out;
  input [7:0]ram_reg_0;
  input [0:0]WEA;
  input [7:0]\result_2_1_1_reg_657_reg[11] ;
  input [3:0]O;
  input [3:0]\result_2_1_1_reg_657_reg[11]_0 ;
  input [3:0]\result_2_1_1_reg_657_reg[3] ;

  wire [7:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [8:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ce0;
  wire [11:0]\kbuf_0_1_fu_112_reg[7] ;
  wire [8:0]out;
  wire [7:0]ram_reg_0;
  wire \result_2_1_1_reg_657[11]_i_4_n_2 ;
  wire \result_2_1_1_reg_657[3]_i_2_n_2 ;
  wire \result_2_1_1_reg_657[3]_i_3_n_2 ;
  wire \result_2_1_1_reg_657[3]_i_4_n_2 ;
  wire \result_2_1_1_reg_657[3]_i_5_n_2 ;
  wire \result_2_1_1_reg_657[3]_i_6_n_2 ;
  wire \result_2_1_1_reg_657[3]_i_7_n_2 ;
  wire \result_2_1_1_reg_657[3]_i_8_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_2_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_3_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_4_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_5_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_6_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_7_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_8_n_2 ;
  wire \result_2_1_1_reg_657[7]_i_9_n_2 ;
  wire [7:0]\result_2_1_1_reg_657_reg[11] ;
  wire [3:0]\result_2_1_1_reg_657_reg[11]_0 ;
  wire \result_2_1_1_reg_657_reg[11]_i_2_n_3 ;
  wire \result_2_1_1_reg_657_reg[11]_i_2_n_4 ;
  wire \result_2_1_1_reg_657_reg[11]_i_2_n_5 ;
  wire [3:0]\result_2_1_1_reg_657_reg[3] ;
  wire \result_2_1_1_reg_657_reg[3]_i_1_n_2 ;
  wire \result_2_1_1_reg_657_reg[3]_i_1_n_3 ;
  wire \result_2_1_1_reg_657_reg[3]_i_1_n_4 ;
  wire \result_2_1_1_reg_657_reg[3]_i_1_n_5 ;
  wire \result_2_1_1_reg_657_reg[7]_i_1_n_2 ;
  wire \result_2_1_1_reg_657_reg[7]_i_1_n_3 ;
  wire \result_2_1_1_reg_657_reg[7]_i_1_n_4 ;
  wire \result_2_1_1_reg_657_reg[7]_i_1_n_5 ;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]\NLW_result_2_1_1_reg_657_reg[11]_i_2_CO_UNCONNECTED ;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4072" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:8],D}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(E),
        .ENBWREN(ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    \result_2_1_1_reg_657[11]_i_4 
       (.I0(\result_2_1_1_reg_657_reg[11] [7]),
        .I1(D[7]),
        .I2(\result_2_1_1_reg_657_reg[11]_0 [3]),
        .I3(O[0]),
        .O(\result_2_1_1_reg_657[11]_i_4_n_2 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_2_1_1_reg_657[3]_i_2 
       (.I0(\result_2_1_1_reg_657_reg[3] [2]),
        .I1(D[2]),
        .I2(\result_2_1_1_reg_657_reg[11] [2]),
        .O(\result_2_1_1_reg_657[3]_i_2_n_2 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_2_1_1_reg_657[3]_i_3 
       (.I0(\result_2_1_1_reg_657_reg[3] [1]),
        .I1(D[1]),
        .I2(\result_2_1_1_reg_657_reg[11] [1]),
        .O(\result_2_1_1_reg_657[3]_i_3_n_2 ));
  (* HLUTNM = "lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_2_1_1_reg_657[3]_i_4 
       (.I0(D[0]),
        .I1(\result_2_1_1_reg_657_reg[3] [0]),
        .O(\result_2_1_1_reg_657[3]_i_4_n_2 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result_2_1_1_reg_657[3]_i_5 
       (.I0(\result_2_1_1_reg_657_reg[3] [3]),
        .I1(D[3]),
        .I2(\result_2_1_1_reg_657_reg[11] [3]),
        .I3(\result_2_1_1_reg_657[3]_i_2_n_2 ),
        .O(\result_2_1_1_reg_657[3]_i_5_n_2 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result_2_1_1_reg_657[3]_i_6 
       (.I0(\result_2_1_1_reg_657_reg[3] [2]),
        .I1(D[2]),
        .I2(\result_2_1_1_reg_657_reg[11] [2]),
        .I3(\result_2_1_1_reg_657[3]_i_3_n_2 ),
        .O(\result_2_1_1_reg_657[3]_i_6_n_2 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result_2_1_1_reg_657[3]_i_7 
       (.I0(\result_2_1_1_reg_657_reg[3] [1]),
        .I1(D[1]),
        .I2(\result_2_1_1_reg_657_reg[11] [1]),
        .I3(\result_2_1_1_reg_657[3]_i_4_n_2 ),
        .O(\result_2_1_1_reg_657[3]_i_7_n_2 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \result_2_1_1_reg_657[3]_i_8 
       (.I0(D[0]),
        .I1(\result_2_1_1_reg_657_reg[3] [0]),
        .I2(\result_2_1_1_reg_657_reg[11] [0]),
        .O(\result_2_1_1_reg_657[3]_i_8_n_2 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_2_1_1_reg_657[7]_i_2 
       (.I0(\result_2_1_1_reg_657_reg[11]_0 [2]),
        .I1(D[6]),
        .I2(\result_2_1_1_reg_657_reg[11] [6]),
        .O(\result_2_1_1_reg_657[7]_i_2_n_2 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_2_1_1_reg_657[7]_i_3 
       (.I0(\result_2_1_1_reg_657_reg[11]_0 [1]),
        .I1(D[5]),
        .I2(\result_2_1_1_reg_657_reg[11] [5]),
        .O(\result_2_1_1_reg_657[7]_i_3_n_2 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_2_1_1_reg_657[7]_i_4 
       (.I0(\result_2_1_1_reg_657_reg[11]_0 [0]),
        .I1(D[4]),
        .I2(\result_2_1_1_reg_657_reg[11] [4]),
        .O(\result_2_1_1_reg_657[7]_i_4_n_2 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_2_1_1_reg_657[7]_i_5 
       (.I0(\result_2_1_1_reg_657_reg[3] [3]),
        .I1(D[3]),
        .I2(\result_2_1_1_reg_657_reg[11] [3]),
        .O(\result_2_1_1_reg_657[7]_i_5_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \result_2_1_1_reg_657[7]_i_6 
       (.I0(\result_2_1_1_reg_657[7]_i_2_n_2 ),
        .I1(D[7]),
        .I2(\result_2_1_1_reg_657_reg[11]_0 [3]),
        .I3(\result_2_1_1_reg_657_reg[11] [7]),
        .O(\result_2_1_1_reg_657[7]_i_6_n_2 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result_2_1_1_reg_657[7]_i_7 
       (.I0(\result_2_1_1_reg_657_reg[11]_0 [2]),
        .I1(D[6]),
        .I2(\result_2_1_1_reg_657_reg[11] [6]),
        .I3(\result_2_1_1_reg_657[7]_i_3_n_2 ),
        .O(\result_2_1_1_reg_657[7]_i_7_n_2 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result_2_1_1_reg_657[7]_i_8 
       (.I0(\result_2_1_1_reg_657_reg[11]_0 [1]),
        .I1(D[5]),
        .I2(\result_2_1_1_reg_657_reg[11] [5]),
        .I3(\result_2_1_1_reg_657[7]_i_4_n_2 ),
        .O(\result_2_1_1_reg_657[7]_i_8_n_2 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result_2_1_1_reg_657[7]_i_9 
       (.I0(\result_2_1_1_reg_657_reg[11]_0 [0]),
        .I1(D[4]),
        .I2(\result_2_1_1_reg_657_reg[11] [4]),
        .I3(\result_2_1_1_reg_657[7]_i_5_n_2 ),
        .O(\result_2_1_1_reg_657[7]_i_9_n_2 ));
  CARRY4 \result_2_1_1_reg_657_reg[11]_i_2 
       (.CI(\result_2_1_1_reg_657_reg[7]_i_1_n_2 ),
        .CO({\NLW_result_2_1_1_reg_657_reg[11]_i_2_CO_UNCONNECTED [3],\result_2_1_1_reg_657_reg[11]_i_2_n_3 ,\result_2_1_1_reg_657_reg[11]_i_2_n_4 ,\result_2_1_1_reg_657_reg[11]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,O[0]}),
        .O(\kbuf_0_1_fu_112_reg[7] [11:8]),
        .S({O[3:1],\result_2_1_1_reg_657[11]_i_4_n_2 }));
  CARRY4 \result_2_1_1_reg_657_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_2_1_1_reg_657_reg[3]_i_1_n_2 ,\result_2_1_1_reg_657_reg[3]_i_1_n_3 ,\result_2_1_1_reg_657_reg[3]_i_1_n_4 ,\result_2_1_1_reg_657_reg[3]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\result_2_1_1_reg_657[3]_i_2_n_2 ,\result_2_1_1_reg_657[3]_i_3_n_2 ,\result_2_1_1_reg_657[3]_i_4_n_2 ,\result_2_1_1_reg_657_reg[11] [0]}),
        .O(\kbuf_0_1_fu_112_reg[7] [3:0]),
        .S({\result_2_1_1_reg_657[3]_i_5_n_2 ,\result_2_1_1_reg_657[3]_i_6_n_2 ,\result_2_1_1_reg_657[3]_i_7_n_2 ,\result_2_1_1_reg_657[3]_i_8_n_2 }));
  CARRY4 \result_2_1_1_reg_657_reg[7]_i_1 
       (.CI(\result_2_1_1_reg_657_reg[3]_i_1_n_2 ),
        .CO({\result_2_1_1_reg_657_reg[7]_i_1_n_2 ,\result_2_1_1_reg_657_reg[7]_i_1_n_3 ,\result_2_1_1_reg_657_reg[7]_i_1_n_4 ,\result_2_1_1_reg_657_reg[7]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\result_2_1_1_reg_657[7]_i_2_n_2 ,\result_2_1_1_reg_657[7]_i_3_n_2 ,\result_2_1_1_reg_657[7]_i_4_n_2 ,\result_2_1_1_reg_657[7]_i_5_n_2 }),
        .O(\kbuf_0_1_fu_112_reg[7] [7:4]),
        .S({\result_2_1_1_reg_657[7]_i_6_n_2 ,\result_2_1_1_reg_657[7]_i_7_n_2 ,\result_2_1_1_reg_657[7]_i_8_n_2 ,\result_2_1_1_reg_657[7]_i_9_n_2 }));
endmodule

(* CHECK_LICENSE_TYPE = "system_hw_conv_0_0,hw_conv,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "hw_conv,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    sin_TVALID,
    sin_TREADY,
    sin_TDATA,
    sin_TDEST,
    sin_TKEEP,
    sin_TSTRB,
    sin_TUSER,
    sin_TLAST,
    sin_TID,
    sout_TVALID,
    sout_TREADY,
    sout_TDATA,
    sout_TDEST,
    sout_TKEEP,
    sout_TSTRB,
    sout_TUSER,
    sout_TLAST,
    sout_TID);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF sin:sout, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME sin, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0" *) input sin_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TREADY" *) output sin_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TDATA" *) input [7:0]sin_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TDEST" *) input [0:0]sin_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TKEEP" *) input [0:0]sin_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TSTRB" *) input [0:0]sin_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TUSER" *) input [0:0]sin_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TLAST" *) input [0:0]sin_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TID" *) input [0:0]sin_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME sout, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0" *) output sout_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TREADY" *) input sout_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TDATA" *) output [7:0]sout_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TDEST" *) output [0:0]sout_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TKEEP" *) output [0:0]sout_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TSTRB" *) output [0:0]sout_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TUSER" *) output [0:0]sout_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TLAST" *) output [0:0]sout_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TID" *) output [0:0]sout_TID;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]sin_TDATA;
  wire [0:0]sin_TDEST;
  wire [0:0]sin_TID;
  wire [0:0]sin_TKEEP;
  wire [0:0]sin_TLAST;
  wire sin_TREADY;
  wire [0:0]sin_TSTRB;
  wire [0:0]sin_TUSER;
  wire sin_TVALID;
  wire [7:0]sout_TDATA;
  wire [0:0]sout_TDEST;
  wire [0:0]sout_TID;
  wire [0:0]sout_TKEEP;
  wire [0:0]sout_TLAST;
  wire sout_TREADY;
  wire [0:0]sout_TSTRB;
  wire [0:0]sout_TUSER;
  wire sout_TVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .sin_TDATA(sin_TDATA),
        .sin_TDEST(sin_TDEST),
        .sin_TID(sin_TID),
        .sin_TKEEP(sin_TKEEP),
        .sin_TLAST(sin_TLAST),
        .sin_TREADY(sin_TREADY),
        .sin_TSTRB(sin_TSTRB),
        .sin_TUSER(sin_TUSER),
        .sin_TVALID(sin_TVALID),
        .sout_TDATA(sout_TDATA),
        .sout_TDEST(sout_TDEST),
        .sout_TID(sout_TID),
        .sout_TKEEP(sout_TKEEP),
        .sout_TLAST(sout_TLAST),
        .sout_TREADY(sout_TREADY),
        .sout_TSTRB(sout_TSTRB),
        .sout_TUSER(sout_TUSER),
        .sout_TVALID(sout_TVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
