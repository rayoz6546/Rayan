// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct  6 17:42:38 2022
// Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/RAYAN/Lab3/Lab3.srcs/sources_1/bd/Lab3/ip/Lab3_mult_Top_0_0/Lab3_mult_Top_0_0_sim_netlist.v
// Design      : Lab3_mult_Top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lab3_mult_Top_0_0,mult_Top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mult_Top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module Lab3_mult_Top_0_0
   (A,
    B,
    clk,
    rst,
    R,
    done);
  input [31:0]A;
  input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Lab3_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [63:0]R;
  output done;

  wire [31:0]A;
  wire [31:0]B;
  wire [63:0]R;
  wire clk;
  wire done;
  wire rst;

  Lab3_mult_Top_0_0_mult_Top U0
       (.A(A),
        .B(B),
        .\FSM_onehot_state_reg[0] (done),
        .R(R),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "controller" *) 
module Lab3_mult_Top_0_0_controller
   (SR,
    load,
    \FSM_onehot_state_reg[3]_0 ,
    E,
    \FSM_onehot_state_reg[4]_0 ,
    D,
    \A[31] ,
    clk,
    \FSM_onehot_state_reg[4]_1 ,
    rst,
    Q,
    B,
    A,
    \QL_inter_reg[31] );
  output [0:0]SR;
  output load;
  output \FSM_onehot_state_reg[3]_0 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[4]_0 ;
  output [31:0]D;
  output [31:0]\A[31] ;
  input clk;
  input \FSM_onehot_state_reg[4]_1 ;
  input rst;
  input [31:0]Q;
  input [31:0]B;
  input [31:0]A;
  input [30:0]\QL_inter_reg[31] ;

  wire [31:0]A;
  wire [31:0]\A[31] ;
  wire [31:0]B;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg[4]_1 ;
  wire [31:0]Q;
  wire [30:0]\QL_inter_reg[31] ;
  wire [0:0]SR;
  wire add;
  wire clk;
  wire \counter[2]_i_1_n_0 ;
  wire [4:0]counter_reg__0;
  wire load;
  wire [4:0]plusOp;
  wire rst;
  wire shift;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(shift),
        .I1(\FSM_onehot_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_state[0]_i_3_n_0 ),
        .I3(SR),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(shift),
        .I1(\FSM_onehot_state_reg[3]_0 ),
        .I2(load),
        .I3(add),
        .I4(rst),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(SR),
        .I1(rst),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(shift),
        .I2(load),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[3]_0 ),
        .I2(add),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(SR),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(load),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[3]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[4]_1 ),
        .Q(add),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shifts:100000,adds:010000,temp:001000,finish:000001,init:000100,iSTATE:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(shift),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \QL_inter[0]_i_1 
       (.I0(load),
        .I1(A[0]),
        .O(\A[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[10]_i_1 
       (.I0(A[10]),
        .I1(load),
        .I2(\QL_inter_reg[31] [9]),
        .O(\A[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[11]_i_1 
       (.I0(A[11]),
        .I1(load),
        .I2(\QL_inter_reg[31] [10]),
        .O(\A[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[12]_i_1 
       (.I0(A[12]),
        .I1(load),
        .I2(\QL_inter_reg[31] [11]),
        .O(\A[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[13]_i_1 
       (.I0(A[13]),
        .I1(load),
        .I2(\QL_inter_reg[31] [12]),
        .O(\A[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[14]_i_1 
       (.I0(A[14]),
        .I1(load),
        .I2(\QL_inter_reg[31] [13]),
        .O(\A[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[15]_i_1 
       (.I0(A[15]),
        .I1(load),
        .I2(\QL_inter_reg[31] [14]),
        .O(\A[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[16]_i_1 
       (.I0(A[16]),
        .I1(load),
        .I2(\QL_inter_reg[31] [15]),
        .O(\A[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[17]_i_1 
       (.I0(A[17]),
        .I1(load),
        .I2(\QL_inter_reg[31] [16]),
        .O(\A[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[18]_i_1 
       (.I0(A[18]),
        .I1(load),
        .I2(\QL_inter_reg[31] [17]),
        .O(\A[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[19]_i_1 
       (.I0(A[19]),
        .I1(load),
        .I2(\QL_inter_reg[31] [18]),
        .O(\A[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[1]_i_1 
       (.I0(A[1]),
        .I1(load),
        .I2(\QL_inter_reg[31] [0]),
        .O(\A[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[20]_i_1 
       (.I0(A[20]),
        .I1(load),
        .I2(\QL_inter_reg[31] [19]),
        .O(\A[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[21]_i_1 
       (.I0(A[21]),
        .I1(load),
        .I2(\QL_inter_reg[31] [20]),
        .O(\A[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[22]_i_1 
       (.I0(A[22]),
        .I1(load),
        .I2(\QL_inter_reg[31] [21]),
        .O(\A[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[23]_i_1 
       (.I0(A[23]),
        .I1(load),
        .I2(\QL_inter_reg[31] [22]),
        .O(\A[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[24]_i_1 
       (.I0(A[24]),
        .I1(load),
        .I2(\QL_inter_reg[31] [23]),
        .O(\A[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[25]_i_1 
       (.I0(A[25]),
        .I1(load),
        .I2(\QL_inter_reg[31] [24]),
        .O(\A[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[26]_i_1 
       (.I0(A[26]),
        .I1(load),
        .I2(\QL_inter_reg[31] [25]),
        .O(\A[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[27]_i_1 
       (.I0(A[27]),
        .I1(load),
        .I2(\QL_inter_reg[31] [26]),
        .O(\A[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[28]_i_1 
       (.I0(A[28]),
        .I1(load),
        .I2(\QL_inter_reg[31] [27]),
        .O(\A[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[29]_i_1 
       (.I0(A[29]),
        .I1(load),
        .I2(\QL_inter_reg[31] [28]),
        .O(\A[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[2]_i_1 
       (.I0(A[2]),
        .I1(load),
        .I2(\QL_inter_reg[31] [1]),
        .O(\A[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[30]_i_1 
       (.I0(A[30]),
        .I1(load),
        .I2(\QL_inter_reg[31] [29]),
        .O(\A[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[31]_i_1 
       (.I0(A[31]),
        .I1(load),
        .I2(\QL_inter_reg[31] [30]),
        .O(\A[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[3]_i_1 
       (.I0(A[3]),
        .I1(load),
        .I2(\QL_inter_reg[31] [2]),
        .O(\A[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[4]_i_1 
       (.I0(A[4]),
        .I1(load),
        .I2(\QL_inter_reg[31] [3]),
        .O(\A[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[5]_i_1 
       (.I0(A[5]),
        .I1(load),
        .I2(\QL_inter_reg[31] [4]),
        .O(\A[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[6]_i_1 
       (.I0(A[6]),
        .I1(load),
        .I2(\QL_inter_reg[31] [5]),
        .O(\A[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[7]_i_1 
       (.I0(A[7]),
        .I1(load),
        .I2(\QL_inter_reg[31] [6]),
        .O(\A[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[8]_i_1 
       (.I0(A[8]),
        .I1(load),
        .I2(\QL_inter_reg[31] [7]),
        .O(\A[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QL_inter[9]_i_1 
       (.I0(A[9]),
        .I1(load),
        .I2(\QL_inter_reg[31] [8]),
        .O(\A[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[0]_i_1 
       (.I0(B[0]),
        .I1(load),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[10]_i_1 
       (.I0(B[10]),
        .I1(load),
        .I2(Q[11]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[11]_i_1 
       (.I0(B[11]),
        .I1(load),
        .I2(Q[12]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[12]_i_1 
       (.I0(B[12]),
        .I1(load),
        .I2(Q[13]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[13]_i_1 
       (.I0(B[13]),
        .I1(load),
        .I2(Q[14]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[14]_i_1 
       (.I0(B[14]),
        .I1(load),
        .I2(Q[15]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[15]_i_1 
       (.I0(B[15]),
        .I1(load),
        .I2(Q[16]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[16]_i_1 
       (.I0(B[16]),
        .I1(load),
        .I2(Q[17]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[17]_i_1 
       (.I0(B[17]),
        .I1(load),
        .I2(Q[18]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[18]_i_1 
       (.I0(B[18]),
        .I1(load),
        .I2(Q[19]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[19]_i_1 
       (.I0(B[19]),
        .I1(load),
        .I2(Q[20]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[1]_i_1 
       (.I0(B[1]),
        .I1(load),
        .I2(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[20]_i_1 
       (.I0(B[20]),
        .I1(load),
        .I2(Q[21]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[21]_i_1 
       (.I0(B[21]),
        .I1(load),
        .I2(Q[22]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[22]_i_1 
       (.I0(B[22]),
        .I1(load),
        .I2(Q[23]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[23]_i_1 
       (.I0(B[23]),
        .I1(load),
        .I2(Q[24]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[24]_i_1 
       (.I0(B[24]),
        .I1(load),
        .I2(Q[25]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[25]_i_1 
       (.I0(B[25]),
        .I1(load),
        .I2(Q[26]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[26]_i_1 
       (.I0(B[26]),
        .I1(load),
        .I2(Q[27]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[27]_i_1 
       (.I0(B[27]),
        .I1(load),
        .I2(Q[28]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[28]_i_1 
       (.I0(B[28]),
        .I1(load),
        .I2(Q[29]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[29]_i_1 
       (.I0(B[29]),
        .I1(load),
        .I2(Q[30]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[2]_i_1 
       (.I0(B[2]),
        .I1(load),
        .I2(Q[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[30]_i_1 
       (.I0(B[30]),
        .I1(load),
        .I2(Q[31]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \QR_inter[31]_i_1 
       (.I0(load),
        .I1(shift),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \QR_inter[31]_i_2 
       (.I0(load),
        .I1(B[31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[3]_i_1 
       (.I0(B[3]),
        .I1(load),
        .I2(Q[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[4]_i_1 
       (.I0(B[4]),
        .I1(load),
        .I2(Q[5]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[5]_i_1 
       (.I0(B[5]),
        .I1(load),
        .I2(Q[6]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[6]_i_1 
       (.I0(B[6]),
        .I1(load),
        .I2(Q[7]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[7]_i_1 
       (.I0(B[7]),
        .I1(load),
        .I2(Q[8]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[8]_i_1 
       (.I0(B[8]),
        .I1(load),
        .I2(Q[9]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \QR_inter[9]_i_1 
       (.I0(B[9]),
        .I1(load),
        .I2(Q[10]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RP_inter[63]_i_1 
       (.I0(add),
        .I1(SR),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(plusOp[4]));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(shift),
        .D(plusOp[0]),
        .Q(counter_reg__0[0]),
        .R(SR));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(shift),
        .D(plusOp[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(shift),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(shift),
        .D(plusOp[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(shift),
        .D(plusOp[4]),
        .Q(counter_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mult_Top" *) 
module Lab3_mult_Top_0_0_mult_Top
   (\FSM_onehot_state_reg[0] ,
    R,
    rst,
    clk,
    B,
    A);
  output \FSM_onehot_state_reg[0] ;
  output [63:0]R;
  input rst;
  input clk;
  input [31:0]B;
  input [31:0]A;

  wire [31:0]A;
  wire [31:0]B;
  wire \FSM_onehot_state_reg[0] ;
  wire Q0;
  wire [30:0]QL_inter;
  wire [31:1]QR_inter;
  wire [63:0]R;
  wire clk;
  wire load;
  wire [31:0]p_1_in;
  wire rst;
  wire t1_n_31;
  wire t1_n_32;
  wire t1_n_33;
  wire t1_n_34;
  wire t1_n_35;
  wire t1_n_36;
  wire t1_n_37;
  wire t1_n_38;
  wire t1_n_39;
  wire t1_n_40;
  wire t1_n_41;
  wire t1_n_42;
  wire t1_n_43;
  wire t1_n_44;
  wire t1_n_45;
  wire t1_n_46;
  wire t1_n_47;
  wire t1_n_48;
  wire t1_n_49;
  wire t1_n_50;
  wire t1_n_51;
  wire t1_n_52;
  wire t1_n_53;
  wire t1_n_54;
  wire t1_n_55;
  wire t1_n_56;
  wire t1_n_57;
  wire t1_n_58;
  wire t1_n_59;
  wire t1_n_60;
  wire t1_n_61;
  wire t1_n_62;
  wire t1_n_63;
  wire t1_n_64;
  wire t1_n_65;
  wire t1_n_66;
  wire t1_n_67;
  wire t1_n_68;
  wire t1_n_69;
  wire t1_n_70;
  wire t1_n_71;
  wire t1_n_72;
  wire t1_n_73;
  wire t1_n_74;
  wire t1_n_75;
  wire t1_n_76;
  wire t1_n_77;
  wire t1_n_78;
  wire t1_n_79;
  wire t1_n_80;
  wire t1_n_81;
  wire t1_n_82;
  wire t1_n_83;
  wire t1_n_84;
  wire t1_n_85;
  wire t1_n_86;
  wire t1_n_87;
  wire t1_n_88;
  wire t1_n_89;
  wire t1_n_90;
  wire t1_n_91;
  wire t1_n_92;
  wire t1_n_93;
  wire t1_n_94;
  wire t2_n_0;
  wire t5_n_10;
  wire t5_n_11;
  wire t5_n_12;
  wire t5_n_13;
  wire t5_n_14;
  wire t5_n_15;
  wire t5_n_16;
  wire t5_n_17;
  wire t5_n_18;
  wire t5_n_19;
  wire t5_n_2;
  wire t5_n_20;
  wire t5_n_21;
  wire t5_n_22;
  wire t5_n_23;
  wire t5_n_24;
  wire t5_n_25;
  wire t5_n_26;
  wire t5_n_27;
  wire t5_n_28;
  wire t5_n_29;
  wire t5_n_3;
  wire t5_n_30;
  wire t5_n_31;
  wire t5_n_32;
  wire t5_n_33;
  wire t5_n_34;
  wire t5_n_35;
  wire t5_n_36;
  wire t5_n_4;
  wire t5_n_5;
  wire t5_n_6;
  wire t5_n_7;
  wire t5_n_8;
  wire t5_n_9;

  Lab3_mult_Top_0_0_shiftreg_L t1
       (.D(p_1_in),
        .E(t5_n_3),
        .O({t1_n_31,t1_n_32,t1_n_33,t1_n_34}),
        .Q(QL_inter),
        .\QL_inter_reg[11]_0 ({t1_n_39,t1_n_40,t1_n_41,t1_n_42}),
        .\QL_inter_reg[15]_0 ({t1_n_43,t1_n_44,t1_n_45,t1_n_46}),
        .\QL_inter_reg[19]_0 ({t1_n_47,t1_n_48,t1_n_49,t1_n_50}),
        .\QL_inter_reg[23]_0 ({t1_n_51,t1_n_52,t1_n_53,t1_n_54}),
        .\QL_inter_reg[27]_0 ({t1_n_55,t1_n_56,t1_n_57,t1_n_58}),
        .\QL_inter_reg[31]_0 ({t1_n_59,t1_n_60,t1_n_61,t1_n_62}),
        .\QL_inter_reg[35]_0 ({t1_n_63,t1_n_64,t1_n_65,t1_n_66}),
        .\QL_inter_reg[39]_0 ({t1_n_67,t1_n_68,t1_n_69,t1_n_70}),
        .\QL_inter_reg[43]_0 ({t1_n_71,t1_n_72,t1_n_73,t1_n_74}),
        .\QL_inter_reg[47]_0 ({t1_n_75,t1_n_76,t1_n_77,t1_n_78}),
        .\QL_inter_reg[51]_0 ({t1_n_79,t1_n_80,t1_n_81,t1_n_82}),
        .\QL_inter_reg[55]_0 ({t1_n_83,t1_n_84,t1_n_85,t1_n_86}),
        .\QL_inter_reg[59]_0 ({t1_n_87,t1_n_88,t1_n_89,t1_n_90}),
        .\QL_inter_reg[62]_0 ({t1_n_91,t1_n_92,t1_n_93,t1_n_94}),
        .\QL_inter_reg[7]_0 ({t1_n_35,t1_n_36,t1_n_37,t1_n_38}),
        .R(R),
        .clk(clk),
        .load(load),
        .rst(rst));
  Lab3_mult_Top_0_0_shiftreg_R t2
       (.D({t5_n_5,t5_n_6,t5_n_7,t5_n_8,t5_n_9,t5_n_10,t5_n_11,t5_n_12,t5_n_13,t5_n_14,t5_n_15,t5_n_16,t5_n_17,t5_n_18,t5_n_19,t5_n_20,t5_n_21,t5_n_22,t5_n_23,t5_n_24,t5_n_25,t5_n_26,t5_n_27,t5_n_28,t5_n_29,t5_n_30,t5_n_31,t5_n_32,t5_n_33,t5_n_34,t5_n_35,t5_n_36}),
        .E(t5_n_3),
        .\FSM_onehot_state_reg[4] (t5_n_2),
        .Q({QR_inter,Q0}),
        .\QR_inter_reg[0]_0 (t2_n_0),
        .clk(clk),
        .rst(rst));
  Lab3_mult_Top_0_0_product_reg t4
       (.O({t1_n_31,t1_n_32,t1_n_33,t1_n_34}),
        .R(R),
        .\RP_inter_reg[11]_0 ({t1_n_39,t1_n_40,t1_n_41,t1_n_42}),
        .\RP_inter_reg[15]_0 ({t1_n_43,t1_n_44,t1_n_45,t1_n_46}),
        .\RP_inter_reg[19]_0 ({t1_n_47,t1_n_48,t1_n_49,t1_n_50}),
        .\RP_inter_reg[23]_0 ({t1_n_51,t1_n_52,t1_n_53,t1_n_54}),
        .\RP_inter_reg[27]_0 ({t1_n_55,t1_n_56,t1_n_57,t1_n_58}),
        .\RP_inter_reg[31]_0 ({t1_n_59,t1_n_60,t1_n_61,t1_n_62}),
        .\RP_inter_reg[35]_0 ({t1_n_63,t1_n_64,t1_n_65,t1_n_66}),
        .\RP_inter_reg[39]_0 ({t1_n_67,t1_n_68,t1_n_69,t1_n_70}),
        .\RP_inter_reg[43]_0 ({t1_n_71,t1_n_72,t1_n_73,t1_n_74}),
        .\RP_inter_reg[47]_0 ({t1_n_75,t1_n_76,t1_n_77,t1_n_78}),
        .\RP_inter_reg[51]_0 ({t1_n_79,t1_n_80,t1_n_81,t1_n_82}),
        .\RP_inter_reg[55]_0 ({t1_n_83,t1_n_84,t1_n_85,t1_n_86}),
        .\RP_inter_reg[59]_0 ({t1_n_87,t1_n_88,t1_n_89,t1_n_90}),
        .\RP_inter_reg[63]_0 (t5_n_4),
        .\RP_inter_reg[63]_1 ({t1_n_91,t1_n_92,t1_n_93,t1_n_94}),
        .\RP_inter_reg[7]_0 ({t1_n_35,t1_n_36,t1_n_37,t1_n_38}),
        .clk(clk),
        .rst(rst));
  Lab3_mult_Top_0_0_controller t5
       (.A(A),
        .\A[31] (p_1_in),
        .B(B),
        .D({t5_n_5,t5_n_6,t5_n_7,t5_n_8,t5_n_9,t5_n_10,t5_n_11,t5_n_12,t5_n_13,t5_n_14,t5_n_15,t5_n_16,t5_n_17,t5_n_18,t5_n_19,t5_n_20,t5_n_21,t5_n_22,t5_n_23,t5_n_24,t5_n_25,t5_n_26,t5_n_27,t5_n_28,t5_n_29,t5_n_30,t5_n_31,t5_n_32,t5_n_33,t5_n_34,t5_n_35,t5_n_36}),
        .E(t5_n_3),
        .\FSM_onehot_state_reg[3]_0 (t5_n_2),
        .\FSM_onehot_state_reg[4]_0 (t5_n_4),
        .\FSM_onehot_state_reg[4]_1 (t2_n_0),
        .Q({QR_inter,Q0}),
        .\QL_inter_reg[31] (QL_inter),
        .SR(\FSM_onehot_state_reg[0] ),
        .clk(clk),
        .load(load),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "product_reg" *) 
module Lab3_mult_Top_0_0_product_reg
   (R,
    \RP_inter_reg[63]_0 ,
    O,
    clk,
    rst,
    \RP_inter_reg[7]_0 ,
    \RP_inter_reg[11]_0 ,
    \RP_inter_reg[15]_0 ,
    \RP_inter_reg[19]_0 ,
    \RP_inter_reg[23]_0 ,
    \RP_inter_reg[27]_0 ,
    \RP_inter_reg[31]_0 ,
    \RP_inter_reg[35]_0 ,
    \RP_inter_reg[39]_0 ,
    \RP_inter_reg[43]_0 ,
    \RP_inter_reg[47]_0 ,
    \RP_inter_reg[51]_0 ,
    \RP_inter_reg[55]_0 ,
    \RP_inter_reg[59]_0 ,
    \RP_inter_reg[63]_1 );
  output [63:0]R;
  input \RP_inter_reg[63]_0 ;
  input [3:0]O;
  input clk;
  input rst;
  input [3:0]\RP_inter_reg[7]_0 ;
  input [3:0]\RP_inter_reg[11]_0 ;
  input [3:0]\RP_inter_reg[15]_0 ;
  input [3:0]\RP_inter_reg[19]_0 ;
  input [3:0]\RP_inter_reg[23]_0 ;
  input [3:0]\RP_inter_reg[27]_0 ;
  input [3:0]\RP_inter_reg[31]_0 ;
  input [3:0]\RP_inter_reg[35]_0 ;
  input [3:0]\RP_inter_reg[39]_0 ;
  input [3:0]\RP_inter_reg[43]_0 ;
  input [3:0]\RP_inter_reg[47]_0 ;
  input [3:0]\RP_inter_reg[51]_0 ;
  input [3:0]\RP_inter_reg[55]_0 ;
  input [3:0]\RP_inter_reg[59]_0 ;
  input [3:0]\RP_inter_reg[63]_1 ;

  wire [3:0]O;
  wire [63:0]R;
  wire [3:0]\RP_inter_reg[11]_0 ;
  wire [3:0]\RP_inter_reg[15]_0 ;
  wire [3:0]\RP_inter_reg[19]_0 ;
  wire [3:0]\RP_inter_reg[23]_0 ;
  wire [3:0]\RP_inter_reg[27]_0 ;
  wire [3:0]\RP_inter_reg[31]_0 ;
  wire [3:0]\RP_inter_reg[35]_0 ;
  wire [3:0]\RP_inter_reg[39]_0 ;
  wire [3:0]\RP_inter_reg[43]_0 ;
  wire [3:0]\RP_inter_reg[47]_0 ;
  wire [3:0]\RP_inter_reg[51]_0 ;
  wire [3:0]\RP_inter_reg[55]_0 ;
  wire [3:0]\RP_inter_reg[59]_0 ;
  wire \RP_inter_reg[63]_0 ;
  wire [3:0]\RP_inter_reg[63]_1 ;
  wire [3:0]\RP_inter_reg[7]_0 ;
  wire clk;
  wire rst;

  FDCE \RP_inter_reg[0] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(O[0]),
        .Q(R[0]));
  FDCE \RP_inter_reg[10] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[11]_0 [2]),
        .Q(R[10]));
  FDCE \RP_inter_reg[11] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[11]_0 [3]),
        .Q(R[11]));
  FDCE \RP_inter_reg[12] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[15]_0 [0]),
        .Q(R[12]));
  FDCE \RP_inter_reg[13] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[15]_0 [1]),
        .Q(R[13]));
  FDCE \RP_inter_reg[14] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[15]_0 [2]),
        .Q(R[14]));
  FDCE \RP_inter_reg[15] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[15]_0 [3]),
        .Q(R[15]));
  FDCE \RP_inter_reg[16] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[19]_0 [0]),
        .Q(R[16]));
  FDCE \RP_inter_reg[17] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[19]_0 [1]),
        .Q(R[17]));
  FDCE \RP_inter_reg[18] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[19]_0 [2]),
        .Q(R[18]));
  FDCE \RP_inter_reg[19] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[19]_0 [3]),
        .Q(R[19]));
  FDCE \RP_inter_reg[1] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(O[1]),
        .Q(R[1]));
  FDCE \RP_inter_reg[20] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[23]_0 [0]),
        .Q(R[20]));
  FDCE \RP_inter_reg[21] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[23]_0 [1]),
        .Q(R[21]));
  FDCE \RP_inter_reg[22] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[23]_0 [2]),
        .Q(R[22]));
  FDCE \RP_inter_reg[23] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[23]_0 [3]),
        .Q(R[23]));
  FDCE \RP_inter_reg[24] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[27]_0 [0]),
        .Q(R[24]));
  FDCE \RP_inter_reg[25] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[27]_0 [1]),
        .Q(R[25]));
  FDCE \RP_inter_reg[26] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[27]_0 [2]),
        .Q(R[26]));
  FDCE \RP_inter_reg[27] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[27]_0 [3]),
        .Q(R[27]));
  FDCE \RP_inter_reg[28] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[31]_0 [0]),
        .Q(R[28]));
  FDCE \RP_inter_reg[29] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[31]_0 [1]),
        .Q(R[29]));
  FDCE \RP_inter_reg[2] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(O[2]),
        .Q(R[2]));
  FDCE \RP_inter_reg[30] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[31]_0 [2]),
        .Q(R[30]));
  FDCE \RP_inter_reg[31] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[31]_0 [3]),
        .Q(R[31]));
  FDCE \RP_inter_reg[32] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[35]_0 [0]),
        .Q(R[32]));
  FDCE \RP_inter_reg[33] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[35]_0 [1]),
        .Q(R[33]));
  FDCE \RP_inter_reg[34] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[35]_0 [2]),
        .Q(R[34]));
  FDCE \RP_inter_reg[35] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[35]_0 [3]),
        .Q(R[35]));
  FDCE \RP_inter_reg[36] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[39]_0 [0]),
        .Q(R[36]));
  FDCE \RP_inter_reg[37] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[39]_0 [1]),
        .Q(R[37]));
  FDCE \RP_inter_reg[38] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[39]_0 [2]),
        .Q(R[38]));
  FDCE \RP_inter_reg[39] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[39]_0 [3]),
        .Q(R[39]));
  FDCE \RP_inter_reg[3] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(O[3]),
        .Q(R[3]));
  FDCE \RP_inter_reg[40] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[43]_0 [0]),
        .Q(R[40]));
  FDCE \RP_inter_reg[41] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[43]_0 [1]),
        .Q(R[41]));
  FDCE \RP_inter_reg[42] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[43]_0 [2]),
        .Q(R[42]));
  FDCE \RP_inter_reg[43] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[43]_0 [3]),
        .Q(R[43]));
  FDCE \RP_inter_reg[44] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[47]_0 [0]),
        .Q(R[44]));
  FDCE \RP_inter_reg[45] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[47]_0 [1]),
        .Q(R[45]));
  FDCE \RP_inter_reg[46] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[47]_0 [2]),
        .Q(R[46]));
  FDCE \RP_inter_reg[47] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[47]_0 [3]),
        .Q(R[47]));
  FDCE \RP_inter_reg[48] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[51]_0 [0]),
        .Q(R[48]));
  FDCE \RP_inter_reg[49] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[51]_0 [1]),
        .Q(R[49]));
  FDCE \RP_inter_reg[4] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[7]_0 [0]),
        .Q(R[4]));
  FDCE \RP_inter_reg[50] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[51]_0 [2]),
        .Q(R[50]));
  FDCE \RP_inter_reg[51] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[51]_0 [3]),
        .Q(R[51]));
  FDCE \RP_inter_reg[52] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[55]_0 [0]),
        .Q(R[52]));
  FDCE \RP_inter_reg[53] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[55]_0 [1]),
        .Q(R[53]));
  FDCE \RP_inter_reg[54] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[55]_0 [2]),
        .Q(R[54]));
  FDCE \RP_inter_reg[55] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[55]_0 [3]),
        .Q(R[55]));
  FDCE \RP_inter_reg[56] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[59]_0 [0]),
        .Q(R[56]));
  FDCE \RP_inter_reg[57] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[59]_0 [1]),
        .Q(R[57]));
  FDCE \RP_inter_reg[58] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[59]_0 [2]),
        .Q(R[58]));
  FDCE \RP_inter_reg[59] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[59]_0 [3]),
        .Q(R[59]));
  FDCE \RP_inter_reg[5] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[7]_0 [1]),
        .Q(R[5]));
  FDCE \RP_inter_reg[60] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[63]_1 [0]),
        .Q(R[60]));
  FDCE \RP_inter_reg[61] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[63]_1 [1]),
        .Q(R[61]));
  FDCE \RP_inter_reg[62] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[63]_1 [2]),
        .Q(R[62]));
  FDCE \RP_inter_reg[63] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[63]_1 [3]),
        .Q(R[63]));
  FDCE \RP_inter_reg[6] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[7]_0 [2]),
        .Q(R[6]));
  FDCE \RP_inter_reg[7] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[7]_0 [3]),
        .Q(R[7]));
  FDCE \RP_inter_reg[8] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[11]_0 [0]),
        .Q(R[8]));
  FDCE \RP_inter_reg[9] 
       (.C(clk),
        .CE(\RP_inter_reg[63]_0 ),
        .CLR(rst),
        .D(\RP_inter_reg[11]_0 [1]),
        .Q(R[9]));
endmodule

(* ORIG_REF_NAME = "shiftreg_L" *) 
module Lab3_mult_Top_0_0_shiftreg_L
   (Q,
    O,
    \QL_inter_reg[7]_0 ,
    \QL_inter_reg[11]_0 ,
    \QL_inter_reg[15]_0 ,
    \QL_inter_reg[19]_0 ,
    \QL_inter_reg[23]_0 ,
    \QL_inter_reg[27]_0 ,
    \QL_inter_reg[31]_0 ,
    \QL_inter_reg[35]_0 ,
    \QL_inter_reg[39]_0 ,
    \QL_inter_reg[43]_0 ,
    \QL_inter_reg[47]_0 ,
    \QL_inter_reg[51]_0 ,
    \QL_inter_reg[55]_0 ,
    \QL_inter_reg[59]_0 ,
    \QL_inter_reg[62]_0 ,
    R,
    D,
    load,
    E,
    clk,
    rst);
  output [30:0]Q;
  output [3:0]O;
  output [3:0]\QL_inter_reg[7]_0 ;
  output [3:0]\QL_inter_reg[11]_0 ;
  output [3:0]\QL_inter_reg[15]_0 ;
  output [3:0]\QL_inter_reg[19]_0 ;
  output [3:0]\QL_inter_reg[23]_0 ;
  output [3:0]\QL_inter_reg[27]_0 ;
  output [3:0]\QL_inter_reg[31]_0 ;
  output [3:0]\QL_inter_reg[35]_0 ;
  output [3:0]\QL_inter_reg[39]_0 ;
  output [3:0]\QL_inter_reg[43]_0 ;
  output [3:0]\QL_inter_reg[47]_0 ;
  output [3:0]\QL_inter_reg[51]_0 ;
  output [3:0]\QL_inter_reg[55]_0 ;
  output [3:0]\QL_inter_reg[59]_0 ;
  output [3:0]\QL_inter_reg[62]_0 ;
  input [63:0]R;
  input [31:0]D;
  input load;
  input [0:0]E;
  input clk;
  input rst;

  wire [31:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [30:0]Q;
  wire [63:31]QL_inter;
  wire [3:0]\QL_inter_reg[11]_0 ;
  wire [3:0]\QL_inter_reg[15]_0 ;
  wire [3:0]\QL_inter_reg[19]_0 ;
  wire [3:0]\QL_inter_reg[23]_0 ;
  wire [3:0]\QL_inter_reg[27]_0 ;
  wire [3:0]\QL_inter_reg[31]_0 ;
  wire [3:0]\QL_inter_reg[35]_0 ;
  wire [3:0]\QL_inter_reg[39]_0 ;
  wire [3:0]\QL_inter_reg[43]_0 ;
  wire [3:0]\QL_inter_reg[47]_0 ;
  wire [3:0]\QL_inter_reg[51]_0 ;
  wire [3:0]\QL_inter_reg[55]_0 ;
  wire [3:0]\QL_inter_reg[59]_0 ;
  wire [3:0]\QL_inter_reg[62]_0 ;
  wire [3:0]\QL_inter_reg[7]_0 ;
  wire [63:0]R;
  wire \RP_inter[11]_i_2_n_0 ;
  wire \RP_inter[11]_i_3_n_0 ;
  wire \RP_inter[11]_i_4_n_0 ;
  wire \RP_inter[11]_i_5_n_0 ;
  wire \RP_inter[15]_i_2_n_0 ;
  wire \RP_inter[15]_i_3_n_0 ;
  wire \RP_inter[15]_i_4_n_0 ;
  wire \RP_inter[15]_i_5_n_0 ;
  wire \RP_inter[19]_i_2_n_0 ;
  wire \RP_inter[19]_i_3_n_0 ;
  wire \RP_inter[19]_i_4_n_0 ;
  wire \RP_inter[19]_i_5_n_0 ;
  wire \RP_inter[23]_i_2_n_0 ;
  wire \RP_inter[23]_i_3_n_0 ;
  wire \RP_inter[23]_i_4_n_0 ;
  wire \RP_inter[23]_i_5_n_0 ;
  wire \RP_inter[27]_i_2_n_0 ;
  wire \RP_inter[27]_i_3_n_0 ;
  wire \RP_inter[27]_i_4_n_0 ;
  wire \RP_inter[27]_i_5_n_0 ;
  wire \RP_inter[31]_i_2_n_0 ;
  wire \RP_inter[31]_i_3_n_0 ;
  wire \RP_inter[31]_i_4_n_0 ;
  wire \RP_inter[31]_i_5_n_0 ;
  wire \RP_inter[35]_i_2_n_0 ;
  wire \RP_inter[35]_i_3_n_0 ;
  wire \RP_inter[35]_i_4_n_0 ;
  wire \RP_inter[35]_i_5_n_0 ;
  wire \RP_inter[39]_i_2_n_0 ;
  wire \RP_inter[39]_i_3_n_0 ;
  wire \RP_inter[39]_i_4_n_0 ;
  wire \RP_inter[39]_i_5_n_0 ;
  wire \RP_inter[3]_i_2_n_0 ;
  wire \RP_inter[3]_i_3_n_0 ;
  wire \RP_inter[3]_i_4_n_0 ;
  wire \RP_inter[3]_i_5_n_0 ;
  wire \RP_inter[43]_i_2_n_0 ;
  wire \RP_inter[43]_i_3_n_0 ;
  wire \RP_inter[43]_i_4_n_0 ;
  wire \RP_inter[43]_i_5_n_0 ;
  wire \RP_inter[47]_i_2_n_0 ;
  wire \RP_inter[47]_i_3_n_0 ;
  wire \RP_inter[47]_i_4_n_0 ;
  wire \RP_inter[47]_i_5_n_0 ;
  wire \RP_inter[51]_i_2_n_0 ;
  wire \RP_inter[51]_i_3_n_0 ;
  wire \RP_inter[51]_i_4_n_0 ;
  wire \RP_inter[51]_i_5_n_0 ;
  wire \RP_inter[55]_i_2_n_0 ;
  wire \RP_inter[55]_i_3_n_0 ;
  wire \RP_inter[55]_i_4_n_0 ;
  wire \RP_inter[55]_i_5_n_0 ;
  wire \RP_inter[59]_i_2_n_0 ;
  wire \RP_inter[59]_i_3_n_0 ;
  wire \RP_inter[59]_i_4_n_0 ;
  wire \RP_inter[59]_i_5_n_0 ;
  wire \RP_inter[63]_i_3_n_0 ;
  wire \RP_inter[63]_i_4_n_0 ;
  wire \RP_inter[63]_i_5_n_0 ;
  wire \RP_inter[63]_i_6_n_0 ;
  wire \RP_inter[7]_i_2_n_0 ;
  wire \RP_inter[7]_i_3_n_0 ;
  wire \RP_inter[7]_i_4_n_0 ;
  wire \RP_inter[7]_i_5_n_0 ;
  wire \RP_inter_reg[11]_i_1_n_0 ;
  wire \RP_inter_reg[11]_i_1_n_1 ;
  wire \RP_inter_reg[11]_i_1_n_2 ;
  wire \RP_inter_reg[11]_i_1_n_3 ;
  wire \RP_inter_reg[15]_i_1_n_0 ;
  wire \RP_inter_reg[15]_i_1_n_1 ;
  wire \RP_inter_reg[15]_i_1_n_2 ;
  wire \RP_inter_reg[15]_i_1_n_3 ;
  wire \RP_inter_reg[19]_i_1_n_0 ;
  wire \RP_inter_reg[19]_i_1_n_1 ;
  wire \RP_inter_reg[19]_i_1_n_2 ;
  wire \RP_inter_reg[19]_i_1_n_3 ;
  wire \RP_inter_reg[23]_i_1_n_0 ;
  wire \RP_inter_reg[23]_i_1_n_1 ;
  wire \RP_inter_reg[23]_i_1_n_2 ;
  wire \RP_inter_reg[23]_i_1_n_3 ;
  wire \RP_inter_reg[27]_i_1_n_0 ;
  wire \RP_inter_reg[27]_i_1_n_1 ;
  wire \RP_inter_reg[27]_i_1_n_2 ;
  wire \RP_inter_reg[27]_i_1_n_3 ;
  wire \RP_inter_reg[31]_i_1_n_0 ;
  wire \RP_inter_reg[31]_i_1_n_1 ;
  wire \RP_inter_reg[31]_i_1_n_2 ;
  wire \RP_inter_reg[31]_i_1_n_3 ;
  wire \RP_inter_reg[35]_i_1_n_0 ;
  wire \RP_inter_reg[35]_i_1_n_1 ;
  wire \RP_inter_reg[35]_i_1_n_2 ;
  wire \RP_inter_reg[35]_i_1_n_3 ;
  wire \RP_inter_reg[39]_i_1_n_0 ;
  wire \RP_inter_reg[39]_i_1_n_1 ;
  wire \RP_inter_reg[39]_i_1_n_2 ;
  wire \RP_inter_reg[39]_i_1_n_3 ;
  wire \RP_inter_reg[3]_i_1_n_0 ;
  wire \RP_inter_reg[3]_i_1_n_1 ;
  wire \RP_inter_reg[3]_i_1_n_2 ;
  wire \RP_inter_reg[3]_i_1_n_3 ;
  wire \RP_inter_reg[43]_i_1_n_0 ;
  wire \RP_inter_reg[43]_i_1_n_1 ;
  wire \RP_inter_reg[43]_i_1_n_2 ;
  wire \RP_inter_reg[43]_i_1_n_3 ;
  wire \RP_inter_reg[47]_i_1_n_0 ;
  wire \RP_inter_reg[47]_i_1_n_1 ;
  wire \RP_inter_reg[47]_i_1_n_2 ;
  wire \RP_inter_reg[47]_i_1_n_3 ;
  wire \RP_inter_reg[51]_i_1_n_0 ;
  wire \RP_inter_reg[51]_i_1_n_1 ;
  wire \RP_inter_reg[51]_i_1_n_2 ;
  wire \RP_inter_reg[51]_i_1_n_3 ;
  wire \RP_inter_reg[55]_i_1_n_0 ;
  wire \RP_inter_reg[55]_i_1_n_1 ;
  wire \RP_inter_reg[55]_i_1_n_2 ;
  wire \RP_inter_reg[55]_i_1_n_3 ;
  wire \RP_inter_reg[59]_i_1_n_0 ;
  wire \RP_inter_reg[59]_i_1_n_1 ;
  wire \RP_inter_reg[59]_i_1_n_2 ;
  wire \RP_inter_reg[59]_i_1_n_3 ;
  wire \RP_inter_reg[63]_i_2_n_1 ;
  wire \RP_inter_reg[63]_i_2_n_2 ;
  wire \RP_inter_reg[63]_i_2_n_3 ;
  wire \RP_inter_reg[7]_i_1_n_0 ;
  wire \RP_inter_reg[7]_i_1_n_1 ;
  wire \RP_inter_reg[7]_i_1_n_2 ;
  wire \RP_inter_reg[7]_i_1_n_3 ;
  wire clk;
  wire load;
  wire [63:32]p_1_in;
  wire rst;
  wire [3:3]\NLW_RP_inter_reg[63]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[32]_i_1 
       (.I0(QL_inter[31]),
        .I1(load),
        .O(p_1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[33]_i_1 
       (.I0(QL_inter[32]),
        .I1(load),
        .O(p_1_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[34]_i_1 
       (.I0(QL_inter[33]),
        .I1(load),
        .O(p_1_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[35]_i_1 
       (.I0(QL_inter[34]),
        .I1(load),
        .O(p_1_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[36]_i_1 
       (.I0(QL_inter[35]),
        .I1(load),
        .O(p_1_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[37]_i_1 
       (.I0(QL_inter[36]),
        .I1(load),
        .O(p_1_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[38]_i_1 
       (.I0(QL_inter[37]),
        .I1(load),
        .O(p_1_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[39]_i_1 
       (.I0(QL_inter[38]),
        .I1(load),
        .O(p_1_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[40]_i_1 
       (.I0(QL_inter[39]),
        .I1(load),
        .O(p_1_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[41]_i_1 
       (.I0(QL_inter[40]),
        .I1(load),
        .O(p_1_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[42]_i_1 
       (.I0(QL_inter[41]),
        .I1(load),
        .O(p_1_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[43]_i_1 
       (.I0(QL_inter[42]),
        .I1(load),
        .O(p_1_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[44]_i_1 
       (.I0(QL_inter[43]),
        .I1(load),
        .O(p_1_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[45]_i_1 
       (.I0(QL_inter[44]),
        .I1(load),
        .O(p_1_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[46]_i_1 
       (.I0(QL_inter[45]),
        .I1(load),
        .O(p_1_in[46]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[47]_i_1 
       (.I0(QL_inter[46]),
        .I1(load),
        .O(p_1_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[48]_i_1 
       (.I0(QL_inter[47]),
        .I1(load),
        .O(p_1_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[49]_i_1 
       (.I0(QL_inter[48]),
        .I1(load),
        .O(p_1_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[50]_i_1 
       (.I0(QL_inter[49]),
        .I1(load),
        .O(p_1_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[51]_i_1 
       (.I0(QL_inter[50]),
        .I1(load),
        .O(p_1_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[52]_i_1 
       (.I0(QL_inter[51]),
        .I1(load),
        .O(p_1_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[53]_i_1 
       (.I0(QL_inter[52]),
        .I1(load),
        .O(p_1_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[54]_i_1 
       (.I0(QL_inter[53]),
        .I1(load),
        .O(p_1_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[55]_i_1 
       (.I0(QL_inter[54]),
        .I1(load),
        .O(p_1_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[56]_i_1 
       (.I0(QL_inter[55]),
        .I1(load),
        .O(p_1_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[57]_i_1 
       (.I0(QL_inter[56]),
        .I1(load),
        .O(p_1_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[58]_i_1 
       (.I0(QL_inter[57]),
        .I1(load),
        .O(p_1_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[59]_i_1 
       (.I0(QL_inter[58]),
        .I1(load),
        .O(p_1_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[60]_i_1 
       (.I0(QL_inter[59]),
        .I1(load),
        .O(p_1_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[61]_i_1 
       (.I0(QL_inter[60]),
        .I1(load),
        .O(p_1_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[62]_i_1 
       (.I0(QL_inter[61]),
        .I1(load),
        .O(p_1_in[62]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QL_inter[63]_i_1 
       (.I0(QL_inter[62]),
        .I1(load),
        .O(p_1_in[63]));
  FDCE \QL_inter_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \QL_inter_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \QL_inter_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \QL_inter_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \QL_inter_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \QL_inter_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \QL_inter_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \QL_inter_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \QL_inter_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \QL_inter_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \QL_inter_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \QL_inter_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \QL_inter_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \QL_inter_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \QL_inter_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \QL_inter_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \QL_inter_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \QL_inter_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \QL_inter_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \QL_inter_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \QL_inter_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \QL_inter_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \QL_inter_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \QL_inter_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \QL_inter_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[31]),
        .Q(QL_inter[31]));
  FDCE \QL_inter_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[32]),
        .Q(QL_inter[32]));
  FDCE \QL_inter_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[33]),
        .Q(QL_inter[33]));
  FDCE \QL_inter_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[34]),
        .Q(QL_inter[34]));
  FDCE \QL_inter_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[35]),
        .Q(QL_inter[35]));
  FDCE \QL_inter_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[36]),
        .Q(QL_inter[36]));
  FDCE \QL_inter_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[37]),
        .Q(QL_inter[37]));
  FDCE \QL_inter_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[38]),
        .Q(QL_inter[38]));
  FDCE \QL_inter_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[39]),
        .Q(QL_inter[39]));
  FDCE \QL_inter_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \QL_inter_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[40]),
        .Q(QL_inter[40]));
  FDCE \QL_inter_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[41]),
        .Q(QL_inter[41]));
  FDCE \QL_inter_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[42]),
        .Q(QL_inter[42]));
  FDCE \QL_inter_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[43]),
        .Q(QL_inter[43]));
  FDCE \QL_inter_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[44]),
        .Q(QL_inter[44]));
  FDCE \QL_inter_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[45]),
        .Q(QL_inter[45]));
  FDCE \QL_inter_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[46]),
        .Q(QL_inter[46]));
  FDCE \QL_inter_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[47]),
        .Q(QL_inter[47]));
  FDCE \QL_inter_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[48]),
        .Q(QL_inter[48]));
  FDCE \QL_inter_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[49]),
        .Q(QL_inter[49]));
  FDCE \QL_inter_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \QL_inter_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[50]),
        .Q(QL_inter[50]));
  FDCE \QL_inter_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[51]),
        .Q(QL_inter[51]));
  FDCE \QL_inter_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[52]),
        .Q(QL_inter[52]));
  FDCE \QL_inter_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[53]),
        .Q(QL_inter[53]));
  FDCE \QL_inter_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[54]),
        .Q(QL_inter[54]));
  FDCE \QL_inter_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[55]),
        .Q(QL_inter[55]));
  FDCE \QL_inter_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[56]),
        .Q(QL_inter[56]));
  FDCE \QL_inter_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[57]),
        .Q(QL_inter[57]));
  FDCE \QL_inter_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[58]),
        .Q(QL_inter[58]));
  FDCE \QL_inter_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[59]),
        .Q(QL_inter[59]));
  FDCE \QL_inter_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \QL_inter_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[60]),
        .Q(QL_inter[60]));
  FDCE \QL_inter_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[61]),
        .Q(QL_inter[61]));
  FDCE \QL_inter_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[62]),
        .Q(QL_inter[62]));
  FDCE \QL_inter_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[63]),
        .Q(QL_inter[63]));
  FDCE \QL_inter_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \QL_inter_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \QL_inter_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \QL_inter_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[9]),
        .Q(Q[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[11]_i_2 
       (.I0(Q[11]),
        .I1(R[11]),
        .O(\RP_inter[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[11]_i_3 
       (.I0(Q[10]),
        .I1(R[10]),
        .O(\RP_inter[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[11]_i_4 
       (.I0(Q[9]),
        .I1(R[9]),
        .O(\RP_inter[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[11]_i_5 
       (.I0(Q[8]),
        .I1(R[8]),
        .O(\RP_inter[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[15]_i_2 
       (.I0(Q[15]),
        .I1(R[15]),
        .O(\RP_inter[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[15]_i_3 
       (.I0(Q[14]),
        .I1(R[14]),
        .O(\RP_inter[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[15]_i_4 
       (.I0(Q[13]),
        .I1(R[13]),
        .O(\RP_inter[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[15]_i_5 
       (.I0(Q[12]),
        .I1(R[12]),
        .O(\RP_inter[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[19]_i_2 
       (.I0(Q[19]),
        .I1(R[19]),
        .O(\RP_inter[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[19]_i_3 
       (.I0(Q[18]),
        .I1(R[18]),
        .O(\RP_inter[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[19]_i_4 
       (.I0(Q[17]),
        .I1(R[17]),
        .O(\RP_inter[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[19]_i_5 
       (.I0(Q[16]),
        .I1(R[16]),
        .O(\RP_inter[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[23]_i_2 
       (.I0(Q[23]),
        .I1(R[23]),
        .O(\RP_inter[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[23]_i_3 
       (.I0(Q[22]),
        .I1(R[22]),
        .O(\RP_inter[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[23]_i_4 
       (.I0(Q[21]),
        .I1(R[21]),
        .O(\RP_inter[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[23]_i_5 
       (.I0(Q[20]),
        .I1(R[20]),
        .O(\RP_inter[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[27]_i_2 
       (.I0(Q[27]),
        .I1(R[27]),
        .O(\RP_inter[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[27]_i_3 
       (.I0(Q[26]),
        .I1(R[26]),
        .O(\RP_inter[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[27]_i_4 
       (.I0(Q[25]),
        .I1(R[25]),
        .O(\RP_inter[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[27]_i_5 
       (.I0(Q[24]),
        .I1(R[24]),
        .O(\RP_inter[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[31]_i_2 
       (.I0(QL_inter[31]),
        .I1(R[31]),
        .O(\RP_inter[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[31]_i_3 
       (.I0(Q[30]),
        .I1(R[30]),
        .O(\RP_inter[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[31]_i_4 
       (.I0(Q[29]),
        .I1(R[29]),
        .O(\RP_inter[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[31]_i_5 
       (.I0(Q[28]),
        .I1(R[28]),
        .O(\RP_inter[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[35]_i_2 
       (.I0(QL_inter[35]),
        .I1(R[35]),
        .O(\RP_inter[35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[35]_i_3 
       (.I0(QL_inter[34]),
        .I1(R[34]),
        .O(\RP_inter[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[35]_i_4 
       (.I0(QL_inter[33]),
        .I1(R[33]),
        .O(\RP_inter[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[35]_i_5 
       (.I0(QL_inter[32]),
        .I1(R[32]),
        .O(\RP_inter[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[39]_i_2 
       (.I0(QL_inter[39]),
        .I1(R[39]),
        .O(\RP_inter[39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[39]_i_3 
       (.I0(QL_inter[38]),
        .I1(R[38]),
        .O(\RP_inter[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[39]_i_4 
       (.I0(QL_inter[37]),
        .I1(R[37]),
        .O(\RP_inter[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[39]_i_5 
       (.I0(QL_inter[36]),
        .I1(R[36]),
        .O(\RP_inter[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[3]_i_2 
       (.I0(Q[3]),
        .I1(R[3]),
        .O(\RP_inter[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[3]_i_3 
       (.I0(Q[2]),
        .I1(R[2]),
        .O(\RP_inter[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[3]_i_4 
       (.I0(Q[1]),
        .I1(R[1]),
        .O(\RP_inter[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[3]_i_5 
       (.I0(Q[0]),
        .I1(R[0]),
        .O(\RP_inter[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[43]_i_2 
       (.I0(QL_inter[43]),
        .I1(R[43]),
        .O(\RP_inter[43]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[43]_i_3 
       (.I0(QL_inter[42]),
        .I1(R[42]),
        .O(\RP_inter[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[43]_i_4 
       (.I0(QL_inter[41]),
        .I1(R[41]),
        .O(\RP_inter[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[43]_i_5 
       (.I0(QL_inter[40]),
        .I1(R[40]),
        .O(\RP_inter[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[47]_i_2 
       (.I0(QL_inter[47]),
        .I1(R[47]),
        .O(\RP_inter[47]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[47]_i_3 
       (.I0(QL_inter[46]),
        .I1(R[46]),
        .O(\RP_inter[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[47]_i_4 
       (.I0(QL_inter[45]),
        .I1(R[45]),
        .O(\RP_inter[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[47]_i_5 
       (.I0(QL_inter[44]),
        .I1(R[44]),
        .O(\RP_inter[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[51]_i_2 
       (.I0(QL_inter[51]),
        .I1(R[51]),
        .O(\RP_inter[51]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[51]_i_3 
       (.I0(QL_inter[50]),
        .I1(R[50]),
        .O(\RP_inter[51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[51]_i_4 
       (.I0(QL_inter[49]),
        .I1(R[49]),
        .O(\RP_inter[51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[51]_i_5 
       (.I0(QL_inter[48]),
        .I1(R[48]),
        .O(\RP_inter[51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[55]_i_2 
       (.I0(QL_inter[55]),
        .I1(R[55]),
        .O(\RP_inter[55]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[55]_i_3 
       (.I0(QL_inter[54]),
        .I1(R[54]),
        .O(\RP_inter[55]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[55]_i_4 
       (.I0(QL_inter[53]),
        .I1(R[53]),
        .O(\RP_inter[55]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[55]_i_5 
       (.I0(QL_inter[52]),
        .I1(R[52]),
        .O(\RP_inter[55]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[59]_i_2 
       (.I0(QL_inter[59]),
        .I1(R[59]),
        .O(\RP_inter[59]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[59]_i_3 
       (.I0(QL_inter[58]),
        .I1(R[58]),
        .O(\RP_inter[59]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[59]_i_4 
       (.I0(QL_inter[57]),
        .I1(R[57]),
        .O(\RP_inter[59]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[59]_i_5 
       (.I0(QL_inter[56]),
        .I1(R[56]),
        .O(\RP_inter[59]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[63]_i_3 
       (.I0(QL_inter[63]),
        .I1(R[63]),
        .O(\RP_inter[63]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[63]_i_4 
       (.I0(QL_inter[62]),
        .I1(R[62]),
        .O(\RP_inter[63]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[63]_i_5 
       (.I0(QL_inter[61]),
        .I1(R[61]),
        .O(\RP_inter[63]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[63]_i_6 
       (.I0(QL_inter[60]),
        .I1(R[60]),
        .O(\RP_inter[63]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[7]_i_2 
       (.I0(Q[7]),
        .I1(R[7]),
        .O(\RP_inter[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[7]_i_3 
       (.I0(Q[6]),
        .I1(R[6]),
        .O(\RP_inter[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[7]_i_4 
       (.I0(Q[5]),
        .I1(R[5]),
        .O(\RP_inter[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RP_inter[7]_i_5 
       (.I0(Q[4]),
        .I1(R[4]),
        .O(\RP_inter[7]_i_5_n_0 ));
  CARRY4 \RP_inter_reg[11]_i_1 
       (.CI(\RP_inter_reg[7]_i_1_n_0 ),
        .CO({\RP_inter_reg[11]_i_1_n_0 ,\RP_inter_reg[11]_i_1_n_1 ,\RP_inter_reg[11]_i_1_n_2 ,\RP_inter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\QL_inter_reg[11]_0 ),
        .S({\RP_inter[11]_i_2_n_0 ,\RP_inter[11]_i_3_n_0 ,\RP_inter[11]_i_4_n_0 ,\RP_inter[11]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[15]_i_1 
       (.CI(\RP_inter_reg[11]_i_1_n_0 ),
        .CO({\RP_inter_reg[15]_i_1_n_0 ,\RP_inter_reg[15]_i_1_n_1 ,\RP_inter_reg[15]_i_1_n_2 ,\RP_inter_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(\QL_inter_reg[15]_0 ),
        .S({\RP_inter[15]_i_2_n_0 ,\RP_inter[15]_i_3_n_0 ,\RP_inter[15]_i_4_n_0 ,\RP_inter[15]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[19]_i_1 
       (.CI(\RP_inter_reg[15]_i_1_n_0 ),
        .CO({\RP_inter_reg[19]_i_1_n_0 ,\RP_inter_reg[19]_i_1_n_1 ,\RP_inter_reg[19]_i_1_n_2 ,\RP_inter_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(\QL_inter_reg[19]_0 ),
        .S({\RP_inter[19]_i_2_n_0 ,\RP_inter[19]_i_3_n_0 ,\RP_inter[19]_i_4_n_0 ,\RP_inter[19]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[23]_i_1 
       (.CI(\RP_inter_reg[19]_i_1_n_0 ),
        .CO({\RP_inter_reg[23]_i_1_n_0 ,\RP_inter_reg[23]_i_1_n_1 ,\RP_inter_reg[23]_i_1_n_2 ,\RP_inter_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(\QL_inter_reg[23]_0 ),
        .S({\RP_inter[23]_i_2_n_0 ,\RP_inter[23]_i_3_n_0 ,\RP_inter[23]_i_4_n_0 ,\RP_inter[23]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[27]_i_1 
       (.CI(\RP_inter_reg[23]_i_1_n_0 ),
        .CO({\RP_inter_reg[27]_i_1_n_0 ,\RP_inter_reg[27]_i_1_n_1 ,\RP_inter_reg[27]_i_1_n_2 ,\RP_inter_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(\QL_inter_reg[27]_0 ),
        .S({\RP_inter[27]_i_2_n_0 ,\RP_inter[27]_i_3_n_0 ,\RP_inter[27]_i_4_n_0 ,\RP_inter[27]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[31]_i_1 
       (.CI(\RP_inter_reg[27]_i_1_n_0 ),
        .CO({\RP_inter_reg[31]_i_1_n_0 ,\RP_inter_reg[31]_i_1_n_1 ,\RP_inter_reg[31]_i_1_n_2 ,\RP_inter_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({QL_inter[31],Q[30:28]}),
        .O(\QL_inter_reg[31]_0 ),
        .S({\RP_inter[31]_i_2_n_0 ,\RP_inter[31]_i_3_n_0 ,\RP_inter[31]_i_4_n_0 ,\RP_inter[31]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[35]_i_1 
       (.CI(\RP_inter_reg[31]_i_1_n_0 ),
        .CO({\RP_inter_reg[35]_i_1_n_0 ,\RP_inter_reg[35]_i_1_n_1 ,\RP_inter_reg[35]_i_1_n_2 ,\RP_inter_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(QL_inter[35:32]),
        .O(\QL_inter_reg[35]_0 ),
        .S({\RP_inter[35]_i_2_n_0 ,\RP_inter[35]_i_3_n_0 ,\RP_inter[35]_i_4_n_0 ,\RP_inter[35]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[39]_i_1 
       (.CI(\RP_inter_reg[35]_i_1_n_0 ),
        .CO({\RP_inter_reg[39]_i_1_n_0 ,\RP_inter_reg[39]_i_1_n_1 ,\RP_inter_reg[39]_i_1_n_2 ,\RP_inter_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(QL_inter[39:36]),
        .O(\QL_inter_reg[39]_0 ),
        .S({\RP_inter[39]_i_2_n_0 ,\RP_inter[39]_i_3_n_0 ,\RP_inter[39]_i_4_n_0 ,\RP_inter[39]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\RP_inter_reg[3]_i_1_n_0 ,\RP_inter_reg[3]_i_1_n_1 ,\RP_inter_reg[3]_i_1_n_2 ,\RP_inter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(O),
        .S({\RP_inter[3]_i_2_n_0 ,\RP_inter[3]_i_3_n_0 ,\RP_inter[3]_i_4_n_0 ,\RP_inter[3]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[43]_i_1 
       (.CI(\RP_inter_reg[39]_i_1_n_0 ),
        .CO({\RP_inter_reg[43]_i_1_n_0 ,\RP_inter_reg[43]_i_1_n_1 ,\RP_inter_reg[43]_i_1_n_2 ,\RP_inter_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(QL_inter[43:40]),
        .O(\QL_inter_reg[43]_0 ),
        .S({\RP_inter[43]_i_2_n_0 ,\RP_inter[43]_i_3_n_0 ,\RP_inter[43]_i_4_n_0 ,\RP_inter[43]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[47]_i_1 
       (.CI(\RP_inter_reg[43]_i_1_n_0 ),
        .CO({\RP_inter_reg[47]_i_1_n_0 ,\RP_inter_reg[47]_i_1_n_1 ,\RP_inter_reg[47]_i_1_n_2 ,\RP_inter_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(QL_inter[47:44]),
        .O(\QL_inter_reg[47]_0 ),
        .S({\RP_inter[47]_i_2_n_0 ,\RP_inter[47]_i_3_n_0 ,\RP_inter[47]_i_4_n_0 ,\RP_inter[47]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[51]_i_1 
       (.CI(\RP_inter_reg[47]_i_1_n_0 ),
        .CO({\RP_inter_reg[51]_i_1_n_0 ,\RP_inter_reg[51]_i_1_n_1 ,\RP_inter_reg[51]_i_1_n_2 ,\RP_inter_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(QL_inter[51:48]),
        .O(\QL_inter_reg[51]_0 ),
        .S({\RP_inter[51]_i_2_n_0 ,\RP_inter[51]_i_3_n_0 ,\RP_inter[51]_i_4_n_0 ,\RP_inter[51]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[55]_i_1 
       (.CI(\RP_inter_reg[51]_i_1_n_0 ),
        .CO({\RP_inter_reg[55]_i_1_n_0 ,\RP_inter_reg[55]_i_1_n_1 ,\RP_inter_reg[55]_i_1_n_2 ,\RP_inter_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(QL_inter[55:52]),
        .O(\QL_inter_reg[55]_0 ),
        .S({\RP_inter[55]_i_2_n_0 ,\RP_inter[55]_i_3_n_0 ,\RP_inter[55]_i_4_n_0 ,\RP_inter[55]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[59]_i_1 
       (.CI(\RP_inter_reg[55]_i_1_n_0 ),
        .CO({\RP_inter_reg[59]_i_1_n_0 ,\RP_inter_reg[59]_i_1_n_1 ,\RP_inter_reg[59]_i_1_n_2 ,\RP_inter_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(QL_inter[59:56]),
        .O(\QL_inter_reg[59]_0 ),
        .S({\RP_inter[59]_i_2_n_0 ,\RP_inter[59]_i_3_n_0 ,\RP_inter[59]_i_4_n_0 ,\RP_inter[59]_i_5_n_0 }));
  CARRY4 \RP_inter_reg[63]_i_2 
       (.CI(\RP_inter_reg[59]_i_1_n_0 ),
        .CO({\NLW_RP_inter_reg[63]_i_2_CO_UNCONNECTED [3],\RP_inter_reg[63]_i_2_n_1 ,\RP_inter_reg[63]_i_2_n_2 ,\RP_inter_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,QL_inter[62:60]}),
        .O(\QL_inter_reg[62]_0 ),
        .S({\RP_inter[63]_i_3_n_0 ,\RP_inter[63]_i_4_n_0 ,\RP_inter[63]_i_5_n_0 ,\RP_inter[63]_i_6_n_0 }));
  CARRY4 \RP_inter_reg[7]_i_1 
       (.CI(\RP_inter_reg[3]_i_1_n_0 ),
        .CO({\RP_inter_reg[7]_i_1_n_0 ,\RP_inter_reg[7]_i_1_n_1 ,\RP_inter_reg[7]_i_1_n_2 ,\RP_inter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\QL_inter_reg[7]_0 ),
        .S({\RP_inter[7]_i_2_n_0 ,\RP_inter[7]_i_3_n_0 ,\RP_inter[7]_i_4_n_0 ,\RP_inter[7]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "shiftreg_R" *) 
module Lab3_mult_Top_0_0_shiftreg_R
   (\QR_inter_reg[0]_0 ,
    Q,
    \FSM_onehot_state_reg[4] ,
    E,
    D,
    clk,
    rst);
  output \QR_inter_reg[0]_0 ;
  output [31:0]Q;
  input \FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input [31:0]D;
  input clk;
  input rst;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[4] ;
  wire [31:0]Q;
  wire \QR_inter_reg[0]_0 ;
  wire clk;
  wire rst;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[4] ),
        .O(\QR_inter_reg[0]_0 ));
  FDCE \QR_inter_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \QR_inter_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \QR_inter_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \QR_inter_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \QR_inter_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \QR_inter_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \QR_inter_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \QR_inter_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \QR_inter_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \QR_inter_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \QR_inter_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \QR_inter_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \QR_inter_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \QR_inter_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \QR_inter_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \QR_inter_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \QR_inter_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \QR_inter_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \QR_inter_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \QR_inter_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \QR_inter_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \QR_inter_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \QR_inter_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \QR_inter_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \QR_inter_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \QR_inter_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \QR_inter_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \QR_inter_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \QR_inter_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \QR_inter_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \QR_inter_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \QR_inter_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[9]),
        .Q(Q[9]));
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
