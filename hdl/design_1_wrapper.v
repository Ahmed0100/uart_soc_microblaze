//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed May 11 20:47:49 2022
//Host        : DESKTOP-93BQQJR running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clock,
    i_tx_data_0,
    i_tx_data_valid_0,
    o_rx_data_0,
    o_rx_data_valid_0,
    o_tx_done_0,
    reset_rtl);
  input clock;
  input [7:0]i_tx_data_0;
  input i_tx_data_valid_0;
  output [7:0]o_rx_data_0;
  output o_rx_data_valid_0;
  output o_tx_done_0;
  input reset_rtl;

  wire clock;
  wire [7:0]i_tx_data_0;
  wire i_tx_data_valid_0;
  wire [7:0]o_rx_data_0;
  wire o_rx_data_valid_0;
  wire o_tx_done_0;
  wire reset_rtl;

  design_1 design_1_i
       (.clock(clock),
        .i_tx_data_0(i_tx_data_0),
        .i_tx_data_valid_0(i_tx_data_valid_0),
        .o_rx_data_0(o_rx_data_0),
        .o_rx_data_valid_0(o_rx_data_valid_0),
        .o_tx_done_0(o_tx_done_0),
        .reset_rtl(reset_rtl));
endmodule
