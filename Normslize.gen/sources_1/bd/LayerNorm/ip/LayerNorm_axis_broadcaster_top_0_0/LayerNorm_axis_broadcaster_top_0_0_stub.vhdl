-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Oct 31 14:42:19 2025
-- Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/alhua/VivadoProject/Normslize/Normslize.gen/sources_1/bd/LayerNorm/ip/LayerNorm_axis_broadcaster_top_0_0/LayerNorm_axis_broadcaster_top_0_0_stub.vhdl
-- Design      : LayerNorm_axis_broadcaster_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LayerNorm_axis_broadcaster_top_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M0_AXIS_TVALID : out STD_LOGIC;
    M1_AXIS_TVALID : out STD_LOGIC;
    M0_AXIS_TREADY : in STD_LOGIC;
    M1_AXIS_TREADY : in STD_LOGIC;
    M0_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M1_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LayerNorm_axis_broadcaster_top_0_0 : entity is "LayerNorm_axis_broadcaster_top_0_0,axis_broadcaster_top,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of LayerNorm_axis_broadcaster_top_0_0 : entity is "LayerNorm_axis_broadcaster_top_0_0,axis_broadcaster_top,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axis_broadcaster_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of LayerNorm_axis_broadcaster_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of LayerNorm_axis_broadcaster_top_0_0 : entity is "module_ref";
end LayerNorm_axis_broadcaster_top_0_0;

architecture stub of LayerNorm_axis_broadcaster_top_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,S_AXIS_TVALID,S_AXIS_TREADY,S_AXIS_TDATA[127:0],M0_AXIS_TVALID,M1_AXIS_TVALID,M0_AXIS_TREADY,M1_AXIS_TREADY,M0_AXIS_TDATA[127:0],M1_AXIS_TDATA[127:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M0_AXIS:M1_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LayerNorm_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_MODE of S_AXIS_TVALID : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXIS_TVALID : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN LayerNorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of M0_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M0_AXIS TVALID";
  attribute X_INTERFACE_MODE of M0_AXIS_TVALID : signal is "master";
  attribute X_INTERFACE_PARAMETER of M0_AXIS_TVALID : signal is "XIL_INTERFACENAME M0_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN LayerNorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M1_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M1_AXIS TVALID";
  attribute X_INTERFACE_MODE of M1_AXIS_TVALID : signal is "master";
  attribute X_INTERFACE_PARAMETER of M1_AXIS_TVALID : signal is "XIL_INTERFACENAME M1_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN LayerNorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M0_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M0_AXIS TREADY";
  attribute X_INTERFACE_INFO of M1_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M1_AXIS TREADY";
  attribute X_INTERFACE_INFO of M0_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M0_AXIS TDATA";
  attribute X_INTERFACE_INFO of M1_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M1_AXIS TDATA";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "axis_broadcaster_top,Vivado 2024.2";
begin
end;
