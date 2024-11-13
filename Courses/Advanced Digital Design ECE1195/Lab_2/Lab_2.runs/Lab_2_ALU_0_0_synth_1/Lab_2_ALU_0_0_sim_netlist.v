// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Sep 20 12:38:01 2022
// Host        : DESKTOP-F9189KT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Lab_2_ALU_0_0_sim_netlist.v
// Design      : Lab_2_ALU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU
   (temp_arithR,
    CO,
    ALUOp,
    A,
    B);
  output [31:0]temp_arithR;
  output [0:0]CO;
  input [0:0]ALUOp;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [0:0]ALUOp;
  wire [31:0]B;
  wire [0:0]CO;
  wire [31:0]temp_arithR;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_Arith Arith
       (.A(A),
        .ALUOp(ALUOp),
        .B(B),
        .CO(CO),
        .temp_arithR(temp_arithR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_Arith
   (temp_arithR,
    CO,
    ALUOp,
    A,
    B);
  output [31:0]temp_arithR;
  output [0:0]CO;
  input [0:0]ALUOp;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [0:0]ALUOp;
  wire [31:0]B;
  wire [0:0]CO;
  wire \R[11]_INST_0_i_4_n_0 ;
  wire \R[11]_INST_0_i_4_n_1 ;
  wire \R[11]_INST_0_i_4_n_2 ;
  wire \R[11]_INST_0_i_4_n_3 ;
  wire \R[11]_INST_0_i_6_n_0 ;
  wire \R[11]_INST_0_i_7_n_0 ;
  wire \R[11]_INST_0_i_8_n_0 ;
  wire \R[11]_INST_0_i_9_n_0 ;
  wire \R[19]_INST_0_i_10_n_0 ;
  wire \R[19]_INST_0_i_14_n_0 ;
  wire \R[19]_INST_0_i_15_n_0 ;
  wire \R[19]_INST_0_i_16_n_0 ;
  wire \R[19]_INST_0_i_17_n_0 ;
  wire \R[19]_INST_0_i_2_n_0 ;
  wire \R[19]_INST_0_i_2_n_1 ;
  wire \R[19]_INST_0_i_2_n_2 ;
  wire \R[19]_INST_0_i_2_n_3 ;
  wire \R[19]_INST_0_i_6_n_0 ;
  wire \R[19]_INST_0_i_6_n_1 ;
  wire \R[19]_INST_0_i_6_n_2 ;
  wire \R[19]_INST_0_i_6_n_3 ;
  wire \R[19]_INST_0_i_7_n_0 ;
  wire \R[19]_INST_0_i_8_n_0 ;
  wire \R[19]_INST_0_i_9_n_0 ;
  wire \R[23]_INST_0_i_2_n_0 ;
  wire \R[23]_INST_0_i_2_n_1 ;
  wire \R[23]_INST_0_i_2_n_2 ;
  wire \R[23]_INST_0_i_2_n_3 ;
  wire \R[23]_INST_0_i_6_n_0 ;
  wire \R[23]_INST_0_i_7_n_0 ;
  wire \R[23]_INST_0_i_8_n_0 ;
  wire \R[23]_INST_0_i_9_n_0 ;
  wire \R[27]_INST_0_i_10_n_0 ;
  wire \R[27]_INST_0_i_2_n_0 ;
  wire \R[27]_INST_0_i_2_n_1 ;
  wire \R[27]_INST_0_i_2_n_2 ;
  wire \R[27]_INST_0_i_2_n_3 ;
  wire \R[27]_INST_0_i_7_n_0 ;
  wire \R[27]_INST_0_i_8_n_0 ;
  wire \R[27]_INST_0_i_9_n_0 ;
  wire \R[31]_INST_0_i_10_n_0 ;
  wire \R[31]_INST_0_i_11_n_0 ;
  wire \R[31]_INST_0_i_2_n_0 ;
  wire \R[31]_INST_0_i_2_n_1 ;
  wire \R[31]_INST_0_i_2_n_2 ;
  wire \R[31]_INST_0_i_2_n_3 ;
  wire \R[31]_INST_0_i_8_n_0 ;
  wire \R[31]_INST_0_i_9_n_0 ;
  wire \R[3]_INST_0_i_2_n_0 ;
  wire \R[3]_INST_0_i_2_n_1 ;
  wire \R[3]_INST_0_i_2_n_2 ;
  wire \R[3]_INST_0_i_2_n_3 ;
  wire \R[3]_INST_0_i_6_n_0 ;
  wire \R[3]_INST_0_i_7_n_0 ;
  wire \R[3]_INST_0_i_8_n_0 ;
  wire \R[3]_INST_0_i_9_n_0 ;
  wire \R[7]_INST_0_i_2_n_0 ;
  wire \R[7]_INST_0_i_2_n_1 ;
  wire \R[7]_INST_0_i_2_n_2 ;
  wire \R[7]_INST_0_i_2_n_3 ;
  wire \R[7]_INST_0_i_6_n_0 ;
  wire \R[7]_INST_0_i_7_n_0 ;
  wire \R[7]_INST_0_i_8_n_0 ;
  wire \R[7]_INST_0_i_9_n_0 ;
  wire [31:0]temp_arithR;
  wire [3:1]\NLW_R[0]_INST_0_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_R[0]_INST_0_i_6_O_UNCONNECTED ;

  CARRY4 \R[0]_INST_0_i_6 
       (.CI(\R[31]_INST_0_i_2_n_0 ),
        .CO({\NLW_R[0]_INST_0_i_6_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_R[0]_INST_0_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \R[11]_INST_0_i_4 
       (.CI(\R[7]_INST_0_i_2_n_0 ),
        .CO({\R[11]_INST_0_i_4_n_0 ,\R[11]_INST_0_i_4_n_1 ,\R[11]_INST_0_i_4_n_2 ,\R[11]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(temp_arithR[11:8]),
        .S({\R[11]_INST_0_i_6_n_0 ,\R[11]_INST_0_i_7_n_0 ,\R[11]_INST_0_i_8_n_0 ,\R[11]_INST_0_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[11]_INST_0_i_6 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(ALUOp),
        .O(\R[11]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[11]_INST_0_i_7 
       (.I0(A[10]),
        .I1(B[10]),
        .I2(ALUOp),
        .O(\R[11]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[11]_INST_0_i_8 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(ALUOp),
        .O(\R[11]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[11]_INST_0_i_9 
       (.I0(A[8]),
        .I1(B[8]),
        .I2(ALUOp),
        .O(\R[11]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_10 
       (.I0(A[16]),
        .I1(B[16]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_14 
       (.I0(A[15]),
        .I1(B[15]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_15 
       (.I0(A[14]),
        .I1(B[14]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_16 
       (.I0(A[13]),
        .I1(B[13]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_17 
       (.I0(A[12]),
        .I1(B[12]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_17_n_0 ));
  CARRY4 \R[19]_INST_0_i_2 
       (.CI(\R[19]_INST_0_i_6_n_0 ),
        .CO({\R[19]_INST_0_i_2_n_0 ,\R[19]_INST_0_i_2_n_1 ,\R[19]_INST_0_i_2_n_2 ,\R[19]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O(temp_arithR[19:16]),
        .S({\R[19]_INST_0_i_7_n_0 ,\R[19]_INST_0_i_8_n_0 ,\R[19]_INST_0_i_9_n_0 ,\R[19]_INST_0_i_10_n_0 }));
  CARRY4 \R[19]_INST_0_i_6 
       (.CI(\R[11]_INST_0_i_4_n_0 ),
        .CO({\R[19]_INST_0_i_6_n_0 ,\R[19]_INST_0_i_6_n_1 ,\R[19]_INST_0_i_6_n_2 ,\R[19]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O(temp_arithR[15:12]),
        .S({\R[19]_INST_0_i_14_n_0 ,\R[19]_INST_0_i_15_n_0 ,\R[19]_INST_0_i_16_n_0 ,\R[19]_INST_0_i_17_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_7 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_8 
       (.I0(A[18]),
        .I1(B[18]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_9 
       (.I0(A[17]),
        .I1(B[17]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_9_n_0 ));
  CARRY4 \R[23]_INST_0_i_2 
       (.CI(\R[19]_INST_0_i_2_n_0 ),
        .CO({\R[23]_INST_0_i_2_n_0 ,\R[23]_INST_0_i_2_n_1 ,\R[23]_INST_0_i_2_n_2 ,\R[23]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(temp_arithR[23:20]),
        .S({\R[23]_INST_0_i_6_n_0 ,\R[23]_INST_0_i_7_n_0 ,\R[23]_INST_0_i_8_n_0 ,\R[23]_INST_0_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[23]_INST_0_i_6 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(ALUOp),
        .O(\R[23]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[23]_INST_0_i_7 
       (.I0(A[22]),
        .I1(B[22]),
        .I2(ALUOp),
        .O(\R[23]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[23]_INST_0_i_8 
       (.I0(A[21]),
        .I1(B[21]),
        .I2(ALUOp),
        .O(\R[23]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[23]_INST_0_i_9 
       (.I0(A[20]),
        .I1(B[20]),
        .I2(ALUOp),
        .O(\R[23]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[27]_INST_0_i_10 
       (.I0(A[24]),
        .I1(B[24]),
        .I2(ALUOp),
        .O(\R[27]_INST_0_i_10_n_0 ));
  CARRY4 \R[27]_INST_0_i_2 
       (.CI(\R[23]_INST_0_i_2_n_0 ),
        .CO({\R[27]_INST_0_i_2_n_0 ,\R[27]_INST_0_i_2_n_1 ,\R[27]_INST_0_i_2_n_2 ,\R[27]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(temp_arithR[27:24]),
        .S({\R[27]_INST_0_i_7_n_0 ,\R[27]_INST_0_i_8_n_0 ,\R[27]_INST_0_i_9_n_0 ,\R[27]_INST_0_i_10_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[27]_INST_0_i_7 
       (.I0(A[27]),
        .I1(B[27]),
        .I2(ALUOp),
        .O(\R[27]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[27]_INST_0_i_8 
       (.I0(A[26]),
        .I1(B[26]),
        .I2(ALUOp),
        .O(\R[27]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[27]_INST_0_i_9 
       (.I0(A[25]),
        .I1(B[25]),
        .I2(ALUOp),
        .O(\R[27]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[31]_INST_0_i_10 
       (.I0(A[29]),
        .I1(B[29]),
        .I2(ALUOp),
        .O(\R[31]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[31]_INST_0_i_11 
       (.I0(A[28]),
        .I1(B[28]),
        .I2(ALUOp),
        .O(\R[31]_INST_0_i_11_n_0 ));
  CARRY4 \R[31]_INST_0_i_2 
       (.CI(\R[27]_INST_0_i_2_n_0 ),
        .CO({\R[31]_INST_0_i_2_n_0 ,\R[31]_INST_0_i_2_n_1 ,\R[31]_INST_0_i_2_n_2 ,\R[31]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[31:28]),
        .O(temp_arithR[31:28]),
        .S({\R[31]_INST_0_i_8_n_0 ,\R[31]_INST_0_i_9_n_0 ,\R[31]_INST_0_i_10_n_0 ,\R[31]_INST_0_i_11_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[31]_INST_0_i_8 
       (.I0(A[31]),
        .I1(B[31]),
        .I2(ALUOp),
        .O(\R[31]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[31]_INST_0_i_9 
       (.I0(A[30]),
        .I1(B[30]),
        .I2(ALUOp),
        .O(\R[31]_INST_0_i_9_n_0 ));
  CARRY4 \R[3]_INST_0_i_2 
       (.CI(1'b0),
        .CO({\R[3]_INST_0_i_2_n_0 ,\R[3]_INST_0_i_2_n_1 ,\R[3]_INST_0_i_2_n_2 ,\R[3]_INST_0_i_2_n_3 }),
        .CYINIT(ALUOp),
        .DI(A[3:0]),
        .O(temp_arithR[3:0]),
        .S({\R[3]_INST_0_i_6_n_0 ,\R[3]_INST_0_i_7_n_0 ,\R[3]_INST_0_i_8_n_0 ,\R[3]_INST_0_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[3]_INST_0_i_6 
       (.I0(A[3]),
        .I1(B[3]),
        .I2(ALUOp),
        .O(\R[3]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[3]_INST_0_i_7 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(ALUOp),
        .O(\R[3]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[3]_INST_0_i_8 
       (.I0(A[1]),
        .I1(B[1]),
        .I2(ALUOp),
        .O(\R[3]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[3]_INST_0_i_9 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(ALUOp),
        .O(\R[3]_INST_0_i_9_n_0 ));
  CARRY4 \R[7]_INST_0_i_2 
       (.CI(\R[3]_INST_0_i_2_n_0 ),
        .CO({\R[7]_INST_0_i_2_n_0 ,\R[7]_INST_0_i_2_n_1 ,\R[7]_INST_0_i_2_n_2 ,\R[7]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(temp_arithR[7:4]),
        .S({\R[7]_INST_0_i_6_n_0 ,\R[7]_INST_0_i_7_n_0 ,\R[7]_INST_0_i_8_n_0 ,\R[7]_INST_0_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[7]_INST_0_i_6 
       (.I0(A[7]),
        .I1(B[7]),
        .I2(ALUOp),
        .O(\R[7]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[7]_INST_0_i_7 
       (.I0(A[6]),
        .I1(B[6]),
        .I2(ALUOp),
        .O(\R[7]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[7]_INST_0_i_8 
       (.I0(A[5]),
        .I1(B[5]),
        .I2(ALUOp),
        .O(\R[7]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[7]_INST_0_i_9 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(ALUOp),
        .O(\R[7]_INST_0_i_9_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "Lab_2_ALU_0_0,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    ALUOp,
    SHAMT,
    R,
    Overflow,
    Zero);
  input [31:0]A;
  input [31:0]B;
  input [3:0]ALUOp;
  input [4:0]SHAMT;
  output [31:0]R;
  output Overflow;
  output Zero;

  wire [31:0]A;
  wire [3:0]ALUOp;
  wire [31:0]B;
  wire [31:2]L1;
  wire [23:4]L2;
  wire [31:8]L3;
  wire [23:16]L4;
  wire [0:0]LogicalR;
  wire Overflow;
  wire [31:0]R;
  wire [30:0]R1;
  wire [31:8]R2;
  wire [31:0]R3;
  wire [15:8]R4;
  wire \R[0]_INST_0_i_5_n_0 ;
  wire \R[10]_INST_0_i_1_n_0 ;
  wire \R[10]_INST_0_i_2_n_0 ;
  wire \R[11]_INST_0_i_1_n_0 ;
  wire \R[11]_INST_0_i_2_n_0 ;
  wire \R[12]_INST_0_i_1_n_0 ;
  wire \R[12]_INST_0_i_2_n_0 ;
  wire \R[13]_INST_0_i_1_n_0 ;
  wire \R[13]_INST_0_i_2_n_0 ;
  wire \R[14]_INST_0_i_1_n_0 ;
  wire \R[14]_INST_0_i_2_n_0 ;
  wire \R[15]_INST_0_i_1_n_0 ;
  wire \R[15]_INST_0_i_2_n_0 ;
  wire \R[16]_INST_0_i_2_n_0 ;
  wire \R[17]_INST_0_i_2_n_0 ;
  wire \R[18]_INST_0_i_2_n_0 ;
  wire \R[19]_INST_0_i_3_n_0 ;
  wire \R[1]_INST_0_i_2_n_0 ;
  wire \R[1]_INST_0_i_4_n_0 ;
  wire \R[20]_INST_0_i_2_n_0 ;
  wire \R[21]_INST_0_i_2_n_0 ;
  wire \R[22]_INST_0_i_2_n_0 ;
  wire \R[23]_INST_0_i_3_n_0 ;
  wire \R[24]_INST_0_i_2_n_0 ;
  wire \R[25]_INST_0_i_2_n_0 ;
  wire \R[25]_INST_0_i_7_n_0 ;
  wire \R[26]_INST_0_i_2_n_0 ;
  wire \R[27]_INST_0_i_3_n_0 ;
  wire \R[28]_INST_0_i_2_n_0 ;
  wire \R[29]_INST_0_i_2_n_0 ;
  wire \R[2]_INST_0_i_2_n_0 ;
  wire \R[2]_INST_0_i_4_n_0 ;
  wire \R[30]_INST_0_i_2_n_0 ;
  wire \R[31]_INST_0_i_3_n_0 ;
  wire \R[31]_INST_0_i_4_n_0 ;
  wire \R[3]_INST_0_i_3_n_0 ;
  wire \R[3]_INST_0_i_5_n_0 ;
  wire \R[4]_INST_0_i_2_n_0 ;
  wire \R[4]_INST_0_i_4_n_0 ;
  wire \R[5]_INST_0_i_2_n_0 ;
  wire \R[6]_INST_0_i_2_n_0 ;
  wire \R[6]_INST_0_i_4_n_0 ;
  wire \R[7]_INST_0_i_3_n_0 ;
  wire \R[7]_INST_0_i_5_n_0 ;
  wire \R[8]_INST_0_i_1_n_0 ;
  wire \R[8]_INST_0_i_2_n_0 ;
  wire \R[9]_INST_0_i_1_n_0 ;
  wire \R[9]_INST_0_i_2_n_0 ;
  wire [4:0]SHAMT;
  wire [31:0]ShiftR;
  wire U0_n_32;
  wire Zero;
  wire Zero_INST_0_i_1_n_0;
  wire Zero_INST_0_i_2_n_0;
  wire Zero_INST_0_i_3_n_0;
  wire Zero_INST_0_i_4_n_0;
  wire Zero_INST_0_i_5_n_0;
  wire Zero_INST_0_i_6_n_0;
  wire Zero_INST_0_i_7_n_0;
  wire Zero_INST_0_i_8_n_0;
  wire [31:0]temp_arithR;
  wire [0:0]temp_compR;

  LUT5 #(
    .INIT(32'h00004224)) 
    Overflow_INST_0
       (.I0(A[31]),
        .I1(temp_arithR[31]),
        .I2(ALUOp[1]),
        .I3(B[31]),
        .I4(ALUOp[0]),
        .O(Overflow));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[0]_INST_0 
       (.I0(ShiftR[0]),
        .I1(temp_arithR[0]),
        .I2(ALUOp[2]),
        .I3(temp_compR),
        .I4(ALUOp[3]),
        .I5(LogicalR),
        .O(R[0]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[0]_INST_0_i_1 
       (.I0(R3[16]),
        .I1(R3[0]),
        .I2(ALUOp[1]),
        .I3(\R[0]_INST_0_i_5_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[0]));
  LUT6 #(
    .INIT(64'h20300020E0F0C0E0)) 
    \R[0]_INST_0_i_2 
       (.I0(A[31]),
        .I1(ALUOp[0]),
        .I2(ALUOp[1]),
        .I3(B[31]),
        .I4(temp_arithR[31]),
        .I5(U0_n_32),
        .O(temp_compR));
  LUT4 #(
    .INIT(16'h5668)) 
    \R[0]_INST_0_i_3 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(B[0]),
        .I3(A[0]),
        .O(LogicalR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[0]_INST_0_i_4 
       (.I0(R1[12]),
        .I1(R1[8]),
        .I2(SHAMT[3]),
        .I3(R1[4]),
        .I4(SHAMT[2]),
        .I5(R1[0]),
        .O(R3[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \R[0]_INST_0_i_5 
       (.I0(SHAMT[2]),
        .I1(SHAMT[0]),
        .I2(A[0]),
        .I3(SHAMT[1]),
        .I4(SHAMT[3]),
        .O(\R[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[0]_INST_0_i_7 
       (.I0(A[3]),
        .I1(A[2]),
        .I2(SHAMT[1]),
        .I3(A[1]),
        .I4(SHAMT[0]),
        .I5(A[0]),
        .O(R1[0]));
  MUXF7 \R[10]_INST_0 
       (.I0(\R[10]_INST_0_i_1_n_0 ),
        .I1(\R[10]_INST_0_i_2_n_0 ),
        .O(R[10]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[10]_INST_0_i_1 
       (.I0(A[10]),
        .I1(B[10]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[10]_INST_0_i_2 
       (.I0(R4[10]),
        .I1(ALUOp[1]),
        .I2(L3[10]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(temp_arithR[10]),
        .O(\R[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[10]_INST_0_i_3 
       (.I0(R3[26]),
        .I1(SHAMT[4]),
        .I2(R2[18]),
        .I3(SHAMT[3]),
        .I4(R2[10]),
        .O(R4[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[10]_INST_0_i_4 
       (.I0(R1[22]),
        .I1(SHAMT[2]),
        .I2(R1[18]),
        .O(R2[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[10]_INST_0_i_5 
       (.I0(R1[14]),
        .I1(SHAMT[2]),
        .I2(R1[10]),
        .O(R2[10]));
  MUXF7 \R[11]_INST_0 
       (.I0(\R[11]_INST_0_i_1_n_0 ),
        .I1(\R[11]_INST_0_i_2_n_0 ),
        .O(R[11]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[11]_INST_0_i_1 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[11]_INST_0_i_2 
       (.I0(R4[11]),
        .I1(ALUOp[1]),
        .I2(L3[11]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(temp_arithR[11]),
        .O(\R[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[11]_INST_0_i_3 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R2[27]),
        .I2(SHAMT[4]),
        .I3(R2[19]),
        .I4(SHAMT[3]),
        .I5(R2[11]),
        .O(R4[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[11]_INST_0_i_5 
       (.I0(R1[15]),
        .I1(SHAMT[2]),
        .I2(R1[11]),
        .O(R2[11]));
  MUXF7 \R[12]_INST_0 
       (.I0(\R[12]_INST_0_i_1_n_0 ),
        .I1(\R[12]_INST_0_i_2_n_0 ),
        .O(R[12]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[12]_INST_0_i_1 
       (.I0(A[12]),
        .I1(B[12]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[12]_INST_0_i_2 
       (.I0(R4[12]),
        .I1(ALUOp[1]),
        .I2(L3[12]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(temp_arithR[12]),
        .O(\R[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[12]_INST_0_i_3 
       (.I0(R3[28]),
        .I1(SHAMT[4]),
        .I2(R2[20]),
        .I3(SHAMT[3]),
        .I4(R2[12]),
        .O(R4[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[12]_INST_0_i_4 
       (.I0(R1[16]),
        .I1(SHAMT[2]),
        .I2(R1[12]),
        .O(R2[12]));
  MUXF7 \R[13]_INST_0 
       (.I0(\R[13]_INST_0_i_1_n_0 ),
        .I1(\R[13]_INST_0_i_2_n_0 ),
        .O(R[13]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[13]_INST_0_i_1 
       (.I0(A[13]),
        .I1(B[13]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[13]_INST_0_i_2 
       (.I0(R4[13]),
        .I1(ALUOp[1]),
        .I2(L3[13]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(temp_arithR[13]),
        .O(\R[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[13]_INST_0_i_3 
       (.I0(R3[29]),
        .I1(SHAMT[4]),
        .I2(R2[21]),
        .I3(SHAMT[3]),
        .I4(R2[13]),
        .O(R4[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[13]_INST_0_i_4 
       (.I0(R1[17]),
        .I1(SHAMT[2]),
        .I2(R1[13]),
        .O(R2[13]));
  MUXF7 \R[14]_INST_0 
       (.I0(\R[14]_INST_0_i_1_n_0 ),
        .I1(\R[14]_INST_0_i_2_n_0 ),
        .O(R[14]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[14]_INST_0_i_1 
       (.I0(A[14]),
        .I1(B[14]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[14]_INST_0_i_2 
       (.I0(R4[14]),
        .I1(ALUOp[1]),
        .I2(L3[14]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(temp_arithR[14]),
        .O(\R[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[14]_INST_0_i_3 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R2[30]),
        .I2(SHAMT[4]),
        .I3(R2[22]),
        .I4(SHAMT[3]),
        .I5(R2[14]),
        .O(R4[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[14]_INST_0_i_4 
       (.I0(R1[26]),
        .I1(SHAMT[2]),
        .I2(R1[22]),
        .O(R2[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[14]_INST_0_i_5 
       (.I0(R1[18]),
        .I1(SHAMT[2]),
        .I2(R1[14]),
        .O(R2[14]));
  MUXF7 \R[15]_INST_0 
       (.I0(\R[15]_INST_0_i_1_n_0 ),
        .I1(\R[15]_INST_0_i_2_n_0 ),
        .O(R[15]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[15]_INST_0_i_1 
       (.I0(A[15]),
        .I1(B[15]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[15]_INST_0_i_2 
       (.I0(R4[15]),
        .I1(ALUOp[1]),
        .I2(L3[15]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(temp_arithR[15]),
        .O(\R[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[15]_INST_0_i_3 
       (.I0(R3[31]),
        .I1(SHAMT[4]),
        .I2(R2[23]),
        .I3(SHAMT[3]),
        .I4(R2[15]),
        .O(R4[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[15]_INST_0_i_4 
       (.I0(R1[27]),
        .I1(SHAMT[2]),
        .I2(R1[23]),
        .O(R2[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[15]_INST_0_i_5 
       (.I0(R1[19]),
        .I1(SHAMT[2]),
        .I2(R1[15]),
        .O(R2[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[16]_INST_0 
       (.I0(ShiftR[16]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[16]),
        .I3(ALUOp[2]),
        .I4(\R[16]_INST_0_i_2_n_0 ),
        .O(R[16]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[16]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R3[16]),
        .I4(ALUOp[1]),
        .I5(L4[16]),
        .O(ShiftR[16]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[16]_INST_0_i_2 
       (.I0(A[16]),
        .I1(B[16]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[16]_INST_0_i_3 
       (.I0(R1[28]),
        .I1(R1[24]),
        .I2(SHAMT[3]),
        .I3(R1[20]),
        .I4(SHAMT[2]),
        .I5(R1[16]),
        .O(R3[16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[16]_INST_0_i_4 
       (.I0(\R[0]_INST_0_i_5_n_0 ),
        .I1(SHAMT[4]),
        .I2(L2[8]),
        .I3(SHAMT[3]),
        .I4(L2[16]),
        .O(L4[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[16]_INST_0_i_5 
       (.I0(A[23]),
        .I1(A[22]),
        .I2(SHAMT[1]),
        .I3(A[21]),
        .I4(SHAMT[0]),
        .I5(A[20]),
        .O(R1[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[16]_INST_0_i_6 
       (.I0(A[19]),
        .I1(A[18]),
        .I2(SHAMT[1]),
        .I3(A[17]),
        .I4(SHAMT[0]),
        .I5(A[16]),
        .O(R1[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[16]_INST_0_i_7 
       (.I0(L1[12]),
        .I1(SHAMT[2]),
        .I2(L1[16]),
        .O(L2[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[17]_INST_0 
       (.I0(ShiftR[17]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[17]),
        .I3(ALUOp[2]),
        .I4(\R[17]_INST_0_i_2_n_0 ),
        .O(R[17]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[17]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R3[17]),
        .I4(ALUOp[1]),
        .I5(L4[17]),
        .O(ShiftR[17]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[17]_INST_0_i_2 
       (.I0(A[17]),
        .I1(B[17]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[17]_INST_0_i_3 
       (.I0(R1[29]),
        .I1(R1[25]),
        .I2(SHAMT[3]),
        .I3(R1[21]),
        .I4(SHAMT[2]),
        .I5(R1[17]),
        .O(R3[17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[17]_INST_0_i_4 
       (.I0(\R[1]_INST_0_i_4_n_0 ),
        .I1(SHAMT[4]),
        .I2(L2[9]),
        .I3(SHAMT[3]),
        .I4(L2[17]),
        .O(L4[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[17]_INST_0_i_5 
       (.I0(A[24]),
        .I1(A[23]),
        .I2(SHAMT[1]),
        .I3(A[22]),
        .I4(SHAMT[0]),
        .I5(A[21]),
        .O(R1[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[17]_INST_0_i_6 
       (.I0(A[20]),
        .I1(A[19]),
        .I2(SHAMT[1]),
        .I3(A[18]),
        .I4(SHAMT[0]),
        .I5(A[17]),
        .O(R1[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[17]_INST_0_i_7 
       (.I0(L1[5]),
        .I1(SHAMT[2]),
        .I2(L1[9]),
        .O(L2[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[17]_INST_0_i_8 
       (.I0(L1[13]),
        .I1(SHAMT[2]),
        .I2(L1[17]),
        .O(L2[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[18]_INST_0 
       (.I0(ShiftR[18]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[18]),
        .I3(ALUOp[2]),
        .I4(\R[18]_INST_0_i_2_n_0 ),
        .O(R[18]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[18]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R3[18]),
        .I4(ALUOp[1]),
        .I5(L4[18]),
        .O(ShiftR[18]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[18]_INST_0_i_2 
       (.I0(A[18]),
        .I1(B[18]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[18]_INST_0_i_3 
       (.I0(R1[30]),
        .I1(R1[26]),
        .I2(SHAMT[3]),
        .I3(R1[22]),
        .I4(SHAMT[2]),
        .I5(R1[18]),
        .O(R3[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \R[18]_INST_0_i_4 
       (.I0(\R[2]_INST_0_i_4_n_0 ),
        .I1(SHAMT[4]),
        .I2(L2[10]),
        .I3(SHAMT[3]),
        .I4(L2[18]),
        .O(L4[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[18]_INST_0_i_5 
       (.I0(A[21]),
        .I1(A[20]),
        .I2(SHAMT[1]),
        .I3(A[19]),
        .I4(SHAMT[0]),
        .I5(A[18]),
        .O(R1[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[18]_INST_0_i_6 
       (.I0(L1[6]),
        .I1(SHAMT[2]),
        .I2(L1[10]),
        .O(L2[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[18]_INST_0_i_7 
       (.I0(L1[14]),
        .I1(SHAMT[2]),
        .I2(L1[18]),
        .O(L2[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[19]_INST_0 
       (.I0(ShiftR[19]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[19]),
        .I3(ALUOp[2]),
        .I4(\R[19]_INST_0_i_3_n_0 ),
        .O(R[19]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[19]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R3[19]),
        .I4(ALUOp[1]),
        .I5(L4[19]),
        .O(ShiftR[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[19]_INST_0_i_11 
       (.I0(R1[23]),
        .I1(SHAMT[2]),
        .I2(R1[19]),
        .O(R2[19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[19]_INST_0_i_12 
       (.I0(L1[7]),
        .I1(SHAMT[2]),
        .I2(L1[11]),
        .O(L2[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[19]_INST_0_i_13 
       (.I0(L1[15]),
        .I1(SHAMT[2]),
        .I2(L1[19]),
        .O(L2[19]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[19]_INST_0_i_3 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[19]_INST_0_i_4 
       (.I0(R2[27]),
        .I1(SHAMT[3]),
        .I2(R2[19]),
        .O(R3[19]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \R[19]_INST_0_i_5 
       (.I0(SHAMT[2]),
        .I1(L1[3]),
        .I2(SHAMT[4]),
        .I3(L2[11]),
        .I4(SHAMT[3]),
        .I5(L2[19]),
        .O(L4[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[1]_INST_0 
       (.I0(ShiftR[1]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[1]),
        .I3(ALUOp[2]),
        .I4(\R[1]_INST_0_i_2_n_0 ),
        .O(R[1]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[1]_INST_0_i_1 
       (.I0(R3[17]),
        .I1(R3[1]),
        .I2(ALUOp[1]),
        .I3(\R[1]_INST_0_i_4_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[1]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[1]_INST_0_i_2 
       (.I0(A[1]),
        .I1(B[1]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[1]_INST_0_i_3 
       (.I0(R1[13]),
        .I1(R1[9]),
        .I2(SHAMT[3]),
        .I3(R1[5]),
        .I4(SHAMT[2]),
        .I5(R1[1]),
        .O(R3[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \R[1]_INST_0_i_4 
       (.I0(SHAMT[2]),
        .I1(A[1]),
        .I2(SHAMT[0]),
        .I3(A[0]),
        .I4(SHAMT[1]),
        .I5(SHAMT[3]),
        .O(\R[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[1]_INST_0_i_5 
       (.I0(A[4]),
        .I1(A[3]),
        .I2(SHAMT[1]),
        .I3(A[2]),
        .I4(SHAMT[0]),
        .I5(A[1]),
        .O(R1[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[20]_INST_0 
       (.I0(ShiftR[20]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[20]),
        .I3(ALUOp[2]),
        .I4(\R[20]_INST_0_i_2_n_0 ),
        .O(R[20]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[20]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R3[20]),
        .I4(ALUOp[1]),
        .I5(L4[20]),
        .O(ShiftR[20]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[20]_INST_0_i_2 
       (.I0(A[20]),
        .I1(B[20]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[20]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[2]),
        .I3(R1[28]),
        .I4(SHAMT[3]),
        .I5(R2[20]),
        .O(R3[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[20]_INST_0_i_4 
       (.I0(\R[4]_INST_0_i_4_n_0 ),
        .I1(SHAMT[4]),
        .I2(L2[12]),
        .I3(SHAMT[3]),
        .I4(L2[20]),
        .O(L4[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[20]_INST_0_i_5 
       (.I0(R1[24]),
        .I1(SHAMT[2]),
        .I2(R1[20]),
        .O(R2[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[20]_INST_0_i_6 
       (.I0(L1[16]),
        .I1(SHAMT[2]),
        .I2(L1[20]),
        .O(L2[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[21]_INST_0 
       (.I0(ShiftR[21]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[21]),
        .I3(ALUOp[2]),
        .I4(\R[21]_INST_0_i_2_n_0 ),
        .O(R[21]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[21]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R3[21]),
        .I4(ALUOp[1]),
        .I5(L4[21]),
        .O(ShiftR[21]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[21]_INST_0_i_2 
       (.I0(A[21]),
        .I1(B[21]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[21]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[2]),
        .I3(R1[29]),
        .I4(SHAMT[3]),
        .I5(R2[21]),
        .O(R3[21]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \R[21]_INST_0_i_4 
       (.I0(L2[5]),
        .I1(SHAMT[4]),
        .I2(L2[13]),
        .I3(SHAMT[3]),
        .I4(L2[21]),
        .O(L4[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[21]_INST_0_i_5 
       (.I0(R1[25]),
        .I1(SHAMT[2]),
        .I2(R1[21]),
        .O(R2[21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[21]_INST_0_i_6 
       (.I0(L1[17]),
        .I1(SHAMT[2]),
        .I2(L1[21]),
        .O(L2[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[22]_INST_0 
       (.I0(ShiftR[22]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[22]),
        .I3(ALUOp[2]),
        .I4(\R[22]_INST_0_i_2_n_0 ),
        .O(R[22]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[22]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R3[22]),
        .I4(ALUOp[1]),
        .I5(L4[22]),
        .O(ShiftR[22]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[22]_INST_0_i_2 
       (.I0(A[22]),
        .I1(B[22]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[22]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[22]_INST_0_i_3 
       (.I0(R2[30]),
        .I1(SHAMT[3]),
        .I2(R1[26]),
        .I3(SHAMT[2]),
        .I4(R1[22]),
        .O(R3[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[22]_INST_0_i_4 
       (.I0(\R[6]_INST_0_i_4_n_0 ),
        .I1(SHAMT[4]),
        .I2(L2[14]),
        .I3(SHAMT[3]),
        .I4(L2[22]),
        .O(L4[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[22]_INST_0_i_5 
       (.I0(A[25]),
        .I1(A[24]),
        .I2(SHAMT[1]),
        .I3(A[23]),
        .I4(SHAMT[0]),
        .I5(A[22]),
        .O(R1[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[22]_INST_0_i_6 
       (.I0(L1[10]),
        .I1(SHAMT[2]),
        .I2(L1[14]),
        .O(L2[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[22]_INST_0_i_7 
       (.I0(L1[18]),
        .I1(SHAMT[2]),
        .I2(L1[22]),
        .O(L2[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[23]_INST_0 
       (.I0(ShiftR[23]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[23]),
        .I3(ALUOp[2]),
        .I4(\R[23]_INST_0_i_3_n_0 ),
        .O(R[23]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[23]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R3[23]),
        .I4(ALUOp[1]),
        .I5(L4[23]),
        .O(ShiftR[23]));
  LUT5 #(
    .INIT(32'hF0F10000)) 
    \R[23]_INST_0_i_10 
       (.I0(SHAMT[2]),
        .I1(SHAMT[1]),
        .I2(ALUOp[0]),
        .I3(SHAMT[0]),
        .I4(A[31]),
        .O(R2[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[23]_INST_0_i_11 
       (.I0(A[30]),
        .I1(A[29]),
        .I2(SHAMT[1]),
        .I3(A[28]),
        .I4(SHAMT[0]),
        .I5(A[27]),
        .O(R1[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[23]_INST_0_i_12 
       (.I0(A[26]),
        .I1(A[25]),
        .I2(SHAMT[1]),
        .I3(A[24]),
        .I4(SHAMT[0]),
        .I5(A[23]),
        .O(R1[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[23]_INST_0_i_13 
       (.I0(L1[11]),
        .I1(SHAMT[2]),
        .I2(L1[15]),
        .O(L2[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[23]_INST_0_i_14 
       (.I0(L1[19]),
        .I1(SHAMT[2]),
        .I2(L1[23]),
        .O(L2[23]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[23]_INST_0_i_3 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[23]_INST_0_i_4 
       (.I0(R2[31]),
        .I1(SHAMT[3]),
        .I2(R1[27]),
        .I3(SHAMT[2]),
        .I4(R1[23]),
        .O(R3[23]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[23]_INST_0_i_5 
       (.I0(\R[7]_INST_0_i_5_n_0 ),
        .I1(SHAMT[4]),
        .I2(L2[15]),
        .I3(SHAMT[3]),
        .I4(L2[23]),
        .O(L4[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[24]_INST_0 
       (.I0(ShiftR[24]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[24]),
        .I3(ALUOp[2]),
        .I4(\R[24]_INST_0_i_2_n_0 ),
        .O(R[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[24]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R3[24]),
        .I2(ALUOp[1]),
        .I3(L3[8]),
        .I4(SHAMT[4]),
        .I5(L3[24]),
        .O(ShiftR[24]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[24]_INST_0_i_2 
       (.I0(A[24]),
        .I1(B[24]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \R[24]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R1[28]),
        .I4(SHAMT[2]),
        .I5(R1[24]),
        .O(R3[24]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \R[24]_INST_0_i_4 
       (.I0(SHAMT[1]),
        .I1(A[0]),
        .I2(SHAMT[0]),
        .I3(SHAMT[2]),
        .I4(SHAMT[3]),
        .I5(L2[8]),
        .O(L3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[24]_INST_0_i_5 
       (.I0(L1[12]),
        .I1(L1[16]),
        .I2(SHAMT[3]),
        .I3(L1[20]),
        .I4(SHAMT[2]),
        .I5(L1[24]),
        .O(L3[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[24]_INST_0_i_6 
       (.I0(A[27]),
        .I1(A[26]),
        .I2(SHAMT[1]),
        .I3(A[25]),
        .I4(SHAMT[0]),
        .I5(A[24]),
        .O(R1[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[24]_INST_0_i_7 
       (.I0(L1[4]),
        .I1(SHAMT[2]),
        .I2(L1[8]),
        .O(L2[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[24]_INST_0_i_8 
       (.I0(A[9]),
        .I1(A[10]),
        .I2(SHAMT[1]),
        .I3(A[11]),
        .I4(SHAMT[0]),
        .I5(A[12]),
        .O(L1[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[25]_INST_0 
       (.I0(ShiftR[25]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[25]),
        .I3(ALUOp[2]),
        .I4(\R[25]_INST_0_i_2_n_0 ),
        .O(R[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R3[25]),
        .I2(ALUOp[1]),
        .I3(L3[9]),
        .I4(SHAMT[4]),
        .I5(L3[25]),
        .O(ShiftR[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_10 
       (.I0(A[10]),
        .I1(A[11]),
        .I2(SHAMT[1]),
        .I3(A[12]),
        .I4(SHAMT[0]),
        .I5(A[13]),
        .O(L1[13]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[25]_INST_0_i_2 
       (.I0(A[25]),
        .I1(B[25]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \R[25]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R1[29]),
        .I4(SHAMT[2]),
        .I5(R1[25]),
        .O(R3[25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[25]_INST_0_i_4 
       (.I0(\R[25]_INST_0_i_7_n_0 ),
        .I1(SHAMT[3]),
        .I2(L1[5]),
        .I3(SHAMT[2]),
        .I4(L1[9]),
        .O(L3[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_5 
       (.I0(L1[13]),
        .I1(L1[17]),
        .I2(SHAMT[3]),
        .I3(L1[21]),
        .I4(SHAMT[2]),
        .I5(L1[25]),
        .O(L3[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_6 
       (.I0(A[28]),
        .I1(A[27]),
        .I2(SHAMT[1]),
        .I3(A[26]),
        .I4(SHAMT[0]),
        .I5(A[25]),
        .O(R1[25]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \R[25]_INST_0_i_7 
       (.I0(SHAMT[1]),
        .I1(A[0]),
        .I2(SHAMT[0]),
        .I3(A[1]),
        .I4(SHAMT[2]),
        .O(\R[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_8 
       (.I0(A[2]),
        .I1(A[3]),
        .I2(SHAMT[1]),
        .I3(A[4]),
        .I4(SHAMT[0]),
        .I5(A[5]),
        .O(L1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_9 
       (.I0(A[6]),
        .I1(A[7]),
        .I2(SHAMT[1]),
        .I3(A[8]),
        .I4(SHAMT[0]),
        .I5(A[9]),
        .O(L1[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[26]_INST_0 
       (.I0(ShiftR[26]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[26]),
        .I3(ALUOp[2]),
        .I4(\R[26]_INST_0_i_2_n_0 ),
        .O(R[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[26]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R3[26]),
        .I2(ALUOp[1]),
        .I3(L3[10]),
        .I4(SHAMT[4]),
        .I5(L3[26]),
        .O(ShiftR[26]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[26]_INST_0_i_2 
       (.I0(A[26]),
        .I1(B[26]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \R[26]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R1[30]),
        .I4(SHAMT[2]),
        .I5(R1[26]),
        .O(R3[26]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[26]_INST_0_i_4 
       (.I0(\R[2]_INST_0_i_4_n_0 ),
        .I1(SHAMT[3]),
        .I2(L1[6]),
        .I3(SHAMT[2]),
        .I4(L1[10]),
        .O(L3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[26]_INST_0_i_5 
       (.I0(L1[14]),
        .I1(L1[18]),
        .I2(SHAMT[3]),
        .I3(L1[22]),
        .I4(SHAMT[2]),
        .I5(L1[26]),
        .O(L3[26]));
  LUT5 #(
    .INIT(32'hB0B3B080)) 
    \R[26]_INST_0_i_6 
       (.I0(ALUOp[0]),
        .I1(SHAMT[1]),
        .I2(A[31]),
        .I3(SHAMT[0]),
        .I4(A[30]),
        .O(R1[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[26]_INST_0_i_7 
       (.I0(A[29]),
        .I1(A[28]),
        .I2(SHAMT[1]),
        .I3(A[27]),
        .I4(SHAMT[0]),
        .I5(A[26]),
        .O(R1[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[27]_INST_0 
       (.I0(ShiftR[27]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[27]),
        .I3(ALUOp[2]),
        .I4(\R[27]_INST_0_i_3_n_0 ),
        .O(R[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[27]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R3[27]),
        .I2(ALUOp[1]),
        .I3(L3[11]),
        .I4(SHAMT[4]),
        .I5(L3[27]),
        .O(ShiftR[27]));
  LUT6 #(
    .INIT(64'hCD00FFFFCD000000)) 
    \R[27]_INST_0_i_11 
       (.I0(SHAMT[1]),
        .I1(ALUOp[0]),
        .I2(SHAMT[0]),
        .I3(A[31]),
        .I4(SHAMT[2]),
        .I5(R1[27]),
        .O(R2[27]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[27]_INST_0_i_3 
       (.I0(A[27]),
        .I1(B[27]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[27]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \R[27]_INST_0_i_4 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R2[27]),
        .O(R3[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \R[27]_INST_0_i_5 
       (.I0(L1[3]),
        .I1(SHAMT[3]),
        .I2(L1[7]),
        .I3(SHAMT[2]),
        .I4(L1[11]),
        .O(L3[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[27]_INST_0_i_6 
       (.I0(L1[15]),
        .I1(L1[19]),
        .I2(SHAMT[3]),
        .I3(L1[23]),
        .I4(SHAMT[2]),
        .I5(L1[27]),
        .O(L3[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[28]_INST_0 
       (.I0(ShiftR[28]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[28]),
        .I3(ALUOp[2]),
        .I4(\R[28]_INST_0_i_2_n_0 ),
        .O(R[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R3[28]),
        .I2(ALUOp[1]),
        .I3(L3[12]),
        .I4(SHAMT[4]),
        .I5(L3[28]),
        .O(ShiftR[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_10 
       (.I0(A[17]),
        .I1(A[18]),
        .I2(SHAMT[1]),
        .I3(A[19]),
        .I4(SHAMT[0]),
        .I5(A[20]),
        .O(L1[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_11 
       (.I0(A[21]),
        .I1(A[22]),
        .I2(SHAMT[1]),
        .I3(A[23]),
        .I4(SHAMT[0]),
        .I5(A[24]),
        .O(L1[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_12 
       (.I0(A[25]),
        .I1(A[26]),
        .I2(SHAMT[1]),
        .I3(A[27]),
        .I4(SHAMT[0]),
        .I5(A[28]),
        .O(L1[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_13 
       (.I0(A[5]),
        .I1(A[6]),
        .I2(SHAMT[1]),
        .I3(A[7]),
        .I4(SHAMT[0]),
        .I5(A[8]),
        .O(L1[8]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[28]_INST_0_i_2 
       (.I0(A[28]),
        .I1(B[28]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC0D5C080)) 
    \R[28]_INST_0_i_3 
       (.I0(SHAMT[3]),
        .I1(ALUOp[0]),
        .I2(A[31]),
        .I3(SHAMT[2]),
        .I4(R1[28]),
        .O(R3[28]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[28]_INST_0_i_4 
       (.I0(L2[4]),
        .I1(SHAMT[3]),
        .I2(L2[12]),
        .O(L3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_5 
       (.I0(L1[16]),
        .I1(L1[20]),
        .I2(SHAMT[3]),
        .I3(L1[24]),
        .I4(SHAMT[2]),
        .I5(L1[28]),
        .O(L3[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_6 
       (.I0(A[31]),
        .I1(A[30]),
        .I2(SHAMT[1]),
        .I3(A[29]),
        .I4(SHAMT[0]),
        .I5(A[28]),
        .O(R1[28]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \R[28]_INST_0_i_7 
       (.I0(SHAMT[0]),
        .I1(A[0]),
        .I2(SHAMT[1]),
        .I3(SHAMT[2]),
        .I4(L1[4]),
        .O(L2[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[28]_INST_0_i_8 
       (.I0(L1[8]),
        .I1(SHAMT[2]),
        .I2(L1[12]),
        .O(L2[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_9 
       (.I0(A[13]),
        .I1(A[14]),
        .I2(SHAMT[1]),
        .I3(A[15]),
        .I4(SHAMT[0]),
        .I5(A[16]),
        .O(L1[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[29]_INST_0 
       (.I0(ShiftR[29]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[29]),
        .I3(ALUOp[2]),
        .I4(\R[29]_INST_0_i_2_n_0 ),
        .O(R[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R3[29]),
        .I2(ALUOp[1]),
        .I3(L3[13]),
        .I4(SHAMT[4]),
        .I5(L3[29]),
        .O(ShiftR[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_10 
       (.I0(A[22]),
        .I1(A[23]),
        .I2(SHAMT[1]),
        .I3(A[24]),
        .I4(SHAMT[0]),
        .I5(A[25]),
        .O(L1[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_11 
       (.I0(A[26]),
        .I1(A[27]),
        .I2(SHAMT[1]),
        .I3(A[28]),
        .I4(SHAMT[0]),
        .I5(A[29]),
        .O(L1[29]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[29]_INST_0_i_2 
       (.I0(A[29]),
        .I1(B[29]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC0D5C080)) 
    \R[29]_INST_0_i_3 
       (.I0(SHAMT[3]),
        .I1(ALUOp[0]),
        .I2(A[31]),
        .I3(SHAMT[2]),
        .I4(R1[29]),
        .O(R3[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[29]_INST_0_i_4 
       (.I0(L2[5]),
        .I1(SHAMT[3]),
        .I2(L2[13]),
        .O(L3[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_5 
       (.I0(L1[17]),
        .I1(L1[21]),
        .I2(SHAMT[3]),
        .I3(L1[25]),
        .I4(SHAMT[2]),
        .I5(L1[29]),
        .O(L3[29]));
  LUT6 #(
    .INIT(64'h8F80CFCF8F80C0C0)) 
    \R[29]_INST_0_i_6 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[1]),
        .I3(A[30]),
        .I4(SHAMT[0]),
        .I5(A[29]),
        .O(R1[29]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[29]_INST_0_i_7 
       (.I0(L1[9]),
        .I1(SHAMT[2]),
        .I2(L1[13]),
        .O(L2[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_8 
       (.I0(A[14]),
        .I1(A[15]),
        .I2(SHAMT[1]),
        .I3(A[16]),
        .I4(SHAMT[0]),
        .I5(A[17]),
        .O(L1[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_9 
       (.I0(A[18]),
        .I1(A[19]),
        .I2(SHAMT[1]),
        .I3(A[20]),
        .I4(SHAMT[0]),
        .I5(A[21]),
        .O(L1[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[2]_INST_0 
       (.I0(ShiftR[2]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[2]),
        .I3(ALUOp[2]),
        .I4(\R[2]_INST_0_i_2_n_0 ),
        .O(R[2]));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \R[2]_INST_0_i_1 
       (.I0(R3[18]),
        .I1(R3[2]),
        .I2(ALUOp[1]),
        .I3(SHAMT[3]),
        .I4(\R[2]_INST_0_i_4_n_0 ),
        .I5(SHAMT[4]),
        .O(ShiftR[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[2]_INST_0_i_2 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[2]_INST_0_i_3 
       (.I0(R1[14]),
        .I1(R1[10]),
        .I2(SHAMT[3]),
        .I3(R1[6]),
        .I4(SHAMT[2]),
        .I5(R1[2]),
        .O(R3[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \R[2]_INST_0_i_4 
       (.I0(A[2]),
        .I1(SHAMT[0]),
        .I2(A[1]),
        .I3(SHAMT[1]),
        .I4(A[0]),
        .I5(SHAMT[2]),
        .O(\R[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[2]_INST_0_i_5 
       (.I0(A[5]),
        .I1(A[4]),
        .I2(SHAMT[1]),
        .I3(A[3]),
        .I4(SHAMT[0]),
        .I5(A[2]),
        .O(R1[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[30]_INST_0 
       (.I0(ShiftR[30]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[30]),
        .I3(ALUOp[2]),
        .I4(\R[30]_INST_0_i_2_n_0 ),
        .O(R[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R3[30]),
        .I2(ALUOp[1]),
        .I3(L3[14]),
        .I4(SHAMT[4]),
        .I5(L3[30]),
        .O(ShiftR[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_10 
       (.I0(A[11]),
        .I1(A[12]),
        .I2(SHAMT[1]),
        .I3(A[13]),
        .I4(SHAMT[0]),
        .I5(A[14]),
        .O(L1[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_11 
       (.I0(A[15]),
        .I1(A[16]),
        .I2(SHAMT[1]),
        .I3(A[17]),
        .I4(SHAMT[0]),
        .I5(A[18]),
        .O(L1[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_12 
       (.I0(A[19]),
        .I1(A[20]),
        .I2(SHAMT[1]),
        .I3(A[21]),
        .I4(SHAMT[0]),
        .I5(A[22]),
        .O(L1[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_13 
       (.I0(A[23]),
        .I1(A[24]),
        .I2(SHAMT[1]),
        .I3(A[25]),
        .I4(SHAMT[0]),
        .I5(A[26]),
        .O(L1[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_14 
       (.I0(A[27]),
        .I1(A[28]),
        .I2(SHAMT[1]),
        .I3(A[29]),
        .I4(SHAMT[0]),
        .I5(A[30]),
        .O(L1[30]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[30]_INST_0_i_2 
       (.I0(A[30]),
        .I1(B[30]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \R[30]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R2[30]),
        .O(R3[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_4 
       (.I0(L1[2]),
        .I1(L1[6]),
        .I2(SHAMT[3]),
        .I3(L1[10]),
        .I4(SHAMT[2]),
        .I5(L1[14]),
        .O(L3[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_5 
       (.I0(L1[18]),
        .I1(L1[22]),
        .I2(SHAMT[3]),
        .I3(L1[26]),
        .I4(SHAMT[2]),
        .I5(L1[30]),
        .O(L3[30]));
  LUT6 #(
    .INIT(64'hCD00CD05CD00C800)) 
    \R[30]_INST_0_i_6 
       (.I0(SHAMT[2]),
        .I1(ALUOp[0]),
        .I2(SHAMT[1]),
        .I3(A[31]),
        .I4(SHAMT[0]),
        .I5(A[30]),
        .O(R2[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \R[30]_INST_0_i_7 
       (.I0(A[0]),
        .I1(SHAMT[1]),
        .I2(A[1]),
        .I3(SHAMT[0]),
        .I4(A[2]),
        .O(L1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_8 
       (.I0(A[3]),
        .I1(A[4]),
        .I2(SHAMT[1]),
        .I3(A[5]),
        .I4(SHAMT[0]),
        .I5(A[6]),
        .O(L1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_9 
       (.I0(A[7]),
        .I1(A[8]),
        .I2(SHAMT[1]),
        .I3(A[9]),
        .I4(SHAMT[0]),
        .I5(A[10]),
        .O(L1[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[31]_INST_0 
       (.I0(ShiftR[31]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[31]),
        .I3(ALUOp[2]),
        .I4(\R[31]_INST_0_i_3_n_0 ),
        .O(R[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R3[31]),
        .I2(ALUOp[1]),
        .I3(L3[15]),
        .I4(SHAMT[4]),
        .I5(L3[31]),
        .O(ShiftR[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_12 
       (.I0(A[0]),
        .I1(A[1]),
        .I2(SHAMT[1]),
        .I3(A[2]),
        .I4(SHAMT[0]),
        .I5(A[3]),
        .O(L1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_13 
       (.I0(A[4]),
        .I1(A[5]),
        .I2(SHAMT[1]),
        .I3(A[6]),
        .I4(SHAMT[0]),
        .I5(A[7]),
        .O(L1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_14 
       (.I0(A[8]),
        .I1(A[9]),
        .I2(SHAMT[1]),
        .I3(A[10]),
        .I4(SHAMT[0]),
        .I5(A[11]),
        .O(L1[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_15 
       (.I0(A[12]),
        .I1(A[13]),
        .I2(SHAMT[1]),
        .I3(A[14]),
        .I4(SHAMT[0]),
        .I5(A[15]),
        .O(L1[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_16 
       (.I0(A[16]),
        .I1(A[17]),
        .I2(SHAMT[1]),
        .I3(A[18]),
        .I4(SHAMT[0]),
        .I5(A[19]),
        .O(L1[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_17 
       (.I0(A[20]),
        .I1(A[21]),
        .I2(SHAMT[1]),
        .I3(A[22]),
        .I4(SHAMT[0]),
        .I5(A[23]),
        .O(L1[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_18 
       (.I0(A[24]),
        .I1(A[25]),
        .I2(SHAMT[1]),
        .I3(A[26]),
        .I4(SHAMT[0]),
        .I5(A[27]),
        .O(L1[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_19 
       (.I0(A[28]),
        .I1(A[29]),
        .I2(SHAMT[1]),
        .I3(A[30]),
        .I4(SHAMT[0]),
        .I5(A[31]),
        .O(L1[31]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[31]_INST_0_i_3 
       (.I0(A[31]),
        .I1(B[31]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \R[31]_INST_0_i_4 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .O(\R[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0100000000)) 
    \R[31]_INST_0_i_5 
       (.I0(SHAMT[3]),
        .I1(SHAMT[2]),
        .I2(SHAMT[1]),
        .I3(ALUOp[0]),
        .I4(SHAMT[0]),
        .I5(A[31]),
        .O(R3[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_6 
       (.I0(L1[3]),
        .I1(L1[7]),
        .I2(SHAMT[3]),
        .I3(L1[11]),
        .I4(SHAMT[2]),
        .I5(L1[15]),
        .O(L3[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_7 
       (.I0(L1[19]),
        .I1(L1[23]),
        .I2(SHAMT[3]),
        .I3(L1[27]),
        .I4(SHAMT[2]),
        .I5(L1[31]),
        .O(L3[31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[3]_INST_0 
       (.I0(ShiftR[3]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[3]),
        .I3(ALUOp[2]),
        .I4(\R[3]_INST_0_i_3_n_0 ),
        .O(R[3]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[3]_INST_0_i_1 
       (.I0(R3[19]),
        .I1(R3[3]),
        .I2(ALUOp[1]),
        .I3(\R[3]_INST_0_i_5_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[3]_INST_0_i_10 
       (.I0(A[6]),
        .I1(A[5]),
        .I2(SHAMT[1]),
        .I3(A[4]),
        .I4(SHAMT[0]),
        .I5(A[3]),
        .O(R1[3]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[3]_INST_0_i_3 
       (.I0(A[3]),
        .I1(B[3]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[3]_INST_0_i_4 
       (.I0(R1[15]),
        .I1(R1[11]),
        .I2(SHAMT[3]),
        .I3(R1[7]),
        .I4(SHAMT[2]),
        .I5(R1[3]),
        .O(R3[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \R[3]_INST_0_i_5 
       (.I0(SHAMT[2]),
        .I1(L1[3]),
        .I2(SHAMT[3]),
        .O(\R[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[4]_INST_0 
       (.I0(ShiftR[4]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[4]),
        .I3(ALUOp[2]),
        .I4(\R[4]_INST_0_i_2_n_0 ),
        .O(R[4]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[4]_INST_0_i_1 
       (.I0(R3[20]),
        .I1(R3[4]),
        .I2(ALUOp[1]),
        .I3(\R[4]_INST_0_i_4_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[4]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[4]_INST_0_i_2 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_3 
       (.I0(R1[16]),
        .I1(R1[12]),
        .I2(SHAMT[3]),
        .I3(R1[8]),
        .I4(SHAMT[2]),
        .I5(R1[4]),
        .O(R3[4]));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \R[4]_INST_0_i_4 
       (.I0(L1[4]),
        .I1(SHAMT[2]),
        .I2(SHAMT[1]),
        .I3(A[0]),
        .I4(SHAMT[0]),
        .I5(SHAMT[3]),
        .O(\R[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_5 
       (.I0(A[15]),
        .I1(A[14]),
        .I2(SHAMT[1]),
        .I3(A[13]),
        .I4(SHAMT[0]),
        .I5(A[12]),
        .O(R1[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_6 
       (.I0(A[11]),
        .I1(A[10]),
        .I2(SHAMT[1]),
        .I3(A[9]),
        .I4(SHAMT[0]),
        .I5(A[8]),
        .O(R1[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_7 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(SHAMT[1]),
        .I3(A[5]),
        .I4(SHAMT[0]),
        .I5(A[4]),
        .O(R1[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_8 
       (.I0(A[1]),
        .I1(A[2]),
        .I2(SHAMT[1]),
        .I3(A[3]),
        .I4(SHAMT[0]),
        .I5(A[4]),
        .O(L1[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[5]_INST_0 
       (.I0(ShiftR[5]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[5]),
        .I3(ALUOp[2]),
        .I4(\R[5]_INST_0_i_2_n_0 ),
        .O(R[5]));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \R[5]_INST_0_i_1 
       (.I0(R3[21]),
        .I1(R3[5]),
        .I2(ALUOp[1]),
        .I3(SHAMT[3]),
        .I4(L2[5]),
        .I5(SHAMT[4]),
        .O(ShiftR[5]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[5]_INST_0_i_2 
       (.I0(A[5]),
        .I1(B[5]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[5]_INST_0_i_3 
       (.I0(R1[17]),
        .I1(R1[13]),
        .I2(SHAMT[3]),
        .I3(R1[9]),
        .I4(SHAMT[2]),
        .I5(R1[5]),
        .O(R3[5]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \R[5]_INST_0_i_4 
       (.I0(A[1]),
        .I1(SHAMT[0]),
        .I2(A[0]),
        .I3(SHAMT[1]),
        .I4(SHAMT[2]),
        .I5(L1[5]),
        .O(L2[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[5]_INST_0_i_5 
       (.I0(A[16]),
        .I1(A[15]),
        .I2(SHAMT[1]),
        .I3(A[14]),
        .I4(SHAMT[0]),
        .I5(A[13]),
        .O(R1[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[5]_INST_0_i_6 
       (.I0(A[12]),
        .I1(A[11]),
        .I2(SHAMT[1]),
        .I3(A[10]),
        .I4(SHAMT[0]),
        .I5(A[9]),
        .O(R1[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[5]_INST_0_i_7 
       (.I0(A[8]),
        .I1(A[7]),
        .I2(SHAMT[1]),
        .I3(A[6]),
        .I4(SHAMT[0]),
        .I5(A[5]),
        .O(R1[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[6]_INST_0 
       (.I0(ShiftR[6]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[6]),
        .I3(ALUOp[2]),
        .I4(\R[6]_INST_0_i_2_n_0 ),
        .O(R[6]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[6]_INST_0_i_1 
       (.I0(R3[22]),
        .I1(R3[6]),
        .I2(ALUOp[1]),
        .I3(\R[6]_INST_0_i_4_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[6]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[6]_INST_0_i_2 
       (.I0(A[6]),
        .I1(B[6]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[6]_INST_0_i_3 
       (.I0(R1[18]),
        .I1(R1[14]),
        .I2(SHAMT[3]),
        .I3(R1[10]),
        .I4(SHAMT[2]),
        .I5(R1[6]),
        .O(R3[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \R[6]_INST_0_i_4 
       (.I0(L1[6]),
        .I1(SHAMT[2]),
        .I2(L1[2]),
        .I3(SHAMT[3]),
        .O(\R[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[6]_INST_0_i_5 
       (.I0(A[17]),
        .I1(A[16]),
        .I2(SHAMT[1]),
        .I3(A[15]),
        .I4(SHAMT[0]),
        .I5(A[14]),
        .O(R1[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[6]_INST_0_i_6 
       (.I0(A[13]),
        .I1(A[12]),
        .I2(SHAMT[1]),
        .I3(A[11]),
        .I4(SHAMT[0]),
        .I5(A[10]),
        .O(R1[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[6]_INST_0_i_7 
       (.I0(A[9]),
        .I1(A[8]),
        .I2(SHAMT[1]),
        .I3(A[7]),
        .I4(SHAMT[0]),
        .I5(A[6]),
        .O(R1[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[7]_INST_0 
       (.I0(ShiftR[7]),
        .I1(ALUOp[3]),
        .I2(temp_arithR[7]),
        .I3(ALUOp[2]),
        .I4(\R[7]_INST_0_i_3_n_0 ),
        .O(R[7]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[7]_INST_0_i_1 
       (.I0(R3[23]),
        .I1(R3[7]),
        .I2(ALUOp[1]),
        .I3(\R[7]_INST_0_i_5_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_10 
       (.I0(A[22]),
        .I1(A[21]),
        .I2(SHAMT[1]),
        .I3(A[20]),
        .I4(SHAMT[0]),
        .I5(A[19]),
        .O(R1[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_11 
       (.I0(A[18]),
        .I1(A[17]),
        .I2(SHAMT[1]),
        .I3(A[16]),
        .I4(SHAMT[0]),
        .I5(A[15]),
        .O(R1[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_12 
       (.I0(A[14]),
        .I1(A[13]),
        .I2(SHAMT[1]),
        .I3(A[12]),
        .I4(SHAMT[0]),
        .I5(A[11]),
        .O(R1[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_13 
       (.I0(A[10]),
        .I1(A[9]),
        .I2(SHAMT[1]),
        .I3(A[8]),
        .I4(SHAMT[0]),
        .I5(A[7]),
        .O(R1[7]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[7]_INST_0_i_3 
       (.I0(A[7]),
        .I1(B[7]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_4 
       (.I0(R1[19]),
        .I1(R1[15]),
        .I2(SHAMT[3]),
        .I3(R1[11]),
        .I4(SHAMT[2]),
        .I5(R1[7]),
        .O(R3[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \R[7]_INST_0_i_5 
       (.I0(L1[7]),
        .I1(SHAMT[2]),
        .I2(L1[3]),
        .I3(SHAMT[3]),
        .O(\R[7]_INST_0_i_5_n_0 ));
  MUXF7 \R[8]_INST_0 
       (.I0(\R[8]_INST_0_i_1_n_0 ),
        .I1(\R[8]_INST_0_i_2_n_0 ),
        .O(R[8]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[8]_INST_0_i_1 
       (.I0(A[8]),
        .I1(B[8]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[8]_INST_0_i_2 
       (.I0(R4[8]),
        .I1(ALUOp[1]),
        .I2(L3[8]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(temp_arithR[8]),
        .O(\R[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[8]_INST_0_i_3 
       (.I0(R3[24]),
        .I1(SHAMT[4]),
        .I2(R2[16]),
        .I3(SHAMT[3]),
        .I4(R2[8]),
        .O(R4[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[8]_INST_0_i_4 
       (.I0(R1[20]),
        .I1(SHAMT[2]),
        .I2(R1[16]),
        .O(R2[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[8]_INST_0_i_5 
       (.I0(R1[12]),
        .I1(SHAMT[2]),
        .I2(R1[8]),
        .O(R2[8]));
  MUXF7 \R[9]_INST_0 
       (.I0(\R[9]_INST_0_i_1_n_0 ),
        .I1(\R[9]_INST_0_i_2_n_0 ),
        .O(R[9]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h000016E8)) 
    \R[9]_INST_0_i_1 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .I4(ALUOp[3]),
        .O(\R[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[9]_INST_0_i_2 
       (.I0(R4[9]),
        .I1(ALUOp[1]),
        .I2(L3[9]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(temp_arithR[9]),
        .O(\R[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[9]_INST_0_i_3 
       (.I0(R3[25]),
        .I1(SHAMT[4]),
        .I2(R2[17]),
        .I3(SHAMT[3]),
        .I4(R2[9]),
        .O(R4[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[9]_INST_0_i_4 
       (.I0(R1[21]),
        .I1(SHAMT[2]),
        .I2(R1[17]),
        .O(R2[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[9]_INST_0_i_5 
       (.I0(R1[13]),
        .I1(SHAMT[2]),
        .I2(R1[9]),
        .O(R2[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU U0
       (.A(A),
        .ALUOp(ALUOp[1]),
        .B(B),
        .CO(U0_n_32),
        .temp_arithR(temp_arithR));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_INST_0
       (.I0(Zero_INST_0_i_1_n_0),
        .I1(Zero_INST_0_i_2_n_0),
        .I2(Zero_INST_0_i_3_n_0),
        .I3(Zero_INST_0_i_4_n_0),
        .O(Zero));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Zero_INST_0_i_1
       (.I0(temp_arithR[22]),
        .I1(temp_arithR[21]),
        .I2(temp_arithR[24]),
        .I3(temp_arithR[23]),
        .I4(Zero_INST_0_i_5_n_0),
        .O(Zero_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Zero_INST_0_i_2
       (.I0(temp_arithR[30]),
        .I1(temp_arithR[29]),
        .I2(temp_arithR[0]),
        .I3(temp_arithR[31]),
        .I4(Zero_INST_0_i_6_n_0),
        .O(Zero_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Zero_INST_0_i_3
       (.I0(temp_arithR[6]),
        .I1(temp_arithR[5]),
        .I2(temp_arithR[8]),
        .I3(temp_arithR[7]),
        .I4(Zero_INST_0_i_7_n_0),
        .O(Zero_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Zero_INST_0_i_4
       (.I0(temp_arithR[14]),
        .I1(temp_arithR[13]),
        .I2(temp_arithR[16]),
        .I3(temp_arithR[15]),
        .I4(Zero_INST_0_i_8_n_0),
        .O(Zero_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_5
       (.I0(temp_arithR[19]),
        .I1(temp_arithR[20]),
        .I2(temp_arithR[17]),
        .I3(temp_arithR[18]),
        .O(Zero_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_6
       (.I0(temp_arithR[27]),
        .I1(temp_arithR[28]),
        .I2(temp_arithR[25]),
        .I3(temp_arithR[26]),
        .O(Zero_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_7
       (.I0(temp_arithR[3]),
        .I1(temp_arithR[4]),
        .I2(temp_arithR[1]),
        .I3(temp_arithR[2]),
        .O(Zero_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_8
       (.I0(temp_arithR[11]),
        .I1(temp_arithR[12]),
        .I2(temp_arithR[9]),
        .I3(temp_arithR[10]),
        .O(Zero_INST_0_i_8_n_0));
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
