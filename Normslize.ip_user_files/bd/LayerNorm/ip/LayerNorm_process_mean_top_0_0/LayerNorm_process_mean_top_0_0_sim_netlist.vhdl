-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Oct 31 14:43:04 2025
-- Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alhua/VivadoProject/Normslize/Normslize.gen/sources_1/bd/LayerNorm/ip/LayerNorm_process_mean_top_0_0/LayerNorm_process_mean_top_0_0_sim_netlist.vhdl
-- Design      : LayerNorm_process_mean_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LayerNorm_process_mean_top_0_0_mean_fifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \m_axis_tvalid_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    s_axis_a_tready : in STD_LOGIC;
    \m_axis_tvalid_reg[0]_0\ : in STD_LOGIC;
    S_AXIS_TREADY_0 : in STD_LOGIC;
    \m_axis_tvalid_reg[0]_1\ : in STD_LOGIC;
    \m_axis_tvalid_reg[0]_2\ : in STD_LOGIC;
    \m_axis_tvalid_reg[0]_3\ : in STD_LOGIC;
    \m_axis_tvalid_reg[0]_4\ : in STD_LOGIC;
    \m_axis_tvalid_reg[0]_5\ : in STD_LOGIC;
    \m_axis_tvalid_reg[0]_6\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of LayerNorm_process_mean_top_0_0_mean_fifo : entity is "mean_fifo";
end LayerNorm_process_mean_top_0_0_mean_fifo;

architecture STRUCTURE of LayerNorm_process_mean_top_0_0_mean_fifo is
  component LayerNorm_process_mean_top_0_0_align_mul is
  port (
    D : in STD_LOGIC_VECTOR ( 127 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component LayerNorm_process_mean_top_0_0_align_mul;
  signal S_AXIS_TREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_axis_tvalid1 : STD_LOGIC;
  signal \m_axis_tvalid[8]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid_reg[8]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal shift_ram_u_i_1_n_0 : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shift_ram_u : label is "align_mul,c_shift_ram_v12_0_18,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shift_ram_u : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shift_ram_u : label is "c_shift_ram_v12_0_18,Vivado 2024.2";
begin
  \m_axis_tvalid_reg[8]_0\(0) <= \^m_axis_tvalid_reg[8]_0\(0);
S_AXIS_TREADY_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5550000"
    )
        port map (
      I0 => \^m_axis_tvalid_reg[8]_0\(0),
      I1 => s_axis_a_tready,
      I2 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I3 => \m_axis_tvalid_reg[0]_0\,
      I4 => S_AXIS_TREADY_0,
      O => S_AXIS_TREADY
    );
S_AXIS_TREADY_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \m_axis_tvalid_reg[0]_1\,
      I1 => \m_axis_tvalid_reg[0]_2\,
      I2 => \m_axis_tvalid_reg[0]_3\,
      I3 => \m_axis_tvalid_reg[0]_4\,
      I4 => \m_axis_tvalid_reg[0]_5\,
      I5 => \m_axis_tvalid_reg[0]_6\,
      O => S_AXIS_TREADY_INST_0_i_1_n_0
    );
\m_axis_tvalid[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5550000"
    )
        port map (
      I0 => \^m_axis_tvalid_reg[8]_0\(0),
      I1 => s_axis_a_tready,
      I2 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I3 => \m_axis_tvalid_reg[0]_0\,
      I4 => S_AXIS_TVALID,
      O => m_axis_tvalid1
    );
\m_axis_tvalid[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arstn,
      O => \m_axis_tvalid[8]_i_1_n_0\
    );
\m_axis_tvalid_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid1,
      Q => m_axis_tvalid(0)
    );
\m_axis_tvalid_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid(0),
      Q => m_axis_tvalid(1)
    );
\m_axis_tvalid_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid(1),
      Q => m_axis_tvalid(2)
    );
\m_axis_tvalid_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid(2),
      Q => m_axis_tvalid(3)
    );
\m_axis_tvalid_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid(3),
      Q => m_axis_tvalid(4)
    );
\m_axis_tvalid_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid(4),
      Q => m_axis_tvalid(5)
    );
\m_axis_tvalid_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid(5),
      Q => m_axis_tvalid(6)
    );
\m_axis_tvalid_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid(6),
      Q => m_axis_tvalid(7)
    );
\m_axis_tvalid_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_ram_u_i_1_n_0,
      CLR => \m_axis_tvalid[8]_i_1_n_0\,
      D => m_axis_tvalid(7),
      Q => \^m_axis_tvalid_reg[8]_0\(0)
    );
shift_ram_u: component LayerNorm_process_mean_top_0_0_align_mul
     port map (
      CE => shift_ram_u_i_1_n_0,
      CLK => aclk,
      D(127 downto 0) => S_AXIS_TDATA(127 downto 0),
      Q(127 downto 0) => Q(127 downto 0)
    );
shift_ram_u_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^m_axis_tvalid_reg[8]_0\(0),
      I1 => S_AXIS_TVALID,
      I2 => s_axis_a_tready,
      I3 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I4 => \m_axis_tvalid_reg[0]_0\,
      O => shift_ram_u_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LayerNorm_process_mean_top_0_0_process_mean_top is
  port (
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 143 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 143 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of LayerNorm_process_mean_top_0_0_process_mean_top : entity is "process_mean_top";
end LayerNorm_process_mean_top_0_0_process_mean_top;

architecture STRUCTURE of LayerNorm_process_mean_top_0_0_process_mean_top is
  component LayerNorm_process_mean_top_0_0_bf_mul is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component LayerNorm_process_mean_top_0_0_bf_mul;
  component LayerNorm_process_mean_top_0_0_bf_mul_HD1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component LayerNorm_process_mean_top_0_0_bf_mul_HD1;
  component LayerNorm_process_mean_top_0_0_bf_sub is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component LayerNorm_process_mean_top_0_0_bf_sub;
  component LayerNorm_process_mean_top_0_0_bf_sub_HD2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component LayerNorm_process_mean_top_0_0_bf_sub_HD2;
  signal M_AXIS_TVALID_INST_0_i_1_n_0 : STD_LOGIC;
  signal cal_mean_i_2_n_0 : STD_LOGIC;
  signal fifo_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \fifo_ready_bus[0]\ : STD_LOGIC;
  signal \fifo_ready_bus[1]\ : STD_LOGIC;
  signal \fifo_ready_bus[2]\ : STD_LOGIC;
  signal \fifo_ready_bus[3]\ : STD_LOGIC;
  signal \fifo_ready_bus[4]\ : STD_LOGIC;
  signal \fifo_ready_bus[5]\ : STD_LOGIC;
  signal \fifo_ready_bus[6]\ : STD_LOGIC;
  signal \fifo_ready_bus[7]\ : STD_LOGIC;
  signal fifo_valid : STD_LOGIC;
  signal mean_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mean_ready : STD_LOGIC;
  signal mean_ready1 : STD_LOGIC;
  signal \mean_ready_bus[0]\ : STD_LOGIC;
  signal \mean_ready_bus[1]\ : STD_LOGIC;
  signal \mean_ready_bus[2]\ : STD_LOGIC;
  signal \mean_ready_bus[3]\ : STD_LOGIC;
  signal \mean_ready_bus[4]\ : STD_LOGIC;
  signal \mean_ready_bus[5]\ : STD_LOGIC;
  signal \mean_ready_bus[6]\ : STD_LOGIC;
  signal \mean_ready_bus[7]\ : STD_LOGIC;
  signal mean_valid : STD_LOGIC;
  signal meansquare_valid : STD_LOGIC;
  signal sum_ready : STD_LOGIC;
  signal \zero_mean_valid_bus[0]\ : STD_LOGIC;
  signal \zero_mean_valid_bus[1]\ : STD_LOGIC;
  signal \zero_mean_valid_bus[2]\ : STD_LOGIC;
  signal \zero_mean_valid_bus[3]\ : STD_LOGIC;
  signal \zero_mean_valid_bus[4]\ : STD_LOGIC;
  signal \zero_mean_valid_bus[5]\ : STD_LOGIC;
  signal \zero_mean_valid_bus[6]\ : STD_LOGIC;
  signal \zero_mean_valid_bus[7]\ : STD_LOGIC;
  signal NLW_cal_mean_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_cal_meansquare_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cal_mean : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cal_mean : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cal_mean : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of cal_meansquare : label is "bf_mul,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of cal_meansquare : label is "yes";
  attribute X_CORE_INFO of cal_meansquare : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \sub_mean[0].sub_mean\ : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \sub_mean[0].sub_mean\ : label is "yes";
  attribute X_CORE_INFO of \sub_mean[0].sub_mean\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \sub_mean[1].sub_mean\ : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \sub_mean[1].sub_mean\ : label is "yes";
  attribute X_CORE_INFO of \sub_mean[1].sub_mean\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \sub_mean[2].sub_mean\ : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \sub_mean[2].sub_mean\ : label is "yes";
  attribute X_CORE_INFO of \sub_mean[2].sub_mean\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \sub_mean[3].sub_mean\ : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \sub_mean[3].sub_mean\ : label is "yes";
  attribute X_CORE_INFO of \sub_mean[3].sub_mean\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \sub_mean[4].sub_mean\ : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \sub_mean[4].sub_mean\ : label is "yes";
  attribute X_CORE_INFO of \sub_mean[4].sub_mean\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \sub_mean[5].sub_mean\ : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \sub_mean[5].sub_mean\ : label is "yes";
  attribute X_CORE_INFO of \sub_mean[5].sub_mean\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \sub_mean[6].sub_mean\ : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \sub_mean[6].sub_mean\ : label is "yes";
  attribute X_CORE_INFO of \sub_mean[6].sub_mean\ : label is "floating_point_v7_1_19,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of \sub_mean[7].sub_mean\ : label is "bf_sub,floating_point_v7_1_19,{}";
  attribute DowngradeIPIdentifiedWarnings of \sub_mean[7].sub_mean\ : label is "yes";
  attribute X_CORE_INFO of \sub_mean[7].sub_mean\ : label is "floating_point_v7_1_19,Vivado 2024.2";
begin
M_AXIS_TVALID_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \zero_mean_valid_bus[7]\,
      I1 => M_AXIS_TVALID_INST_0_i_1_n_0,
      I2 => \zero_mean_valid_bus[0]\,
      I3 => meansquare_valid,
      I4 => \zero_mean_valid_bus[2]\,
      I5 => \zero_mean_valid_bus[1]\,
      O => M_AXIS_TVALID
    );
M_AXIS_TVALID_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \zero_mean_valid_bus[4]\,
      I1 => \zero_mean_valid_bus[3]\,
      I2 => \zero_mean_valid_bus[6]\,
      I3 => \zero_mean_valid_bus[5]\,
      O => M_AXIS_TVALID_INST_0_i_1_n_0
    );
cal_mean: component LayerNorm_process_mean_top_0_0_bf_mul
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => mean_data(15 downto 0),
      m_axis_result_tready => mean_ready,
      m_axis_result_tvalid => mean_valid,
      s_axis_a_tdata(15 downto 0) => S_AXIS_TDATA(15 downto 0),
      s_axis_a_tready => sum_ready,
      s_axis_a_tvalid => S_AXIS_TVALID,
      s_axis_b_tdata(15 downto 0) => B"0011101010101011",
      s_axis_b_tready => NLW_cal_mean_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tvalid => '1'
    );
cal_mean_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => mean_ready1,
      I1 => cal_mean_i_2_n_0,
      I2 => \mean_ready_bus[0]\,
      I3 => \mean_ready_bus[7]\,
      I4 => \mean_ready_bus[2]\,
      I5 => \mean_ready_bus[1]\,
      O => mean_ready
    );
cal_mean_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \mean_ready_bus[4]\,
      I1 => \mean_ready_bus[3]\,
      I2 => \mean_ready_bus[6]\,
      I3 => \mean_ready_bus[5]\,
      O => cal_mean_i_2_n_0
    );
cal_meansquare: component LayerNorm_process_mean_top_0_0_bf_mul_HD1
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(15 downto 0),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => meansquare_valid,
      s_axis_a_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_a_tready => mean_ready1,
      s_axis_a_tvalid => mean_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => NLW_cal_meansquare_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tvalid => mean_valid
    );
fifo_u: entity work.LayerNorm_process_mean_top_0_0_mean_fifo
     port map (
      Q(127 downto 0) => fifo_out(127 downto 0),
      S_AXIS_TDATA(127 downto 0) => S_AXIS_TDATA(143 downto 16),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TREADY_0 => sum_ready,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      arstn => arstn,
      \m_axis_tvalid_reg[0]_0\ => \fifo_ready_bus[6]\,
      \m_axis_tvalid_reg[0]_1\ => \fifo_ready_bus[3]\,
      \m_axis_tvalid_reg[0]_2\ => \fifo_ready_bus[2]\,
      \m_axis_tvalid_reg[0]_3\ => \fifo_ready_bus[0]\,
      \m_axis_tvalid_reg[0]_4\ => \fifo_ready_bus[7]\,
      \m_axis_tvalid_reg[0]_5\ => \fifo_ready_bus[1]\,
      \m_axis_tvalid_reg[0]_6\ => \fifo_ready_bus[4]\,
      \m_axis_tvalid_reg[8]_0\(0) => fifo_valid,
      s_axis_a_tready => \fifo_ready_bus[5]\
    );
\sub_mean[0].sub_mean\: component LayerNorm_process_mean_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(31 downto 16),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => \zero_mean_valid_bus[0]\,
      s_axis_a_tdata(15 downto 0) => fifo_out(15 downto 0),
      s_axis_a_tready => \fifo_ready_bus[0]\,
      s_axis_a_tvalid => fifo_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => \mean_ready_bus[0]\,
      s_axis_b_tvalid => mean_valid
    );
\sub_mean[1].sub_mean\: component LayerNorm_process_mean_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(47 downto 32),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => \zero_mean_valid_bus[1]\,
      s_axis_a_tdata(15 downto 0) => fifo_out(31 downto 16),
      s_axis_a_tready => \fifo_ready_bus[1]\,
      s_axis_a_tvalid => fifo_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => \mean_ready_bus[1]\,
      s_axis_b_tvalid => mean_valid
    );
\sub_mean[2].sub_mean\: component LayerNorm_process_mean_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(63 downto 48),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => \zero_mean_valid_bus[2]\,
      s_axis_a_tdata(15 downto 0) => fifo_out(47 downto 32),
      s_axis_a_tready => \fifo_ready_bus[2]\,
      s_axis_a_tvalid => fifo_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => \mean_ready_bus[2]\,
      s_axis_b_tvalid => mean_valid
    );
\sub_mean[3].sub_mean\: component LayerNorm_process_mean_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(79 downto 64),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => \zero_mean_valid_bus[3]\,
      s_axis_a_tdata(15 downto 0) => fifo_out(63 downto 48),
      s_axis_a_tready => \fifo_ready_bus[3]\,
      s_axis_a_tvalid => fifo_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => \mean_ready_bus[3]\,
      s_axis_b_tvalid => mean_valid
    );
\sub_mean[4].sub_mean\: component LayerNorm_process_mean_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(95 downto 80),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => \zero_mean_valid_bus[4]\,
      s_axis_a_tdata(15 downto 0) => fifo_out(79 downto 64),
      s_axis_a_tready => \fifo_ready_bus[4]\,
      s_axis_a_tvalid => fifo_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => \mean_ready_bus[4]\,
      s_axis_b_tvalid => mean_valid
    );
\sub_mean[5].sub_mean\: component LayerNorm_process_mean_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(111 downto 96),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => \zero_mean_valid_bus[5]\,
      s_axis_a_tdata(15 downto 0) => fifo_out(95 downto 80),
      s_axis_a_tready => \fifo_ready_bus[5]\,
      s_axis_a_tvalid => fifo_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => \mean_ready_bus[5]\,
      s_axis_b_tvalid => mean_valid
    );
\sub_mean[6].sub_mean\: component LayerNorm_process_mean_top_0_0_bf_sub
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(127 downto 112),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => \zero_mean_valid_bus[6]\,
      s_axis_a_tdata(15 downto 0) => fifo_out(111 downto 96),
      s_axis_a_tready => \fifo_ready_bus[6]\,
      s_axis_a_tvalid => fifo_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => \mean_ready_bus[6]\,
      s_axis_b_tvalid => mean_valid
    );
\sub_mean[7].sub_mean\: component LayerNorm_process_mean_top_0_0_bf_sub_HD2
     port map (
      aclk => aclk,
      aresetn => arstn,
      m_axis_result_tdata(15 downto 0) => M_AXIS_TDATA(143 downto 128),
      m_axis_result_tready => M_AXIS_TREADY,
      m_axis_result_tvalid => \zero_mean_valid_bus[7]\,
      s_axis_a_tdata(15 downto 0) => fifo_out(127 downto 112),
      s_axis_a_tready => \fifo_ready_bus[7]\,
      s_axis_a_tvalid => fifo_valid,
      s_axis_b_tdata(15 downto 0) => mean_data(15 downto 0),
      s_axis_b_tready => \mean_ready_bus[7]\,
      s_axis_b_tvalid => mean_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LayerNorm_process_mean_top_0_0 is
  port (
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 143 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 143 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of LayerNorm_process_mean_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LayerNorm_process_mean_top_0_0 : entity is "LayerNorm_process_mean_top_0_0,process_mean_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of LayerNorm_process_mean_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of LayerNorm_process_mean_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of LayerNorm_process_mean_top_0_0 : entity is "process_mean_top,Vivado 2024.2";
end LayerNorm_process_mean_top_0_0;

architecture STRUCTURE of LayerNorm_process_mean_top_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN LayerNorm_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_MODE of M_AXIS_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXIS_TDATA : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN LayerNorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_MODE of S_AXIS_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXIS_TDATA : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN LayerNorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.LayerNorm_process_mean_top_0_0_process_mean_top
     port map (
      M_AXIS_TDATA(143 downto 0) => M_AXIS_TDATA(143 downto 0),
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(143 downto 0) => S_AXIS_TDATA(143 downto 0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      aclk => aclk,
      arstn => arstn
    );
end STRUCTURE;
