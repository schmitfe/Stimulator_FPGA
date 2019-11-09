-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 29 16:16:49 2019
-- Host        : DESKTOP-A11CNTB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/felix/Desktop/VHDL/Stimulator_FPGA/project_3/project_3.sim/PostSynth/synth/func/xsim/StimulatorTB_func_synth.vhd
-- Design      : Stimulator
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ChannelConfigReg is
  port (
    \WaveAdressA[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_InterPeriods_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    WaveAddr_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    ChanAddressReg : in STD_LOGIC;
    WriteConfig_IBUF : in STD_LOGIC;
    \OUT_InterInterval_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_InterPeriods_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_Amplitude_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end ChannelConfigReg;

architecture STRUCTURE of ChannelConfigReg is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal OUT_Amplitude : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \OUT_InterInterval[7]_i_1_n_0\ : STD_LOGIC;
  signal WriteConfZ1 : STD_LOGIC;
  signal \WriteConfZ1_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B[16]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \B[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \B[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \B[7]_i_1\ : label is "soft_lutpair0";
begin
  D(4 downto 0) <= \^d\(4 downto 0);
\B[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => OUT_Amplitude(3),
      I1 => OUT_Amplitude(2),
      I2 => \^d\(0),
      I3 => OUT_Amplitude(1),
      O => \^d\(4)
    );
\B[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^d\(0),
      I1 => OUT_Amplitude(1),
      O => \^d\(1)
    );
\B[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => OUT_Amplitude(1),
      I1 => \^d\(0),
      I2 => OUT_Amplitude(2),
      O => \^d\(2)
    );
\B[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => OUT_Amplitude(2),
      I1 => \^d\(0),
      I2 => OUT_Amplitude(1),
      I3 => OUT_Amplitude(3),
      O => \^d\(3)
    );
\OUT_Amplitude_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_Amplitude_reg[3]_0\(0),
      Q => \^d\(0),
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_Amplitude_reg[3]_0\(1),
      Q => OUT_Amplitude(1),
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_Amplitude_reg[3]_0\(2),
      Q => OUT_Amplitude(2),
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_Amplitude_reg[3]_0\(3),
      Q => OUT_Amplitude(3),
      R => RESET_IBUF
    );
\OUT_InterInterval[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ChanAddressReg,
      I1 => WriteConfig_IBUF,
      I2 => WriteConfZ1,
      O => \OUT_InterInterval[7]_i_1_n_0\
    );
\OUT_InterInterval_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(0),
      Q => Q(0),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(1),
      Q => Q(1),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(2),
      Q => Q(2),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(3),
      Q => Q(3),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(4),
      Q => Q(4),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(5),
      Q => Q(5),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(6),
      Q => Q(6),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(7),
      Q => Q(7),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(0),
      Q => \OUT_InterPeriods_reg[7]_0\(0),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(1),
      Q => \OUT_InterPeriods_reg[7]_0\(1),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(2),
      Q => \OUT_InterPeriods_reg[7]_0\(2),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(3),
      Q => \OUT_InterPeriods_reg[7]_0\(3),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(4),
      Q => \OUT_InterPeriods_reg[7]_0\(4),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(5),
      Q => \OUT_InterPeriods_reg[7]_0\(5),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(6),
      Q => \OUT_InterPeriods_reg[7]_0\(6),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(7),
      Q => \OUT_InterPeriods_reg[7]_0\(7),
      R => RESET_IBUF
    );
\OUT_WaveAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1_n_0\,
      D => WaveAddr_IBUF(0),
      Q => \WaveAdressA[0]\,
      R => RESET_IBUF
    );
\WriteConfZ1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => WriteConfig_IBUF,
      I1 => ChanAddressReg,
      O => \WriteConfZ1_i_1__0_n_0\
    );
WriteConfZ1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \WriteConfZ1_i_1__0_n_0\,
      Q => WriteConfZ1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ChannelConfigReg_0 is
  port (
    \WaveAdressA[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_InterPeriods_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    WaveAddr_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    ChanAddressReg : in STD_LOGIC;
    WriteConfig_IBUF : in STD_LOGIC;
    \OUT_InterInterval_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_InterPeriods_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_Amplitude_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ChannelConfigReg_0 : entity is "ChannelConfigReg";
end ChannelConfigReg_0;

architecture STRUCTURE of ChannelConfigReg_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \OUT_Amplitude_reg_n_0_[1]\ : STD_LOGIC;
  signal \OUT_Amplitude_reg_n_0_[2]\ : STD_LOGIC;
  signal \OUT_Amplitude_reg_n_0_[3]\ : STD_LOGIC;
  signal \OUT_InterInterval[7]_i_1__0_n_0\ : STD_LOGIC;
  signal WriteConf : STD_LOGIC;
  signal WriteConfZ1_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B[16]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \B[5]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \B[6]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \B[7]_i_1__0\ : label is "soft_lutpair29";
begin
  D(4 downto 0) <= \^d\(4 downto 0);
\B[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \OUT_Amplitude_reg_n_0_[3]\,
      I1 => \OUT_Amplitude_reg_n_0_[2]\,
      I2 => \^d\(0),
      I3 => \OUT_Amplitude_reg_n_0_[1]\,
      O => \^d\(4)
    );
\B[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^d\(0),
      I1 => \OUT_Amplitude_reg_n_0_[1]\,
      O => \^d\(1)
    );
\B[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \OUT_Amplitude_reg_n_0_[1]\,
      I1 => \^d\(0),
      I2 => \OUT_Amplitude_reg_n_0_[2]\,
      O => \^d\(2)
    );
\B[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \OUT_Amplitude_reg_n_0_[2]\,
      I1 => \^d\(0),
      I2 => \OUT_Amplitude_reg_n_0_[1]\,
      I3 => \OUT_Amplitude_reg_n_0_[3]\,
      O => \^d\(3)
    );
\OUT_Amplitude_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_Amplitude_reg[3]_0\(0),
      Q => \^d\(0),
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_Amplitude_reg[3]_0\(1),
      Q => \OUT_Amplitude_reg_n_0_[1]\,
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_Amplitude_reg[3]_0\(2),
      Q => \OUT_Amplitude_reg_n_0_[2]\,
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_Amplitude_reg[3]_0\(3),
      Q => \OUT_Amplitude_reg_n_0_[3]\,
      R => RESET_IBUF
    );
\OUT_InterInterval[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ChanAddressReg,
      I1 => WriteConfig_IBUF,
      I2 => WriteConfZ1_reg_n_0,
      O => \OUT_InterInterval[7]_i_1__0_n_0\
    );
\OUT_InterInterval_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(0),
      Q => Q(0),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(1),
      Q => Q(1),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(2),
      Q => Q(2),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(3),
      Q => Q(3),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(4),
      Q => Q(4),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(5),
      Q => Q(5),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(6),
      Q => Q(6),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterInterval_reg[7]_0\(7),
      Q => Q(7),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(0),
      Q => \OUT_InterPeriods_reg[7]_0\(0),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(1),
      Q => \OUT_InterPeriods_reg[7]_0\(1),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(2),
      Q => \OUT_InterPeriods_reg[7]_0\(2),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(3),
      Q => \OUT_InterPeriods_reg[7]_0\(3),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(4),
      Q => \OUT_InterPeriods_reg[7]_0\(4),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(5),
      Q => \OUT_InterPeriods_reg[7]_0\(5),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(6),
      Q => \OUT_InterPeriods_reg[7]_0\(6),
      R => RESET_IBUF
    );
\OUT_InterPeriods_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => \OUT_InterPeriods_reg[7]_1\(7),
      Q => \OUT_InterPeriods_reg[7]_0\(7),
      R => RESET_IBUF
    );
\OUT_WaveAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_InterInterval[7]_i_1__0_n_0\,
      D => WaveAddr_IBUF(0),
      Q => \WaveAdressA[1]\,
      R => RESET_IBUF
    );
WriteConfZ1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => WriteConfig_IBUF,
      I1 => ChanAddressReg,
      O => WriteConf
    );
WriteConfZ1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => WriteConf,
      Q => WriteConfZ1_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    NullflagA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    loadReg0_reg_0 : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \State_reg[1]\ : in STD_LOGIC;
    \State_reg[2]\ : in STD_LOGIC;
    mux4_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    EnWrite_IBUF : in STD_LOGIC;
    ChanAddressReg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    TX_Done : in STD_LOGIC;
    WaveID : in STD_LOGIC;
    \State_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr0 : in STD_LOGIC;
    \WriteMem__1\ : in STD_LOGIC;
    rdcnt0 : in STD_LOGIC;
    Write_Z1_reg_0 : in STD_LOGIC;
    Write_IBUF : in STD_LOGIC
  );
end Memory;

architecture STRUCTURE of Memory is
  signal \^nullflaga\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \Nullflag_i_1__1_n_0\ : STD_LOGIC;
  signal Read_Z1 : STD_LOGIC;
  signal \Read_Z1_i_1__2_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \State[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \State[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \State[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \WRCNT_loc[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[5]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[6]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[7]\ : STD_LOGIC;
  signal Write_Z1 : STD_LOGIC;
  signal \Write_Z1_i_1__1_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \empty_loc_i_1__1_n_0\ : STD_LOGIC;
  signal empty_loc_reg_n_0 : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__5_n_0\ : STD_LOGIC;
  signal loadReg0 : STD_LOGIC;
  signal \loadReg0_i_1__0_n_0\ : STD_LOGIC;
  signal \memory_reg_i_1__1_n_0\ : STD_LOGIC;
  signal \memory_reg_i_2__1_n_0\ : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_6_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdcnt00_in : STD_LOGIC;
  signal rdcnt0_0 : STD_LOGIC;
  signal \rdcnt0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \rdcnt0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \rdcnt0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \rdcnt0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \rdcnt0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \rdcnt0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \rdcnt0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \rdcnt0_carry_i_8__0_n_0\ : STD_LOGIC;
  signal rdcnt0_carry_n_1 : STD_LOGIC;
  signal rdcnt0_carry_n_2 : STD_LOGIC;
  signal rdcnt0_carry_n_3 : STD_LOGIC;
  signal \rdcnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \rdcnt[6]_i_2_n_0\ : STD_LOGIC;
  signal rdcnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW__inferred__2/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rdcnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \WRCNT_loc[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \WRCNT_loc[2]_i_1__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \WRCNT_loc[3]_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \WRCNT_loc[4]_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \WRCNT_loc[6]_i_1__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \WRCNT_loc[7]_i_2__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i__carry_i_5__3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i__carry_i_6__5\ : label is "soft_lutpair35";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg : label is "memory";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of memory_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of memory_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of memory_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of memory_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg : label is 7;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rdcnt[7]_i_1\ : label is "soft_lutpair38";
begin
  NullflagA(0) <= \^nullflaga\(0);
  SR(0) <= \^sr\(0);
\Nullflag_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \_inferred__2/i__carry_n_1\,
      I1 => rdcnt0_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => \^nullflaga\(0),
      O => \Nullflag_i_1__1_n_0\
    );
Nullflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Nullflag_i_1__1_n_0\,
      Q => \^nullflaga\(0),
      R => '0'
    );
\Read_Z1_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088E2"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => WaveID,
      O => \Read_Z1_i_1__2_n_0\
    );
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Read_Z1_i_1__2_n_0\,
      Q => Read_Z1,
      R => '0'
    );
\State[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FCF50C00FC00FC0"
    )
        port map (
      I0 => p_6_in,
      I1 => \State_reg[2]\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => mux4_out(0),
      I5 => Q(0),
      O => \State[1]_i_2__0_n_0\
    );
\State[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444FFFF74440000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => \State_reg[2]\,
      I4 => Q(3),
      I5 => \State[2]_i_3__0_n_0\,
      O => D(1)
    );
\State[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7C7C7CC0CCCCCC"
    )
        port map (
      I0 => p_6_in,
      I1 => Q(2),
      I2 => Q(1),
      I3 => EnWrite_IBUF,
      I4 => ChanAddressReg,
      I5 => Q(0),
      O => \State[2]_i_3__0_n_0\
    );
\State[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \State[3]_i_3__0_n_0\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => p_6_in,
      I4 => Q(0),
      I5 => Q(1),
      O => D(2)
    );
\State[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFFF7F7F7F7F"
    )
        port map (
      I0 => CO(0),
      I1 => p_6_in,
      I2 => Q(2),
      I3 => Q(1),
      I4 => mux4_out(0),
      I5 => Q(0),
      O => \State[3]_i_3__0_n_0\
    );
\State[3]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => TX_Done,
      I1 => \^nullflaga\(0),
      I2 => WaveID,
      I3 => \State_reg[3]\(0),
      O => p_6_in
    );
\State_reg[1]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \State[1]_i_2__0_n_0\,
      I1 => \State_reg[1]\,
      O => D(0),
      S => Q(3)
    );
\WRCNT_loc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      O => \p_0_in__3\(0)
    );
\WRCNT_loc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      O => \p_0_in__3\(1)
    );
\WRCNT_loc[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      O => \p_0_in__3\(2)
    );
\WRCNT_loc[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \p_0_in__3\(3)
    );
\WRCNT_loc[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      I4 => \WRCNT_loc_reg_n_0_[4]\,
      O => \p_0_in__3\(4)
    );
\WRCNT_loc[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      I4 => \WRCNT_loc_reg_n_0_[4]\,
      I5 => \WRCNT_loc_reg_n_0_[5]\,
      O => \p_0_in__3\(5)
    );
\WRCNT_loc[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc[7]_i_3__0_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      O => \p_0_in__3\(6)
    );
\WRCNT_loc[7]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      O => \^sr\(0)
    );
\WRCNT_loc[7]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc[7]_i_3__0_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \WRCNT_loc_reg_n_0_[7]\,
      O => \p_0_in__3\(7)
    );
\WRCNT_loc[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[5]\,
      I1 => \WRCNT_loc_reg_n_0_[3]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      I4 => \WRCNT_loc_reg_n_0_[2]\,
      I5 => \WRCNT_loc_reg_n_0_[4]\,
      O => \WRCNT_loc[7]_i_3__0_n_0\
    );
\WRCNT_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__1_n_0\,
      D => \p_0_in__3\(0),
      Q => \WRCNT_loc_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__1_n_0\,
      D => \p_0_in__3\(1),
      Q => \WRCNT_loc_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__1_n_0\,
      D => \p_0_in__3\(2),
      Q => \WRCNT_loc_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__1_n_0\,
      D => \p_0_in__3\(3),
      Q => \WRCNT_loc_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__1_n_0\,
      D => \p_0_in__3\(4),
      Q => \WRCNT_loc_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__1_n_0\,
      D => \p_0_in__3\(5),
      Q => \WRCNT_loc_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__1_n_0\,
      D => \p_0_in__3\(6),
      Q => \WRCNT_loc_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__1_n_0\,
      D => \p_0_in__3\(7),
      Q => \WRCNT_loc_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\Write_Z1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => Write_Z1_reg_0,
      I1 => ChanAddressReg,
      I2 => Write_IBUF,
      I3 => Q(2),
      I4 => Q(3),
      I5 => WaveID,
      O => \Write_Z1_i_1__1_n_0\
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Write_Z1_i_1__1_n_0\,
      Q => Write_Z1,
      R => '0'
    );
\_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW__inferred__2/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__2/i__carry_n_1\,
      CO(1) => \_inferred__2/i__carry_n_2\,
      CO(0) => \_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1__3_n_0\,
      S(1) => \i__carry_i_2__3_n_0\,
      S(0) => \i__carry_i_3__5_n_0\
    );
\empty_loc_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444444F"
    )
        port map (
      I0 => \memory_reg_i_1__1_n_0\,
      I1 => empty_loc_reg_n_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => \empty_loc_i_1__1_n_0\
    );
empty_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \empty_loc_i_1__1_n_0\,
      Q => empty_loc_reg_n_0,
      R => '0'
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94000294"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \i__carry_i_4__5_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[7]\,
      I4 => rdcnt_reg(7),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => \i__carry_i_5__3_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[5]\,
      I2 => \i__carry_i_6__5_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[4]\,
      I4 => rdcnt_reg(5),
      I5 => rdcnt_reg(4),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842112840000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => rdcnt_reg(2),
      I3 => rdcnt_reg(1),
      I4 => rdcnt_reg(0),
      I5 => \WRCNT_loc_reg_n_0_[0]\,
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[4]\,
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      I4 => \WRCNT_loc_reg_n_0_[3]\,
      I5 => \WRCNT_loc_reg_n_0_[5]\,
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      I4 => rdcnt_reg(3),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_6__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \i__carry_i_6__5_n_0\
    );
\loadReg0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => Addr0,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      O => \loadReg0_i_1__0_n_0\
    );
loadReg0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \loadReg0_i_1__0_n_0\,
      Q => loadReg0,
      R => '0'
    );
memory_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => \WRCNT_loc_reg_n_0_[7]\,
      ADDRARDADDR(10) => \WRCNT_loc_reg_n_0_[6]\,
      ADDRARDADDR(9) => \WRCNT_loc_reg_n_0_[5]\,
      ADDRARDADDR(8) => \WRCNT_loc_reg_n_0_[4]\,
      ADDRARDADDR(7) => \WRCNT_loc_reg_n_0_[3]\,
      ADDRARDADDR(6) => \WRCNT_loc_reg_n_0_[2]\,
      ADDRARDADDR(5) => \WRCNT_loc_reg_n_0_[1]\,
      ADDRARDADDR(4) => \WRCNT_loc_reg_n_0_[0]\,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 4) => rdcnt_reg(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => CLK_IBUF_BUFG,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => DIADI(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_memory_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPADOP(1 downto 0) => NLW_memory_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_memory_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \memory_reg_i_1__1_n_0\,
      ENBWREN => \memory_reg_i_2__1_n_0\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
\memory_reg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Write_Z1,
      I1 => \WriteMem__1\,
      I2 => WaveID,
      I3 => Addr0,
      O => \memory_reg_i_1__1_n_0\
    );
\memory_reg_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEE0"
    )
        port map (
      I0 => loadReg0,
      I1 => rdcnt0_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => \memory_reg_i_2__1_n_0\
    );
\memory_reg_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEE0"
    )
        port map (
      I0 => loadReg0,
      I1 => rdcnt0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => loadReg0_reg_0
    );
rdcnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rdcnt00_in,
      CO(2) => rdcnt0_carry_n_1,
      CO(1) => rdcnt0_carry_n_2,
      CO(0) => rdcnt0_carry_n_3,
      CYINIT => '0',
      DI(3) => \rdcnt0_carry_i_1__0_n_0\,
      DI(2) => \rdcnt0_carry_i_2__0_n_0\,
      DI(1) => \rdcnt0_carry_i_3__0_n_0\,
      DI(0) => \rdcnt0_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_rdcnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \rdcnt0_carry_i_5__0_n_0\,
      S(2) => \rdcnt0_carry_i_6__0_n_0\,
      S(1) => \rdcnt0_carry_i_7__0_n_0\,
      S(0) => \rdcnt0_carry_i_8__0_n_0\
    );
\rdcnt0_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \WRCNT_loc_reg_n_0_[7]\,
      I3 => rdcnt_reg(7),
      O => \rdcnt0_carry_i_1__0_n_0\
    );
\rdcnt0_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(4),
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => \WRCNT_loc_reg_n_0_[5]\,
      I3 => rdcnt_reg(5),
      O => \rdcnt0_carry_i_2__0_n_0\
    );
\rdcnt0_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[3]\,
      I3 => rdcnt_reg(3),
      O => \rdcnt0_carry_i_3__0_n_0\
    );
\rdcnt0_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => rdcnt_reg(1),
      O => \rdcnt0_carry_i_4__0_n_0\
    );
\rdcnt0_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => rdcnt_reg(7),
      I3 => \WRCNT_loc_reg_n_0_[7]\,
      O => \rdcnt0_carry_i_5__0_n_0\
    );
\rdcnt0_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(4),
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => rdcnt_reg(5),
      I3 => \WRCNT_loc_reg_n_0_[5]\,
      O => \rdcnt0_carry_i_6__0_n_0\
    );
\rdcnt0_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => rdcnt_reg(3),
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \rdcnt0_carry_i_7__0_n_0\
    );
\rdcnt0_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => rdcnt_reg(1),
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      O => \rdcnt0_carry_i_8__0_n_0\
    );
\rdcnt[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF010101FF01"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Addr0,
      I4 => rdcnt0_0,
      I5 => rdcnt00_in,
      O => \rdcnt[0]_i_1__1_n_0\
    );
\rdcnt[0]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \Read_Z1_i_1__2_n_0\,
      I1 => Read_Z1,
      I2 => empty_loc_reg_n_0,
      O => rdcnt0_0
    );
\rdcnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt_reg(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => rdcnt_reg(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => rdcnt_reg(1),
      I2 => rdcnt_reg(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt_reg(1),
      I1 => rdcnt_reg(0),
      I2 => rdcnt_reg(2),
      I3 => rdcnt_reg(3),
      O => plusOp(3)
    );
\rdcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => rdcnt_reg(0),
      I2 => rdcnt_reg(1),
      I3 => rdcnt_reg(3),
      I4 => rdcnt_reg(4),
      O => plusOp(4)
    );
\rdcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rdcnt_reg(3),
      I1 => rdcnt_reg(1),
      I2 => rdcnt_reg(0),
      I3 => rdcnt_reg(2),
      I4 => rdcnt_reg(4),
      I5 => rdcnt_reg(5),
      O => plusOp(5)
    );
\rdcnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rdcnt[6]_i_2_n_0\,
      I1 => rdcnt_reg(6),
      O => plusOp(6)
    );
\rdcnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rdcnt_reg(5),
      I1 => rdcnt_reg(3),
      I2 => rdcnt_reg(1),
      I3 => rdcnt_reg(0),
      I4 => rdcnt_reg(2),
      I5 => rdcnt_reg(4),
      O => \rdcnt[6]_i_2_n_0\
    );
\rdcnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rdcnt[6]_i_2_n_0\,
      I1 => rdcnt_reg(6),
      I2 => rdcnt_reg(7),
      O => plusOp(7)
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(0),
      Q => rdcnt_reg(0),
      R => \rdcnt[0]_i_1__1_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(1),
      Q => rdcnt_reg(1),
      R => \rdcnt[0]_i_1__1_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(2),
      Q => rdcnt_reg(2),
      R => \rdcnt[0]_i_1__1_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(3),
      Q => rdcnt_reg(3),
      R => \rdcnt[0]_i_1__1_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(4),
      Q => rdcnt_reg(4),
      R => \rdcnt[0]_i_1__1_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(5),
      Q => rdcnt_reg(5),
      R => \rdcnt[0]_i_1__1_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(6),
      Q => rdcnt_reg(6),
      R => \rdcnt[0]_i_1__1_n_0\
    );
\rdcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(7),
      Q => rdcnt_reg(7),
      R => \rdcnt[0]_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory_2 is
  port (
    DIADI : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    rdcnt0 : out STD_LOGIC;
    Nullflag_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \State_reg[0]\ : out STD_LOGIC;
    \WriteMem__1\ : out STD_LOGIC;
    memory_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    memory_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \State_reg[0]_0\ : in STD_LOGIC;
    \State_reg[0]_1\ : in STD_LOGIC;
    Din_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ChanAddressReg : in STD_LOGIC;
    Write_IBUF : in STD_LOGIC;
    WaveID : in STD_LOGIC;
    Addr0 : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    NullflagA : in STD_LOGIC_VECTOR ( 0 to 0 );
    TX_Done : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Memory_2 : entity is "Memory";
end Memory_2;

architecture STRUCTURE of Memory_2 is
  signal \^diadi\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Nullflag_i_1__2_n_0\ : STD_LOGIC;
  signal \^nullflag_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Read : STD_LOGIC;
  signal Read_Z1_reg_n_0 : STD_LOGIC;
  signal \State[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \^state_reg[0]\ : STD_LOGIC;
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \WRCNT_loc[7]_i_2__2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[5]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[6]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[7]\ : STD_LOGIC;
  signal \^writemem__1\ : STD_LOGIC;
  signal Write_Z1_reg_n_0 : STD_LOGIC;
  signal \_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \empty_loc_i_1__2_n_0\ : STD_LOGIC;
  signal empty_loc_reg_n_0 : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \memory_reg_i_1__2_n_0\ : STD_LOGIC;
  signal memory_reg_n_24 : STD_LOGIC;
  signal memory_reg_n_25 : STD_LOGIC;
  signal memory_reg_n_26 : STD_LOGIC;
  signal memory_reg_n_27 : STD_LOGIC;
  signal memory_reg_n_28 : STD_LOGIC;
  signal memory_reg_n_29 : STD_LOGIC;
  signal memory_reg_n_30 : STD_LOGIC;
  signal memory_reg_n_31 : STD_LOGIC;
  signal mux3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rdcnt0\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \rdcnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \rdcnt[6]_i_2__0_n_0\ : STD_LOGIC;
  signal rdcnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW__inferred__3/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdcnt0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[0]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \A[1]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \A[2]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \A[3]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \A[4]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \A[5]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \A[6]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \A[7]_i_2__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \Read_Z1_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \WRCNT_loc[1]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \WRCNT_loc[2]_i_1__2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \WRCNT_loc[3]_i_1__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \WRCNT_loc[4]_i_1__2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \WRCNT_loc[6]_i_1__2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \WRCNT_loc[7]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of Write_Z1_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \i__carry_i_5__4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i__carry_i_6__6\ : label is "soft_lutpair43";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg : label is "memory";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of memory_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of memory_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of memory_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of memory_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg : label is 7;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rdcnt[7]_i_1__0\ : label is "soft_lutpair49";
begin
  DIADI(7 downto 0) <= \^diadi\(7 downto 0);
  Nullflag_reg_0(0) <= \^nullflag_reg_0\(0);
  \State_reg[0]\ <= \^state_reg[0]\;
  WEA(0) <= \^wea\(0);
  \WriteMem__1\ <= \^writemem__1\;
  rdcnt0 <= \^rdcnt0\;
\A[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_31,
      I1 => DOBDO(0),
      I2 => WaveID,
      O => memory_reg_0(0)
    );
\A[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_30,
      I1 => DOBDO(1),
      I2 => WaveID,
      O => memory_reg_0(1)
    );
\A[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_29,
      I1 => DOBDO(2),
      I2 => WaveID,
      O => memory_reg_0(2)
    );
\A[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_28,
      I1 => DOBDO(3),
      I2 => WaveID,
      O => memory_reg_0(3)
    );
\A[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_27,
      I1 => DOBDO(4),
      I2 => WaveID,
      O => memory_reg_0(4)
    );
\A[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_26,
      I1 => DOBDO(5),
      I2 => WaveID,
      O => memory_reg_0(5)
    );
\A[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_25,
      I1 => DOBDO(6),
      I2 => WaveID,
      O => memory_reg_0(6)
    );
\A[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_24,
      I1 => DOBDO(7),
      I2 => WaveID,
      O => memory_reg_0(7)
    );
\Nullflag_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \_inferred__3/i__carry_n_1\,
      I1 => \^rdcnt0\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => \^nullflag_reg_0\(0),
      O => \Nullflag_i_1__2_n_0\
    );
Nullflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Nullflag_i_1__2_n_0\,
      Q => \^nullflag_reg_0\(0),
      R => '0'
    );
\Read_Z1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88E20000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => WaveID,
      O => Read
    );
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Read,
      Q => Read_Z1_reg_n_0,
      R => '0'
    );
\State[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \State[0]_i_2__0_n_0\,
      I1 => Q(2),
      I2 => \State_reg[0]_0\,
      I3 => Q(3),
      I4 => \State_reg[0]_1\,
      O => D(0)
    );
\State[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^nullflag_reg_0\(0),
      I2 => WaveID,
      I3 => NullflagA(0),
      I4 => TX_Done,
      O => \State[0]_i_2__0_n_0\
    );
\WRCNT_loc[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      O => \p_0_in__4\(0)
    );
\WRCNT_loc[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      O => \p_0_in__4\(1)
    );
\WRCNT_loc[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      O => \p_0_in__4\(2)
    );
\WRCNT_loc[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \p_0_in__4\(3)
    );
\WRCNT_loc[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      I4 => \WRCNT_loc_reg_n_0_[4]\,
      O => \p_0_in__4\(4)
    );
\WRCNT_loc[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      I4 => \WRCNT_loc_reg_n_0_[4]\,
      I5 => \WRCNT_loc_reg_n_0_[5]\,
      O => \p_0_in__4\(5)
    );
\WRCNT_loc[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc[7]_i_2__2_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      O => \p_0_in__4\(6)
    );
\WRCNT_loc[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc[7]_i_2__2_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \WRCNT_loc_reg_n_0_[7]\,
      O => \p_0_in__4\(7)
    );
\WRCNT_loc[7]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[5]\,
      I1 => \WRCNT_loc_reg_n_0_[3]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      I4 => \WRCNT_loc_reg_n_0_[2]\,
      I5 => \WRCNT_loc_reg_n_0_[4]\,
      O => \WRCNT_loc[7]_i_2__2_n_0\
    );
\WRCNT_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__2_n_0\,
      D => \p_0_in__4\(0),
      Q => \WRCNT_loc_reg_n_0_[0]\,
      R => SR(0)
    );
\WRCNT_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__2_n_0\,
      D => \p_0_in__4\(1),
      Q => \WRCNT_loc_reg_n_0_[1]\,
      R => SR(0)
    );
\WRCNT_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__2_n_0\,
      D => \p_0_in__4\(2),
      Q => \WRCNT_loc_reg_n_0_[2]\,
      R => SR(0)
    );
\WRCNT_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__2_n_0\,
      D => \p_0_in__4\(3),
      Q => \WRCNT_loc_reg_n_0_[3]\,
      R => SR(0)
    );
\WRCNT_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__2_n_0\,
      D => \p_0_in__4\(4),
      Q => \WRCNT_loc_reg_n_0_[4]\,
      R => SR(0)
    );
\WRCNT_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__2_n_0\,
      D => \p_0_in__4\(5),
      Q => \WRCNT_loc_reg_n_0_[5]\,
      R => SR(0)
    );
\WRCNT_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__2_n_0\,
      D => \p_0_in__4\(6),
      Q => \WRCNT_loc_reg_n_0_[6]\,
      R => SR(0)
    );
\WRCNT_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__2_n_0\,
      D => \p_0_in__4\(7),
      Q => \WRCNT_loc_reg_n_0_[7]\,
      R => SR(0)
    );
Write_Z1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^state_reg[0]\,
      I1 => ChanAddressReg,
      I2 => Write_IBUF,
      I3 => Q(2),
      I4 => Q(3),
      I5 => WaveID,
      O => mux3_out(1)
    );
Write_Z1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \^state_reg[0]\
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => mux3_out(1),
      Q => Write_Z1_reg_n_0,
      R => '0'
    );
\_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW__inferred__3/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__3/i__carry_n_1\,
      CO(1) => \_inferred__3/i__carry_n_2\,
      CO(0) => \_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1__4_n_0\,
      S(1) => \i__carry_i_2__4_n_0\,
      S(0) => \i__carry_i_3__6_n_0\
    );
\empty_loc_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444444F"
    )
        port map (
      I0 => \memory_reg_i_1__2_n_0\,
      I1 => empty_loc_reg_n_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => \empty_loc_i_1__2_n_0\
    );
empty_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \empty_loc_i_1__2_n_0\,
      Q => empty_loc_reg_n_0,
      R => '0'
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94000294"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \i__carry_i_4__6_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[7]\,
      I4 => rdcnt_reg(7),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \WRCNT_loc_reg_n_0_[7]\,
      I3 => rdcnt_reg(7),
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => \i__carry_i_5__4_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[5]\,
      I2 => \i__carry_i_6__6_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[4]\,
      I4 => rdcnt_reg(5),
      I5 => rdcnt_reg(4),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(4),
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => \WRCNT_loc_reg_n_0_[5]\,
      I3 => rdcnt_reg(5),
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[3]\,
      I3 => rdcnt_reg(3),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842112840000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => rdcnt_reg(2),
      I3 => rdcnt_reg(1),
      I4 => rdcnt_reg(0),
      I5 => \WRCNT_loc_reg_n_0_[0]\,
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => rdcnt_reg(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[4]\,
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      I4 => \WRCNT_loc_reg_n_0_[3]\,
      I5 => \WRCNT_loc_reg_n_0_[5]\,
      O => \i__carry_i_4__6_n_0\
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      I4 => rdcnt_reg(3),
      O => \i__carry_i_5__4_n_0\
    );
\i__carry_i_5__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => rdcnt_reg(7),
      I3 => \WRCNT_loc_reg_n_0_[7]\,
      O => \i__carry_i_5__5_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(4),
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => rdcnt_reg(5),
      I3 => \WRCNT_loc_reg_n_0_[5]\,
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \i__carry_i_6__6_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => rdcnt_reg(3),
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => rdcnt_reg(1),
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      O => \i__carry_i_8__1_n_0\
    );
memory_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => \WRCNT_loc_reg_n_0_[7]\,
      ADDRARDADDR(10) => \WRCNT_loc_reg_n_0_[6]\,
      ADDRARDADDR(9) => \WRCNT_loc_reg_n_0_[5]\,
      ADDRARDADDR(8) => \WRCNT_loc_reg_n_0_[4]\,
      ADDRARDADDR(7) => \WRCNT_loc_reg_n_0_[3]\,
      ADDRARDADDR(6) => \WRCNT_loc_reg_n_0_[2]\,
      ADDRARDADDR(5) => \WRCNT_loc_reg_n_0_[1]\,
      ADDRARDADDR(4) => \WRCNT_loc_reg_n_0_[0]\,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 4) => rdcnt_reg(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => CLK_IBUF_BUFG,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => \^diadi\(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_memory_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7) => memory_reg_n_24,
      DOBDO(6) => memory_reg_n_25,
      DOBDO(5) => memory_reg_n_26,
      DOBDO(4) => memory_reg_n_27,
      DOBDO(3) => memory_reg_n_28,
      DOBDO(2) => memory_reg_n_29,
      DOBDO(1) => memory_reg_n_30,
      DOBDO(0) => memory_reg_n_31,
      DOPADOP(1 downto 0) => NLW_memory_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_memory_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \memory_reg_i_1__2_n_0\,
      ENBWREN => memory_reg_1,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(3 downto 0) => B"0000"
    );
memory_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(0),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(0)
    );
\memory_reg_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      O => \^wea\(0)
    );
memory_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Write_IBUF,
      I3 => ChanAddressReg,
      I4 => Q(0),
      I5 => Q(1),
      O => \^writemem__1\
    );
\memory_reg_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Write_Z1_reg_n_0,
      I1 => \^writemem__1\,
      I2 => WaveID,
      I3 => Addr0,
      O => \memory_reg_i_1__2_n_0\
    );
memory_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(7),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(7)
    );
memory_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(6),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(6)
    );
memory_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(5),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(5)
    );
memory_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(4),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(4)
    );
memory_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(3),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(3)
    );
memory_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(2)
    );
memory_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(1),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(1)
    );
\rdcnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rdcnt0_inferred__0/i__carry_n_0\,
      CO(2) => \rdcnt0_inferred__0/i__carry_n_1\,
      CO(1) => \rdcnt0_inferred__0/i__carry_n_2\,
      CO(0) => \rdcnt0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__5_n_0\,
      DI(2) => \i__carry_i_2__5_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_rdcnt0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__5_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\rdcnt[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF010101FF01"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Addr0,
      I4 => \^rdcnt0\,
      I5 => \rdcnt0_inferred__0/i__carry_n_0\,
      O => \rdcnt[0]_i_1__2_n_0\
    );
\rdcnt[0]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1_reg_n_0,
      I2 => empty_loc_reg_n_0,
      O => \^rdcnt0\
    );
\rdcnt[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt_reg(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => rdcnt_reg(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => rdcnt_reg(1),
      I2 => rdcnt_reg(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt_reg(1),
      I1 => rdcnt_reg(0),
      I2 => rdcnt_reg(2),
      I3 => rdcnt_reg(3),
      O => plusOp(3)
    );
\rdcnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => rdcnt_reg(0),
      I2 => rdcnt_reg(1),
      I3 => rdcnt_reg(3),
      I4 => rdcnt_reg(4),
      O => plusOp(4)
    );
\rdcnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rdcnt_reg(3),
      I1 => rdcnt_reg(1),
      I2 => rdcnt_reg(0),
      I3 => rdcnt_reg(2),
      I4 => rdcnt_reg(4),
      I5 => rdcnt_reg(5),
      O => plusOp(5)
    );
\rdcnt[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rdcnt[6]_i_2__0_n_0\,
      I1 => rdcnt_reg(6),
      O => plusOp(6)
    );
\rdcnt[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rdcnt_reg(5),
      I1 => rdcnt_reg(3),
      I2 => rdcnt_reg(1),
      I3 => rdcnt_reg(0),
      I4 => rdcnt_reg(2),
      I5 => rdcnt_reg(4),
      O => \rdcnt[6]_i_2__0_n_0\
    );
\rdcnt[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rdcnt[6]_i_2__0_n_0\,
      I1 => rdcnt_reg(6),
      I2 => rdcnt_reg(7),
      O => plusOp(7)
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(0),
      Q => rdcnt_reg(0),
      R => \rdcnt[0]_i_1__2_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(1),
      Q => rdcnt_reg(1),
      R => \rdcnt[0]_i_1__2_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(2),
      Q => rdcnt_reg(2),
      R => \rdcnt[0]_i_1__2_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(3),
      Q => rdcnt_reg(3),
      R => \rdcnt[0]_i_1__2_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(4),
      Q => rdcnt_reg(4),
      R => \rdcnt[0]_i_1__2_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(5),
      Q => rdcnt_reg(5),
      R => \rdcnt[0]_i_1__2_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(6),
      Q => rdcnt_reg(6),
      R => \rdcnt[0]_i_1__2_n_0\
    );
\rdcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(7),
      Q => rdcnt_reg(7),
      R => \rdcnt[0]_i_1__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory_3 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    NullflagA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    loadReg0_reg_0 : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \State_reg[1]\ : in STD_LOGIC;
    \State_reg[2]\ : in STD_LOGIC;
    \State_reg[1]_0\ : in STD_LOGIC;
    EnWrite_IBUF : in STD_LOGIC;
    ChanAddressReg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    TX_Done : in STD_LOGIC;
    WaveID : in STD_LOGIC;
    \State_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Addr0 : in STD_LOGIC;
    \WriteMem__1\ : in STD_LOGIC;
    rdcnt0 : in STD_LOGIC;
    Write_Z1_reg_0 : in STD_LOGIC;
    Write_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Memory_3 : entity is "Memory";
end Memory_3;

architecture STRUCTURE of Memory_3 is
  signal \^nullflaga\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Nullflag_i_1_n_0 : STD_LOGIC;
  signal Read_Z1 : STD_LOGIC;
  signal \Read_Z1_i_1__1_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \State[1]_i_2_n_0\ : STD_LOGIC;
  signal \State[2]_i_3_n_0\ : STD_LOGIC;
  signal \State[3]_i_3_n_0\ : STD_LOGIC;
  signal \WRCNT_loc[7]_i_3_n_0\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[5]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[6]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[7]\ : STD_LOGIC;
  signal Write_Z1 : STD_LOGIC;
  signal \Write_Z1_i_1__2_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal empty_loc_i_1_n_0 : STD_LOGIC;
  signal empty_loc_reg_n_0 : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__3_n_0\ : STD_LOGIC;
  signal loadReg0 : STD_LOGIC;
  signal loadReg0_i_1_n_0 : STD_LOGIC;
  signal memory_reg_i_1_n_0 : STD_LOGIC;
  signal memory_reg_i_2_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_6_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdcnt00_in : STD_LOGIC;
  signal rdcnt0_0 : STD_LOGIC;
  signal rdcnt0_carry_i_1_n_0 : STD_LOGIC;
  signal rdcnt0_carry_i_2_n_0 : STD_LOGIC;
  signal rdcnt0_carry_i_3_n_0 : STD_LOGIC;
  signal rdcnt0_carry_i_4_n_0 : STD_LOGIC;
  signal rdcnt0_carry_i_5_n_0 : STD_LOGIC;
  signal rdcnt0_carry_i_6_n_0 : STD_LOGIC;
  signal rdcnt0_carry_i_7_n_0 : STD_LOGIC;
  signal rdcnt0_carry_i_8_n_0 : STD_LOGIC;
  signal rdcnt0_carry_n_1 : STD_LOGIC;
  signal rdcnt0_carry_n_2 : STD_LOGIC;
  signal rdcnt0_carry_n_3 : STD_LOGIC;
  signal \rdcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdcnt[6]_i_2__1_n_0\ : STD_LOGIC;
  signal rdcnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW__inferred__2/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rdcnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \WRCNT_loc[1]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \WRCNT_loc[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \WRCNT_loc[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \WRCNT_loc[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \WRCNT_loc[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \WRCNT_loc[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i__carry_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i__carry_i_6__3\ : label is "soft_lutpair6";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg : label is "memory";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of memory_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of memory_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of memory_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of memory_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg : label is 7;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_1__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdcnt[7]_i_1__1\ : label is "soft_lutpair9";
begin
  NullflagA(0) <= \^nullflaga\(0);
  SR(0) <= \^sr\(0);
Nullflag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \_inferred__2/i__carry_n_1\,
      I1 => rdcnt0_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => \^nullflaga\(0),
      O => Nullflag_i_1_n_0
    );
Nullflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Nullflag_i_1_n_0,
      Q => \^nullflaga\(0),
      R => '0'
    );
\Read_Z1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088E2"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => WaveID,
      O => \Read_Z1_i_1__1_n_0\
    );
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Read_Z1_i_1__1_n_0\,
      Q => Read_Z1,
      R => '0'
    );
\State[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FCF50C00FC00FC0"
    )
        port map (
      I0 => p_6_in,
      I1 => \State_reg[2]\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => \State_reg[1]_0\,
      I5 => Q(0),
      O => \State[1]_i_2_n_0\
    );
\State[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444FFFF74440000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => \State_reg[2]\,
      I4 => Q(3),
      I5 => \State[2]_i_3_n_0\,
      O => D(1)
    );
\State[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C7C4C7CCCCCC0CC"
    )
        port map (
      I0 => p_6_in,
      I1 => Q(2),
      I2 => Q(1),
      I3 => EnWrite_IBUF,
      I4 => ChanAddressReg,
      I5 => Q(0),
      O => \State[2]_i_3_n_0\
    );
\State[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \State[3]_i_3_n_0\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => p_6_in,
      I4 => Q(0),
      I5 => Q(1),
      O => D(2)
    );
\State[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFFF7F7F7F7F"
    )
        port map (
      I0 => CO(0),
      I1 => p_6_in,
      I2 => Q(2),
      I3 => Q(1),
      I4 => \State_reg[1]_0\,
      I5 => Q(0),
      O => \State[3]_i_3_n_0\
    );
\State[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => TX_Done,
      I1 => \^nullflaga\(0),
      I2 => WaveID,
      I3 => \State_reg[3]\(0),
      O => p_6_in
    );
\State_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \State[1]_i_2_n_0\,
      I1 => \State_reg[1]\,
      O => D(0),
      S => Q(3)
    );
\WRCNT_loc[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\WRCNT_loc[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\WRCNT_loc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\WRCNT_loc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \p_0_in__0\(3)
    );
\WRCNT_loc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      I4 => \WRCNT_loc_reg_n_0_[4]\,
      O => \p_0_in__0\(4)
    );
\WRCNT_loc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      I4 => \WRCNT_loc_reg_n_0_[4]\,
      I5 => \WRCNT_loc_reg_n_0_[5]\,
      O => \p_0_in__0\(5)
    );
\WRCNT_loc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc[7]_i_3_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      O => \p_0_in__0\(6)
    );
\WRCNT_loc[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      O => \^sr\(0)
    );
\WRCNT_loc[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc[7]_i_3_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \WRCNT_loc_reg_n_0_[7]\,
      O => \p_0_in__0\(7)
    );
\WRCNT_loc[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[5]\,
      I1 => \WRCNT_loc_reg_n_0_[3]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      I4 => \WRCNT_loc_reg_n_0_[2]\,
      I5 => \WRCNT_loc_reg_n_0_[4]\,
      O => \WRCNT_loc[7]_i_3_n_0\
    );
\WRCNT_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => memory_reg_i_1_n_0,
      D => \p_0_in__0\(0),
      Q => \WRCNT_loc_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => memory_reg_i_1_n_0,
      D => \p_0_in__0\(1),
      Q => \WRCNT_loc_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => memory_reg_i_1_n_0,
      D => \p_0_in__0\(2),
      Q => \WRCNT_loc_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => memory_reg_i_1_n_0,
      D => \p_0_in__0\(3),
      Q => \WRCNT_loc_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => memory_reg_i_1_n_0,
      D => \p_0_in__0\(4),
      Q => \WRCNT_loc_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => memory_reg_i_1_n_0,
      D => \p_0_in__0\(5),
      Q => \WRCNT_loc_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => memory_reg_i_1_n_0,
      D => \p_0_in__0\(6),
      Q => \WRCNT_loc_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\WRCNT_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => memory_reg_i_1_n_0,
      D => \p_0_in__0\(7),
      Q => \WRCNT_loc_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\Write_Z1_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => Write_Z1_reg_0,
      I1 => ChanAddressReg,
      I2 => Write_IBUF,
      I3 => Q(2),
      I4 => Q(3),
      I5 => WaveID,
      O => \Write_Z1_i_1__2_n_0\
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Write_Z1_i_1__2_n_0\,
      Q => Write_Z1,
      R => '0'
    );
\_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW__inferred__2/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__2/i__carry_n_1\,
      CO(1) => \_inferred__2/i__carry_n_2\,
      CO(0) => \_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1_n_0\,
      S(1) => \i__carry_i_2_n_0\,
      S(0) => \i__carry_i_3__3_n_0\
    );
empty_loc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444444F"
    )
        port map (
      I0 => memory_reg_i_1_n_0,
      I1 => empty_loc_reg_n_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => empty_loc_i_1_n_0
    );
empty_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => empty_loc_i_1_n_0,
      Q => empty_loc_reg_n_0,
      R => '0'
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94000294"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \i__carry_i_4__3_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[7]\,
      I4 => rdcnt_reg(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[5]\,
      I2 => \i__carry_i_6__3_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[4]\,
      I4 => rdcnt_reg(5),
      I5 => rdcnt_reg(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842112840000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => rdcnt_reg(2),
      I3 => rdcnt_reg(1),
      I4 => rdcnt_reg(0),
      I5 => \WRCNT_loc_reg_n_0_[0]\,
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[4]\,
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      I4 => \WRCNT_loc_reg_n_0_[3]\,
      I5 => \WRCNT_loc_reg_n_0_[5]\,
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      I4 => rdcnt_reg(3),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \i__carry_i_6__3_n_0\
    );
loadReg0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => Addr0,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      O => loadReg0_i_1_n_0
    );
loadReg0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => loadReg0_i_1_n_0,
      Q => loadReg0,
      R => '0'
    );
memory_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => \WRCNT_loc_reg_n_0_[7]\,
      ADDRARDADDR(10) => \WRCNT_loc_reg_n_0_[6]\,
      ADDRARDADDR(9) => \WRCNT_loc_reg_n_0_[5]\,
      ADDRARDADDR(8) => \WRCNT_loc_reg_n_0_[4]\,
      ADDRARDADDR(7) => \WRCNT_loc_reg_n_0_[3]\,
      ADDRARDADDR(6) => \WRCNT_loc_reg_n_0_[2]\,
      ADDRARDADDR(5) => \WRCNT_loc_reg_n_0_[1]\,
      ADDRARDADDR(4) => \WRCNT_loc_reg_n_0_[0]\,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 4) => rdcnt_reg(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => CLK_IBUF_BUFG,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => DIADI(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_memory_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPADOP(1 downto 0) => NLW_memory_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_memory_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => memory_reg_i_1_n_0,
      ENBWREN => memory_reg_i_2_n_0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
memory_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Write_Z1,
      I1 => \WriteMem__1\,
      I2 => WaveID,
      I3 => Addr0,
      O => memory_reg_i_1_n_0
    );
memory_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEE0"
    )
        port map (
      I0 => loadReg0,
      I1 => rdcnt0_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => memory_reg_i_2_n_0
    );
\memory_reg_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEE0"
    )
        port map (
      I0 => loadReg0,
      I1 => rdcnt0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => loadReg0_reg_0
    );
rdcnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rdcnt00_in,
      CO(2) => rdcnt0_carry_n_1,
      CO(1) => rdcnt0_carry_n_2,
      CO(0) => rdcnt0_carry_n_3,
      CYINIT => '0',
      DI(3) => rdcnt0_carry_i_1_n_0,
      DI(2) => rdcnt0_carry_i_2_n_0,
      DI(1) => rdcnt0_carry_i_3_n_0,
      DI(0) => rdcnt0_carry_i_4_n_0,
      O(3 downto 0) => NLW_rdcnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rdcnt0_carry_i_5_n_0,
      S(2) => rdcnt0_carry_i_6_n_0,
      S(1) => rdcnt0_carry_i_7_n_0,
      S(0) => rdcnt0_carry_i_8_n_0
    );
rdcnt0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \WRCNT_loc_reg_n_0_[7]\,
      I3 => rdcnt_reg(7),
      O => rdcnt0_carry_i_1_n_0
    );
rdcnt0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(4),
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => \WRCNT_loc_reg_n_0_[5]\,
      I3 => rdcnt_reg(5),
      O => rdcnt0_carry_i_2_n_0
    );
rdcnt0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[3]\,
      I3 => rdcnt_reg(3),
      O => rdcnt0_carry_i_3_n_0
    );
rdcnt0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => rdcnt_reg(1),
      O => rdcnt0_carry_i_4_n_0
    );
rdcnt0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => rdcnt_reg(7),
      I3 => \WRCNT_loc_reg_n_0_[7]\,
      O => rdcnt0_carry_i_5_n_0
    );
rdcnt0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(4),
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => rdcnt_reg(5),
      I3 => \WRCNT_loc_reg_n_0_[5]\,
      O => rdcnt0_carry_i_6_n_0
    );
rdcnt0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => rdcnt_reg(3),
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => rdcnt0_carry_i_7_n_0
    );
rdcnt0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => rdcnt_reg(1),
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      O => rdcnt0_carry_i_8_n_0
    );
\rdcnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF010101FF01"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Addr0,
      I4 => rdcnt0_0,
      I5 => rdcnt00_in,
      O => \rdcnt[0]_i_1_n_0\
    );
\rdcnt[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \Read_Z1_i_1__1_n_0\,
      I1 => Read_Z1,
      I2 => empty_loc_reg_n_0,
      O => rdcnt0_0
    );
\rdcnt[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt_reg(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => rdcnt_reg(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => rdcnt_reg(1),
      I2 => rdcnt_reg(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt_reg(1),
      I1 => rdcnt_reg(0),
      I2 => rdcnt_reg(2),
      I3 => rdcnt_reg(3),
      O => plusOp(3)
    );
\rdcnt[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => rdcnt_reg(0),
      I2 => rdcnt_reg(1),
      I3 => rdcnt_reg(3),
      I4 => rdcnt_reg(4),
      O => plusOp(4)
    );
\rdcnt[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rdcnt_reg(3),
      I1 => rdcnt_reg(1),
      I2 => rdcnt_reg(0),
      I3 => rdcnt_reg(2),
      I4 => rdcnt_reg(4),
      I5 => rdcnt_reg(5),
      O => plusOp(5)
    );
\rdcnt[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rdcnt[6]_i_2__1_n_0\,
      I1 => rdcnt_reg(6),
      O => plusOp(6)
    );
\rdcnt[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rdcnt_reg(5),
      I1 => rdcnt_reg(3),
      I2 => rdcnt_reg(1),
      I3 => rdcnt_reg(0),
      I4 => rdcnt_reg(2),
      I5 => rdcnt_reg(4),
      O => \rdcnt[6]_i_2__1_n_0\
    );
\rdcnt[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rdcnt[6]_i_2__1_n_0\,
      I1 => rdcnt_reg(6),
      I2 => rdcnt_reg(7),
      O => plusOp(7)
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(0),
      Q => rdcnt_reg(0),
      R => \rdcnt[0]_i_1_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(1),
      Q => rdcnt_reg(1),
      R => \rdcnt[0]_i_1_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(2),
      Q => rdcnt_reg(2),
      R => \rdcnt[0]_i_1_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(3),
      Q => rdcnt_reg(3),
      R => \rdcnt[0]_i_1_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(4),
      Q => rdcnt_reg(4),
      R => \rdcnt[0]_i_1_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(5),
      Q => rdcnt_reg(5),
      R => \rdcnt[0]_i_1_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(6),
      Q => rdcnt_reg(6),
      R => \rdcnt[0]_i_1_n_0\
    );
\rdcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0_0,
      D => plusOp(7),
      Q => rdcnt_reg(7),
      R => \rdcnt[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory_4 is
  port (
    DIADI : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    rdcnt0 : out STD_LOGIC;
    Nullflag_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \State_reg[0]\ : out STD_LOGIC;
    \WriteMem__1\ : out STD_LOGIC;
    memory_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    memory_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \State_reg[0]_0\ : in STD_LOGIC;
    \State_reg[0]_1\ : in STD_LOGIC;
    Din_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ChanAddressReg : in STD_LOGIC;
    Write_IBUF : in STD_LOGIC;
    WaveID : in STD_LOGIC;
    Addr0 : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    NullflagA : in STD_LOGIC_VECTOR ( 0 to 0 );
    TX_Done : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Memory_4 : entity is "Memory";
end Memory_4;

architecture STRUCTURE of Memory_4 is
  signal \^diadi\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Nullflag_i_1__0_n_0\ : STD_LOGIC;
  signal \^nullflag_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Read : STD_LOGIC;
  signal Read_Z1_reg_n_0 : STD_LOGIC;
  signal \State[0]_i_2_n_0\ : STD_LOGIC;
  signal \^state_reg[0]\ : STD_LOGIC;
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \WRCNT_loc[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[5]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[6]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[7]\ : STD_LOGIC;
  signal \^writemem__1\ : STD_LOGIC;
  signal Write_Z1_reg_n_0 : STD_LOGIC;
  signal \_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \empty_loc_i_1__0_n_0\ : STD_LOGIC;
  signal empty_loc_reg_n_0 : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \memory_reg_i_1__0_n_0\ : STD_LOGIC;
  signal memory_reg_n_24 : STD_LOGIC;
  signal memory_reg_n_25 : STD_LOGIC;
  signal memory_reg_n_26 : STD_LOGIC;
  signal memory_reg_n_27 : STD_LOGIC;
  signal memory_reg_n_28 : STD_LOGIC;
  signal memory_reg_n_29 : STD_LOGIC;
  signal memory_reg_n_30 : STD_LOGIC;
  signal memory_reg_n_31 : STD_LOGIC;
  signal mux3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rdcnt0\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \rdcnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdcnt[6]_i_2__2_n_0\ : STD_LOGIC;
  signal rdcnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW__inferred__3/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdcnt0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \A[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \A[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \A[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \A[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \A[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \A[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \A[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of Read_Z1_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \WRCNT_loc[1]_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \WRCNT_loc[2]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \WRCNT_loc[3]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \WRCNT_loc[4]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \WRCNT_loc[6]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \WRCNT_loc[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Write_Z1_i_2__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i__carry_i_5__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i__carry_i_6__4\ : label is "soft_lutpair14";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg : label is "memory";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of memory_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of memory_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of memory_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of memory_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg : label is 7;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_1__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rdcnt[7]_i_1__2\ : label is "soft_lutpair20";
begin
  DIADI(7 downto 0) <= \^diadi\(7 downto 0);
  Nullflag_reg_0(0) <= \^nullflag_reg_0\(0);
  \State_reg[0]\ <= \^state_reg[0]\;
  WEA(0) <= \^wea\(0);
  \WriteMem__1\ <= \^writemem__1\;
  rdcnt0 <= \^rdcnt0\;
\A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_31,
      I1 => DOBDO(0),
      I2 => WaveID,
      O => memory_reg_0(0)
    );
\A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_30,
      I1 => DOBDO(1),
      I2 => WaveID,
      O => memory_reg_0(1)
    );
\A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_29,
      I1 => DOBDO(2),
      I2 => WaveID,
      O => memory_reg_0(2)
    );
\A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_28,
      I1 => DOBDO(3),
      I2 => WaveID,
      O => memory_reg_0(3)
    );
\A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_27,
      I1 => DOBDO(4),
      I2 => WaveID,
      O => memory_reg_0(4)
    );
\A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_26,
      I1 => DOBDO(5),
      I2 => WaveID,
      O => memory_reg_0(5)
    );
\A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_25,
      I1 => DOBDO(6),
      I2 => WaveID,
      O => memory_reg_0(6)
    );
\A[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => memory_reg_n_24,
      I1 => DOBDO(7),
      I2 => WaveID,
      O => memory_reg_0(7)
    );
\Nullflag_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \_inferred__3/i__carry_n_1\,
      I1 => \^rdcnt0\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => \^nullflag_reg_0\(0),
      O => \Nullflag_i_1__0_n_0\
    );
Nullflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Nullflag_i_1__0_n_0\,
      Q => \^nullflag_reg_0\(0),
      R => '0'
    );
Read_Z1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88E20000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => WaveID,
      O => Read
    );
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Read,
      Q => Read_Z1_reg_n_0,
      R => '0'
    );
\State[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \State[0]_i_2_n_0\,
      I1 => Q(2),
      I2 => \State_reg[0]_0\,
      I3 => Q(3),
      I4 => \State_reg[0]_1\,
      O => D(0)
    );
\State[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^nullflag_reg_0\(0),
      I2 => WaveID,
      I3 => NullflagA(0),
      I4 => TX_Done,
      O => \State[0]_i_2_n_0\
    );
\WRCNT_loc[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      O => \p_0_in__1\(0)
    );
\WRCNT_loc[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      O => \p_0_in__1\(1)
    );
\WRCNT_loc[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      O => \p_0_in__1\(2)
    );
\WRCNT_loc[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \p_0_in__1\(3)
    );
\WRCNT_loc[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      I4 => \WRCNT_loc_reg_n_0_[4]\,
      O => \p_0_in__1\(4)
    );
\WRCNT_loc[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      I4 => \WRCNT_loc_reg_n_0_[4]\,
      I5 => \WRCNT_loc_reg_n_0_[5]\,
      O => \p_0_in__1\(5)
    );
\WRCNT_loc[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc[7]_i_2__0_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      O => \p_0_in__1\(6)
    );
\WRCNT_loc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc[7]_i_2__0_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \WRCNT_loc_reg_n_0_[7]\,
      O => \p_0_in__1\(7)
    );
\WRCNT_loc[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[5]\,
      I1 => \WRCNT_loc_reg_n_0_[3]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      I4 => \WRCNT_loc_reg_n_0_[2]\,
      I5 => \WRCNT_loc_reg_n_0_[4]\,
      O => \WRCNT_loc[7]_i_2__0_n_0\
    );
\WRCNT_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__0_n_0\,
      D => \p_0_in__1\(0),
      Q => \WRCNT_loc_reg_n_0_[0]\,
      R => SR(0)
    );
\WRCNT_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__0_n_0\,
      D => \p_0_in__1\(1),
      Q => \WRCNT_loc_reg_n_0_[1]\,
      R => SR(0)
    );
\WRCNT_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__0_n_0\,
      D => \p_0_in__1\(2),
      Q => \WRCNT_loc_reg_n_0_[2]\,
      R => SR(0)
    );
\WRCNT_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__0_n_0\,
      D => \p_0_in__1\(3),
      Q => \WRCNT_loc_reg_n_0_[3]\,
      R => SR(0)
    );
\WRCNT_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__0_n_0\,
      D => \p_0_in__1\(4),
      Q => \WRCNT_loc_reg_n_0_[4]\,
      R => SR(0)
    );
\WRCNT_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__0_n_0\,
      D => \p_0_in__1\(5),
      Q => \WRCNT_loc_reg_n_0_[5]\,
      R => SR(0)
    );
\WRCNT_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__0_n_0\,
      D => \p_0_in__1\(6),
      Q => \WRCNT_loc_reg_n_0_[6]\,
      R => SR(0)
    );
\WRCNT_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \memory_reg_i_1__0_n_0\,
      D => \p_0_in__1\(7),
      Q => \WRCNT_loc_reg_n_0_[7]\,
      R => SR(0)
    );
\Write_Z1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^state_reg[0]\,
      I1 => ChanAddressReg,
      I2 => Write_IBUF,
      I3 => Q(2),
      I4 => Q(3),
      I5 => WaveID,
      O => mux3_out(1)
    );
\Write_Z1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \^state_reg[0]\
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => mux3_out(1),
      Q => Write_Z1_reg_n_0,
      R => '0'
    );
\_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW__inferred__3/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__3/i__carry_n_1\,
      CO(1) => \_inferred__3/i__carry_n_2\,
      CO(0) => \_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1__0_n_0\,
      S(1) => \i__carry_i_2__0_n_0\,
      S(0) => \i__carry_i_3__4_n_0\
    );
\empty_loc_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444444F"
    )
        port map (
      I0 => \memory_reg_i_1__0_n_0\,
      I1 => empty_loc_reg_n_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => \empty_loc_i_1__0_n_0\
    );
empty_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \empty_loc_i_1__0_n_0\,
      Q => empty_loc_reg_n_0,
      R => '0'
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94000294"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \i__carry_i_4__4_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[7]\,
      I4 => rdcnt_reg(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => \WRCNT_loc_reg_n_0_[7]\,
      I3 => rdcnt_reg(7),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => \i__carry_i_5__0_n_0\,
      I1 => \WRCNT_loc_reg_n_0_[5]\,
      I2 => \i__carry_i_6__4_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[4]\,
      I4 => rdcnt_reg(5),
      I5 => rdcnt_reg(4),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(4),
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => \WRCNT_loc_reg_n_0_[5]\,
      I3 => rdcnt_reg(5),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[3]\,
      I3 => rdcnt_reg(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842112840000"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => rdcnt_reg(2),
      I3 => rdcnt_reg(1),
      I4 => rdcnt_reg(0),
      I5 => \WRCNT_loc_reg_n_0_[0]\,
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => rdcnt_reg(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[4]\,
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      I4 => \WRCNT_loc_reg_n_0_[3]\,
      I5 => \WRCNT_loc_reg_n_0_[5]\,
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      I4 => rdcnt_reg(3),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      I2 => rdcnt_reg(7),
      I3 => \WRCNT_loc_reg_n_0_[7]\,
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(4),
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => rdcnt_reg(5),
      I3 => \WRCNT_loc_reg_n_0_[5]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \i__carry_i_6__4_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => rdcnt_reg(3),
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => rdcnt_reg(1),
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      O => \i__carry_i_8_n_0\
    );
memory_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => \WRCNT_loc_reg_n_0_[7]\,
      ADDRARDADDR(10) => \WRCNT_loc_reg_n_0_[6]\,
      ADDRARDADDR(9) => \WRCNT_loc_reg_n_0_[5]\,
      ADDRARDADDR(8) => \WRCNT_loc_reg_n_0_[4]\,
      ADDRARDADDR(7) => \WRCNT_loc_reg_n_0_[3]\,
      ADDRARDADDR(6) => \WRCNT_loc_reg_n_0_[2]\,
      ADDRARDADDR(5) => \WRCNT_loc_reg_n_0_[1]\,
      ADDRARDADDR(4) => \WRCNT_loc_reg_n_0_[0]\,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 4) => rdcnt_reg(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => CLK_IBUF_BUFG,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => \^diadi\(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_memory_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7) => memory_reg_n_24,
      DOBDO(6) => memory_reg_n_25,
      DOBDO(5) => memory_reg_n_26,
      DOBDO(4) => memory_reg_n_27,
      DOBDO(3) => memory_reg_n_28,
      DOBDO(2) => memory_reg_n_29,
      DOBDO(1) => memory_reg_n_30,
      DOBDO(0) => memory_reg_n_31,
      DOPADOP(1 downto 0) => NLW_memory_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_memory_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \memory_reg_i_1__0_n_0\,
      ENBWREN => memory_reg_1,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(3 downto 0) => B"0000"
    );
\memory_reg_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(0),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(0)
    );
memory_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      O => \^wea\(0)
    );
\memory_reg_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Write_IBUF,
      I3 => ChanAddressReg,
      I4 => Q(0),
      I5 => Q(1),
      O => \^writemem__1\
    );
\memory_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Write_Z1_reg_n_0,
      I1 => \^writemem__1\,
      I2 => WaveID,
      I3 => Addr0,
      O => \memory_reg_i_1__0_n_0\
    );
\memory_reg_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(7),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(7)
    );
\memory_reg_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(6),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(6)
    );
\memory_reg_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(5),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(5)
    );
\memory_reg_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(4),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(4)
    );
\memory_reg_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(3),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(3)
    );
\memory_reg_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(2)
    );
\memory_reg_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Din_IBUF(1),
      I3 => Q(0),
      I4 => Q(1),
      O => \^diadi\(1)
    );
\rdcnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rdcnt0_inferred__0/i__carry_n_0\,
      CO(2) => \rdcnt0_inferred__0/i__carry_n_1\,
      CO(1) => \rdcnt0_inferred__0/i__carry_n_2\,
      CO(0) => \rdcnt0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_rdcnt0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\rdcnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF010101FF01"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Addr0,
      I4 => \^rdcnt0\,
      I5 => \rdcnt0_inferred__0/i__carry_n_0\,
      O => \rdcnt[0]_i_1__0_n_0\
    );
\rdcnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1_reg_n_0,
      I2 => empty_loc_reg_n_0,
      O => \^rdcnt0\
    );
\rdcnt[0]_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt_reg(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => rdcnt_reg(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt_reg(0),
      I1 => rdcnt_reg(1),
      I2 => rdcnt_reg(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt_reg(1),
      I1 => rdcnt_reg(0),
      I2 => rdcnt_reg(2),
      I3 => rdcnt_reg(3),
      O => plusOp(3)
    );
\rdcnt[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt_reg(2),
      I1 => rdcnt_reg(0),
      I2 => rdcnt_reg(1),
      I3 => rdcnt_reg(3),
      I4 => rdcnt_reg(4),
      O => plusOp(4)
    );
\rdcnt[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rdcnt_reg(3),
      I1 => rdcnt_reg(1),
      I2 => rdcnt_reg(0),
      I3 => rdcnt_reg(2),
      I4 => rdcnt_reg(4),
      I5 => rdcnt_reg(5),
      O => plusOp(5)
    );
\rdcnt[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rdcnt[6]_i_2__2_n_0\,
      I1 => rdcnt_reg(6),
      O => plusOp(6)
    );
\rdcnt[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rdcnt_reg(5),
      I1 => rdcnt_reg(3),
      I2 => rdcnt_reg(1),
      I3 => rdcnt_reg(0),
      I4 => rdcnt_reg(2),
      I5 => rdcnt_reg(4),
      O => \rdcnt[6]_i_2__2_n_0\
    );
\rdcnt[7]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rdcnt[6]_i_2__2_n_0\,
      I1 => rdcnt_reg(6),
      I2 => rdcnt_reg(7),
      O => plusOp(7)
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(0),
      Q => rdcnt_reg(0),
      R => \rdcnt[0]_i_1__0_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(1),
      Q => rdcnt_reg(1),
      R => \rdcnt[0]_i_1__0_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(2),
      Q => rdcnt_reg(2),
      R => \rdcnt[0]_i_1__0_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(3),
      Q => rdcnt_reg(3),
      R => \rdcnt[0]_i_1__0_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(4),
      Q => rdcnt_reg(4),
      R => \rdcnt[0]_i_1__0_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(5),
      Q => rdcnt_reg(5),
      R => \rdcnt[0]_i_1__0_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(6),
      Q => rdcnt_reg(6),
      R => \rdcnt[0]_i_1__0_n_0\
    );
\rdcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^rdcnt0\,
      D => plusOp(7),
      Q => rdcnt_reg(7),
      R => \rdcnt[0]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_Master is
  port (
    TX_Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SS : out STD_LOGIC;
    TX_Start : in STD_LOGIC;
    TX_Done : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute Laenge : integer;
  attribute Laenge of SPI_Master : entity is 16;
  attribute Quarz_Taktfrequenz : integer;
  attribute Quarz_Taktfrequenz of SPI_Master : entity is 100000000;
  attribute SPI_Taktfrequenz : integer;
  attribute SPI_Taktfrequenz of SPI_Master : entity is 25000000;
end SPI_Master;

architecture STRUCTURE of SPI_Master is
  signal \FSM_onehot_spitxstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal SS_i_1_n_0 : STD_LOGIC;
  signal SS_i_2_n_0 : STD_LOGIC;
  signal \^tx_done\ : STD_LOGIC;
  signal TX_Done_i_1_n_0 : STD_LOGIC;
  signal \bitcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_3_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_2_n_0\ : STD_LOGIC;
  signal delay : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 to 15 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal spiclk_i_1_n_0 : STD_LOGIC;
  signal spiclk_i_2_n_0 : STD_LOGIC;
  signal spiclklast : STD_LOGIC;
  signal tx_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal tx_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of tx_reg2 : signal is std.standard.true;
  signal \tx_reg2__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tx_reg[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[2]_i_1\ : label is "soft_lutpair31";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[0]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[1]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[2]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute SOFT_HLUTNM of \bitcounter[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bitcounter[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bitcounter[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bitcounter[3]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bitcounter[4]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of spiclk_i_2 : label is "soft_lutpair32";
  attribute KEEP : string;
  attribute KEEP of \tx_reg2_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \tx_reg2_reg[0]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[10]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[11]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[12]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[13]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[14]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[14]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[15]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[15]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[1]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[2]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[3]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[4]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[5]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[6]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[7]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[8]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[9]\ : label is "true";
begin
  SCLK <= \^sclk\;
  TX_Done <= \^tx_done\;
\FSM_onehot_spitxstate[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33330222"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => TX_Start,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[0]_i_1_n_0\
    );
\FSM_onehot_spitxstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAA8F8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => TX_Start,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[1]_i_1_n_0\
    );
\FSM_onehot_spitxstate[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4F080"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => TX_Start,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[2]_i_1_n_0\
    );
\FSM_onehot_spitxstate[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      I5 => sel0(5),
      O => \FSM_onehot_spitxstate[2]_i_2_n_0\
    );
\FSM_onehot_spitxstate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_spitxstate[0]_i_1_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_spitxstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_spitxstate[1]_i_1_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_spitxstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_spitxstate[2]_i_1_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      R => '0'
    );
SS_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => SS_i_1_n_0
    );
SS_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => TX_Start,
      O => SS_i_2_n_0
    );
SS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SS_i_1_n_0,
      D => SS_i_2_n_0,
      Q => SS,
      R => '0'
    );
TX_Done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \^tx_done\,
      O => TX_Done_i_1_n_0
    );
TX_Done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => TX_Done_i_1_n_0,
      Q => \^tx_done\,
      R => '0'
    );
\bitcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => \bitcounter[0]_i_1_n_0\
    );
\bitcounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      O => \bitcounter[1]_i_1_n_0\
    );
\bitcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \bitcounter[2]_i_1_n_0\
    );
\bitcounter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      O => \bitcounter[3]_i_1_n_0\
    );
\bitcounter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I1 => sel0(5),
      I2 => \^sclk\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \bitcounter[3]_i_2_n_0\
    );
\bitcounter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \bitcounter[3]_i_3_n_0\
    );
\bitcounter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAAAA9AAAA"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => \bitcounter[4]_i_2_n_0\,
      I3 => sel0(2),
      I4 => \bitcounter[3]_i_2_n_0\,
      I5 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \bitcounter[4]_i_1_n_0\
    );
\bitcounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \bitcounter[4]_i_2_n_0\
    );
\bitcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitcounter[3]_i_2_n_0\,
      D => \bitcounter[0]_i_1_n_0\,
      Q => sel0(0),
      R => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitcounter[3]_i_2_n_0\,
      D => \bitcounter[1]_i_1_n_0\,
      Q => sel0(1),
      R => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitcounter[3]_i_2_n_0\,
      D => \bitcounter[2]_i_1_n_0\,
      Q => sel0(2),
      R => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitcounter[3]_i_2_n_0\,
      D => \bitcounter[3]_i_3_n_0\,
      Q => sel0(3),
      R => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bitcounter[4]_i_1_n_0\,
      Q => sel0(4),
      R => '0'
    );
\delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888FFFC"
    )
        port map (
      I0 => TX_Start,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I4 => sel0(5),
      O => delay(0)
    );
\delay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delay(0),
      Q => sel0(5),
      R => '0'
    );
spiclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0FE0E000E0"
    )
        port map (
      I0 => spiclk_i_2_n_0,
      I1 => sel0(4),
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => sel0(5),
      I4 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I5 => \^sclk\,
      O => spiclk_i_1_n_0
    );
spiclk_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(3),
      O => spiclk_i_2_n_0
    );
spiclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spiclk_i_1_n_0,
      Q => \^sclk\,
      R => '0'
    );
spiclklast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sclk\,
      Q => spiclklast,
      R => '0'
    );
\tx_reg2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(0),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(0),
      O => \tx_reg2__0\(0)
    );
\tx_reg2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(10),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(10),
      O => \tx_reg2__0\(10)
    );
\tx_reg2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(11),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(11),
      O => \tx_reg2__0\(11)
    );
\tx_reg2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(12),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(12),
      O => \tx_reg2__0\(12)
    );
\tx_reg2[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(13),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(13),
      O => \tx_reg2__0\(13)
    );
\tx_reg2[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(14),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(14),
      O => \tx_reg2__0\(14)
    );
\tx_reg2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(15),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(15),
      O => \tx_reg2__0\(15)
    );
\tx_reg2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(1),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(1),
      O => \tx_reg2__0\(1)
    );
\tx_reg2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(2),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(2),
      O => \tx_reg2__0\(2)
    );
\tx_reg2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(3),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(3),
      O => \tx_reg2__0\(3)
    );
\tx_reg2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(4),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(4),
      O => \tx_reg2__0\(4)
    );
\tx_reg2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(5),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(5),
      O => \tx_reg2__0\(5)
    );
\tx_reg2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(6),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(6),
      O => \tx_reg2__0\(6)
    );
\tx_reg2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(7),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(7),
      O => \tx_reg2__0\(7)
    );
\tx_reg2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(8),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(8),
      O => \tx_reg2__0\(8)
    );
\tx_reg2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(9),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(9),
      O => \tx_reg2__0\(9)
    );
\tx_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(0),
      Q => tx_reg2(0),
      R => '0'
    );
\tx_reg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(10),
      Q => tx_reg2(10),
      R => '0'
    );
\tx_reg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(11),
      Q => tx_reg2(11),
      R => '0'
    );
\tx_reg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(12),
      Q => tx_reg2(12),
      R => '0'
    );
\tx_reg2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(13),
      Q => tx_reg2(13),
      R => '0'
    );
\tx_reg2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(14),
      Q => tx_reg2(14),
      R => '0'
    );
\tx_reg2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(15),
      Q => tx_reg2(15),
      R => '0'
    );
\tx_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(1),
      Q => tx_reg2(1),
      R => '0'
    );
\tx_reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(2),
      Q => tx_reg2(2),
      R => '0'
    );
\tx_reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(3),
      Q => tx_reg2(3),
      R => '0'
    );
\tx_reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(4),
      Q => tx_reg2(4),
      R => '0'
    );
\tx_reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(5),
      Q => tx_reg2(5),
      R => '0'
    );
\tx_reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(6),
      Q => tx_reg2(6),
      R => '0'
    );
\tx_reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(7),
      Q => tx_reg2(7),
      R => '0'
    );
\tx_reg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(8),
      Q => tx_reg2(8),
      R => '0'
    );
\tx_reg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(9),
      Q => tx_reg2(9),
      R => '0'
    );
\tx_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => TX_Data(0),
      I1 => spiclklast,
      I2 => \^sclk\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I4 => tx_reg(0),
      O => \tx_reg[0]_i_1_n_0\
    );
\tx_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(9),
      I1 => \^sclk\,
      I2 => TX_Data(10),
      I3 => spiclklast,
      O => p_1_in(10)
    );
\tx_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(10),
      I2 => spiclklast,
      I3 => TX_Data(11),
      O => p_1_in(11)
    );
\tx_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(11),
      I2 => spiclklast,
      I3 => TX_Data(12),
      O => p_1_in(12)
    );
\tx_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(12),
      I2 => spiclklast,
      I3 => TX_Data(13),
      O => p_1_in(13)
    );
\tx_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(13),
      I2 => spiclklast,
      I3 => TX_Data(14),
      O => p_1_in(14)
    );
\tx_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^sclk\,
      I1 => spiclklast,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \p_0_in__0\(15)
    );
\tx_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(14),
      I2 => spiclklast,
      I3 => TX_Data(15),
      O => p_1_in(15)
    );
\tx_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(0),
      I1 => \^sclk\,
      I2 => TX_Data(1),
      I3 => spiclklast,
      O => p_1_in(1)
    );
\tx_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(1),
      I1 => \^sclk\,
      I2 => TX_Data(2),
      I3 => spiclklast,
      O => p_1_in(2)
    );
\tx_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(2),
      I1 => \^sclk\,
      I2 => TX_Data(3),
      I3 => spiclklast,
      O => p_1_in(3)
    );
\tx_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(3),
      I1 => \^sclk\,
      I2 => TX_Data(4),
      I3 => spiclklast,
      O => p_1_in(4)
    );
\tx_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(4),
      I1 => \^sclk\,
      I2 => TX_Data(5),
      I3 => spiclklast,
      O => p_1_in(5)
    );
\tx_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(5),
      I1 => \^sclk\,
      I2 => TX_Data(6),
      I3 => spiclklast,
      O => p_1_in(6)
    );
\tx_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(6),
      I1 => \^sclk\,
      I2 => TX_Data(7),
      I3 => spiclklast,
      O => p_1_in(7)
    );
\tx_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(7),
      I1 => \^sclk\,
      I2 => TX_Data(8),
      I3 => spiclklast,
      O => p_1_in(8)
    );
\tx_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(8),
      I1 => \^sclk\,
      I2 => TX_Data(9),
      I3 => spiclklast,
      O => p_1_in(9)
    );
\tx_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg[0]_i_1_n_0\,
      Q => tx_reg(0),
      R => '0'
    );
\tx_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(10),
      Q => tx_reg(10),
      R => '0'
    );
\tx_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(11),
      Q => tx_reg(11),
      R => '0'
    );
\tx_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(12),
      Q => tx_reg(12),
      R => '0'
    );
\tx_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(13),
      Q => tx_reg(13),
      R => '0'
    );
\tx_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(14),
      Q => tx_reg(14),
      R => '0'
    );
\tx_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(15),
      Q => MOSI,
      R => '0'
    );
\tx_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(1),
      Q => tx_reg(1),
      R => '0'
    );
\tx_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(2),
      Q => tx_reg(2),
      R => '0'
    );
\tx_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(3),
      Q => tx_reg(3),
      R => '0'
    );
\tx_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(4),
      Q => tx_reg(4),
      R => '0'
    );
\tx_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(5),
      Q => tx_reg(5),
      R => '0'
    );
\tx_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(6),
      Q => tx_reg(6),
      R => '0'
    );
\tx_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(7),
      Q => tx_reg(7),
      R => '0'
    );
\tx_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(8),
      Q => tx_reg(8),
      R => '0'
    );
\tx_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(9),
      Q => tx_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SPI_Master__1\ is
  port (
    TX_Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SS : out STD_LOGIC;
    TX_Start : in STD_LOGIC;
    TX_Done : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute Laenge : integer;
  attribute Laenge of \SPI_Master__1\ : entity is 16;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SPI_Master__1\ : entity is "SPI_Master";
  attribute Quarz_Taktfrequenz : integer;
  attribute Quarz_Taktfrequenz of \SPI_Master__1\ : entity is 100000000;
  attribute SPI_Taktfrequenz : integer;
  attribute SPI_Taktfrequenz of \SPI_Master__1\ : entity is 25000000;
end \SPI_Master__1\;

architecture STRUCTURE of \SPI_Master__1\ is
  signal \FSM_onehot_spitxstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal SS_i_1_n_0 : STD_LOGIC;
  signal SS_i_2_n_0 : STD_LOGIC;
  signal \^tx_done\ : STD_LOGIC;
  signal TX_Done_i_1_n_0 : STD_LOGIC;
  signal \bitcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_3_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_2_n_0\ : STD_LOGIC;
  signal delay : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 to 15 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal spiclk_i_1_n_0 : STD_LOGIC;
  signal spiclk_i_2_n_0 : STD_LOGIC;
  signal spiclklast : STD_LOGIC;
  signal tx_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal tx_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of tx_reg2 : signal is std.standard.true;
  signal \tx_reg2__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tx_reg[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[0]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[1]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[2]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute SOFT_HLUTNM of \bitcounter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitcounter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitcounter[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bitcounter[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bitcounter[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of spiclk_i_2 : label is "soft_lutpair3";
  attribute KEEP : string;
  attribute KEEP of \tx_reg2_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \tx_reg2_reg[0]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[10]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[11]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[12]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[13]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[14]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[14]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[15]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[15]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[1]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[2]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[3]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[4]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[5]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[6]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[7]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[8]\ : label is "true";
  attribute KEEP of \tx_reg2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \tx_reg2_reg[9]\ : label is "true";
begin
  SCLK <= \^sclk\;
  TX_Done <= \^tx_done\;
\FSM_onehot_spitxstate[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33330222"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => TX_Start,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[0]_i_1_n_0\
    );
\FSM_onehot_spitxstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAA8F8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => TX_Start,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[1]_i_1_n_0\
    );
\FSM_onehot_spitxstate[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4F080"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => TX_Start,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[2]_i_1_n_0\
    );
\FSM_onehot_spitxstate[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      I5 => sel0(5),
      O => \FSM_onehot_spitxstate[2]_i_2_n_0\
    );
\FSM_onehot_spitxstate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_spitxstate[0]_i_1_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_spitxstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_spitxstate[1]_i_1_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_spitxstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_spitxstate[2]_i_1_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      R => '0'
    );
SS_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => SS_i_1_n_0
    );
SS_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => TX_Start,
      O => SS_i_2_n_0
    );
SS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SS_i_1_n_0,
      D => SS_i_2_n_0,
      Q => SS,
      R => '0'
    );
TX_Done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \^tx_done\,
      O => TX_Done_i_1_n_0
    );
TX_Done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => TX_Done_i_1_n_0,
      Q => \^tx_done\,
      R => '0'
    );
\bitcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => \bitcounter[0]_i_1_n_0\
    );
\bitcounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      O => \bitcounter[1]_i_1_n_0\
    );
\bitcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \bitcounter[2]_i_1_n_0\
    );
\bitcounter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      O => \bitcounter[3]_i_1_n_0\
    );
\bitcounter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I1 => sel0(5),
      I2 => \^sclk\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \bitcounter[3]_i_2_n_0\
    );
\bitcounter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \bitcounter[3]_i_3_n_0\
    );
\bitcounter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAAAA9AAAA"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => \bitcounter[4]_i_2_n_0\,
      I3 => sel0(2),
      I4 => \bitcounter[3]_i_2_n_0\,
      I5 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \bitcounter[4]_i_1_n_0\
    );
\bitcounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \bitcounter[4]_i_2_n_0\
    );
\bitcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitcounter[3]_i_2_n_0\,
      D => \bitcounter[0]_i_1_n_0\,
      Q => sel0(0),
      R => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitcounter[3]_i_2_n_0\,
      D => \bitcounter[1]_i_1_n_0\,
      Q => sel0(1),
      R => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitcounter[3]_i_2_n_0\,
      D => \bitcounter[2]_i_1_n_0\,
      Q => sel0(2),
      R => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitcounter[3]_i_2_n_0\,
      D => \bitcounter[3]_i_3_n_0\,
      Q => sel0(3),
      R => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bitcounter[4]_i_1_n_0\,
      Q => sel0(4),
      R => '0'
    );
\delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888FFFC"
    )
        port map (
      I0 => TX_Start,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I4 => sel0(5),
      O => delay(0)
    );
\delay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delay(0),
      Q => sel0(5),
      R => '0'
    );
spiclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0FE0E000E0"
    )
        port map (
      I0 => spiclk_i_2_n_0,
      I1 => sel0(4),
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => sel0(5),
      I4 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I5 => \^sclk\,
      O => spiclk_i_1_n_0
    );
spiclk_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(3),
      O => spiclk_i_2_n_0
    );
spiclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spiclk_i_1_n_0,
      Q => \^sclk\,
      R => '0'
    );
spiclklast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sclk\,
      Q => spiclklast,
      R => '0'
    );
\tx_reg2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(0),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(0),
      O => \tx_reg2__0\(0)
    );
\tx_reg2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(10),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(10),
      O => \tx_reg2__0\(10)
    );
\tx_reg2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(11),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(11),
      O => \tx_reg2__0\(11)
    );
\tx_reg2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(12),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(12),
      O => \tx_reg2__0\(12)
    );
\tx_reg2[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(13),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(13),
      O => \tx_reg2__0\(13)
    );
\tx_reg2[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(14),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(14),
      O => \tx_reg2__0\(14)
    );
\tx_reg2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(15),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(15),
      O => \tx_reg2__0\(15)
    );
\tx_reg2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(1),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(1),
      O => \tx_reg2__0\(1)
    );
\tx_reg2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(2),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(2),
      O => \tx_reg2__0\(2)
    );
\tx_reg2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(3),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(3),
      O => \tx_reg2__0\(3)
    );
\tx_reg2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(4),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(4),
      O => \tx_reg2__0\(4)
    );
\tx_reg2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(5),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(5),
      O => \tx_reg2__0\(5)
    );
\tx_reg2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(6),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(6),
      O => \tx_reg2__0\(6)
    );
\tx_reg2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(7),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(7),
      O => \tx_reg2__0\(7)
    );
\tx_reg2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(8),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(8),
      O => \tx_reg2__0\(8)
    );
\tx_reg2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_Data(9),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => tx_reg2(9),
      O => \tx_reg2__0\(9)
    );
\tx_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(0),
      Q => tx_reg2(0),
      R => '0'
    );
\tx_reg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(10),
      Q => tx_reg2(10),
      R => '0'
    );
\tx_reg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(11),
      Q => tx_reg2(11),
      R => '0'
    );
\tx_reg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(12),
      Q => tx_reg2(12),
      R => '0'
    );
\tx_reg2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(13),
      Q => tx_reg2(13),
      R => '0'
    );
\tx_reg2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(14),
      Q => tx_reg2(14),
      R => '0'
    );
\tx_reg2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(15),
      Q => tx_reg2(15),
      R => '0'
    );
\tx_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(1),
      Q => tx_reg2(1),
      R => '0'
    );
\tx_reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(2),
      Q => tx_reg2(2),
      R => '0'
    );
\tx_reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(3),
      Q => tx_reg2(3),
      R => '0'
    );
\tx_reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(4),
      Q => tx_reg2(4),
      R => '0'
    );
\tx_reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(5),
      Q => tx_reg2(5),
      R => '0'
    );
\tx_reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(6),
      Q => tx_reg2(6),
      R => '0'
    );
\tx_reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(7),
      Q => tx_reg2(7),
      R => '0'
    );
\tx_reg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(8),
      Q => tx_reg2(8),
      R => '0'
    );
\tx_reg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg2__0\(9),
      Q => tx_reg2(9),
      R => '0'
    );
\tx_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => TX_Data(0),
      I1 => spiclklast,
      I2 => \^sclk\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I4 => tx_reg(0),
      O => \tx_reg[0]_i_1_n_0\
    );
\tx_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(9),
      I1 => \^sclk\,
      I2 => TX_Data(10),
      I3 => spiclklast,
      O => p_1_in(10)
    );
\tx_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(10),
      I2 => spiclklast,
      I3 => TX_Data(11),
      O => p_1_in(11)
    );
\tx_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(11),
      I2 => spiclklast,
      I3 => TX_Data(12),
      O => p_1_in(12)
    );
\tx_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(12),
      I2 => spiclklast,
      I3 => TX_Data(13),
      O => p_1_in(13)
    );
\tx_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(13),
      I2 => spiclklast,
      I3 => TX_Data(14),
      O => p_1_in(14)
    );
\tx_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^sclk\,
      I1 => spiclklast,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \p_0_in__0\(15)
    );
\tx_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sclk\,
      I1 => tx_reg(14),
      I2 => spiclklast,
      I3 => TX_Data(15),
      O => p_1_in(15)
    );
\tx_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(0),
      I1 => \^sclk\,
      I2 => TX_Data(1),
      I3 => spiclklast,
      O => p_1_in(1)
    );
\tx_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(1),
      I1 => \^sclk\,
      I2 => TX_Data(2),
      I3 => spiclklast,
      O => p_1_in(2)
    );
\tx_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(2),
      I1 => \^sclk\,
      I2 => TX_Data(3),
      I3 => spiclklast,
      O => p_1_in(3)
    );
\tx_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(3),
      I1 => \^sclk\,
      I2 => TX_Data(4),
      I3 => spiclklast,
      O => p_1_in(4)
    );
\tx_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(4),
      I1 => \^sclk\,
      I2 => TX_Data(5),
      I3 => spiclklast,
      O => p_1_in(5)
    );
\tx_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(5),
      I1 => \^sclk\,
      I2 => TX_Data(6),
      I3 => spiclklast,
      O => p_1_in(6)
    );
\tx_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(6),
      I1 => \^sclk\,
      I2 => TX_Data(7),
      I3 => spiclklast,
      O => p_1_in(7)
    );
\tx_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(7),
      I1 => \^sclk\,
      I2 => TX_Data(8),
      I3 => spiclklast,
      O => p_1_in(8)
    );
\tx_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2F0"
    )
        port map (
      I0 => tx_reg(8),
      I1 => \^sclk\,
      I2 => TX_Data(9),
      I3 => spiclklast,
      O => p_1_in(9)
    );
\tx_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_reg[0]_i_1_n_0\,
      Q => tx_reg(0),
      R => '0'
    );
\tx_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(10),
      Q => tx_reg(10),
      R => '0'
    );
\tx_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(11),
      Q => tx_reg(11),
      R => '0'
    );
\tx_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(12),
      Q => tx_reg(12),
      R => '0'
    );
\tx_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(13),
      Q => tx_reg(13),
      R => '0'
    );
\tx_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(14),
      Q => tx_reg(14),
      R => '0'
    );
\tx_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(15),
      Q => MOSI,
      R => '0'
    );
\tx_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(1),
      Q => tx_reg(1),
      R => '0'
    );
\tx_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(2),
      Q => tx_reg(2),
      R => '0'
    );
\tx_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(3),
      Q => tx_reg(3),
      R => '0'
    );
\tx_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(4),
      Q => tx_reg(4),
      R => '0'
    );
\tx_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(5),
      Q => tx_reg(5),
      R => '0'
    );
\tx_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(6),
      Q => tx_reg(6),
      R => '0'
    );
\tx_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(7),
      Q => tx_reg(7),
      R => '0'
    );
\tx_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(8),
      Q => tx_reg(8),
      R => '0'
    );
\tx_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => p_1_in(9),
      Q => tx_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Channel is
  port (
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SS : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    ChanAddressReg : in STD_LOGIC;
    EnWrite_IBUF : in STD_LOGIC;
    trig_all_IBUF : in STD_LOGIC;
    trig_CH_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FolState2_carry_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Din_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write_IBUF : in STD_LOGIC;
    \WaveAdressA[0]\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    RESET_CH_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end Channel;

architecture STRUCTURE of Channel is
  signal A : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal A_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of A_0 : signal is std.standard.true;
  signal Addr0 : STD_LOGIC;
  signal Addr0_i_1_n_0 : STD_LOGIC;
  signal B : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG of B : signal is std.standard.true;
  signal C : STD_LOGIC_VECTOR ( 33 downto 0 );
  attribute MARK_DEBUG of C : signal is std.standard.true;
  signal CEP : STD_LOGIC;
  signal C_reg_i_10_n_0 : STD_LOGIC;
  signal C_reg_i_11_n_0 : STD_LOGIC;
  signal C_reg_i_12_n_0 : STD_LOGIC;
  signal C_reg_i_13_n_0 : STD_LOGIC;
  signal C_reg_i_14_n_0 : STD_LOGIC;
  signal C_reg_i_15_n_0 : STD_LOGIC;
  signal C_reg_i_1_n_1 : STD_LOGIC;
  signal C_reg_i_1_n_2 : STD_LOGIC;
  signal C_reg_i_1_n_3 : STD_LOGIC;
  signal C_reg_i_2_n_0 : STD_LOGIC;
  signal C_reg_i_2_n_1 : STD_LOGIC;
  signal C_reg_i_2_n_2 : STD_LOGIC;
  signal C_reg_i_2_n_3 : STD_LOGIC;
  signal C_reg_i_3_n_0 : STD_LOGIC;
  signal C_reg_i_3_n_1 : STD_LOGIC;
  signal C_reg_i_3_n_2 : STD_LOGIC;
  signal C_reg_i_3_n_3 : STD_LOGIC;
  signal C_reg_i_4_n_0 : STD_LOGIC;
  signal C_reg_i_4_n_1 : STD_LOGIC;
  signal C_reg_i_4_n_2 : STD_LOGIC;
  signal C_reg_i_4_n_3 : STD_LOGIC;
  signal C_reg_i_6_n_0 : STD_LOGIC;
  signal C_reg_i_7_n_0 : STD_LOGIC;
  signal C_reg_i_8_n_0 : STD_LOGIC;
  signal C_reg_i_9_n_0 : STD_LOGIC;
  signal Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of Dout : signal is std.standard.true;
  signal \Dout[14]_i_1_n_0\ : STD_LOGIC;
  signal \Dout[15]_i_1_n_0\ : STD_LOGIC;
  signal FolState : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FolState1_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal FolState25_in : STD_LOGIC;
  signal \FolState2_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal FolState2_carry_i_1_n_0 : STD_LOGIC;
  signal FolState2_carry_i_2_n_0 : STD_LOGIC;
  signal FolState2_carry_i_3_n_0 : STD_LOGIC;
  signal FolState2_carry_i_4_n_0 : STD_LOGIC;
  signal FolState2_carry_i_5_n_0 : STD_LOGIC;
  signal FolState2_carry_i_6_n_0 : STD_LOGIC;
  signal FolState2_carry_i_7_n_0 : STD_LOGIC;
  signal FolState2_carry_i_8_n_0 : STD_LOGIC;
  signal FolState2_carry_n_0 : STD_LOGIC;
  signal FolState2_carry_n_1 : STD_LOGIC;
  signal FolState2_carry_n_2 : STD_LOGIC;
  signal FolState2_carry_n_3 : STD_LOGIC;
  signal Interface_i_1_n_0 : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_1\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_13\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_2\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_3\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_4\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_5\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_6\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_7\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_0\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_1\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_12\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_14\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_15\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_16\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_17\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_18\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_19\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_2\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_20\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_21\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_3\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_4\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_5\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_6\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_7\ : STD_LOGIC;
  signal NullflagA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal State : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \State[0]_i_3_n_0\ : STD_LOGIC;
  signal \State[0]_i_4_n_0\ : STD_LOGIC;
  signal \State[0]_i_6_n_0\ : STD_LOGIC;
  signal \State[0]_i_7_n_0\ : STD_LOGIC;
  signal \State[1]_i_3_n_0\ : STD_LOGIC;
  signal \State[2]_i_2_n_0\ : STD_LOGIC;
  signal \State[2]_i_4_n_0\ : STD_LOGIC;
  signal \State_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal TX_Done : STD_LOGIC;
  signal WaveID : STD_LOGIC;
  signal WaveIDZ : STD_LOGIC;
  signal \WaveIDZ[0]_i_1_n_0\ : STD_LOGIC;
  signal \WaveIDZ[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \WriteMem__1\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \counter[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal mux1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal rdcnt0 : STD_LOGIC;
  signal trig : STD_LOGIC;
  signal trigZ1 : STD_LOGIC;
  signal NLW_C_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_C_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_C_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_C_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_C_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_C_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FolState1_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FolState1_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FolState1_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_FolState2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FolState2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FolState2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \A_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \A_reg[0]\ : label is "true";
  attribute KEEP of \A_reg[1]\ : label is "yes";
  attribute mark_debug_string of \A_reg[1]\ : label is "true";
  attribute KEEP of \A_reg[2]\ : label is "yes";
  attribute mark_debug_string of \A_reg[2]\ : label is "true";
  attribute KEEP of \A_reg[3]\ : label is "yes";
  attribute mark_debug_string of \A_reg[3]\ : label is "true";
  attribute KEEP of \A_reg[4]\ : label is "yes";
  attribute mark_debug_string of \A_reg[4]\ : label is "true";
  attribute KEEP of \A_reg[5]\ : label is "yes";
  attribute mark_debug_string of \A_reg[5]\ : label is "true";
  attribute KEEP of \A_reg[6]\ : label is "yes";
  attribute mark_debug_string of \A_reg[6]\ : label is "true";
  attribute KEEP of \A_reg[7]\ : label is "yes";
  attribute mark_debug_string of \A_reg[7]\ : label is "true";
  attribute KEEP of \B_reg[0]\ : label is "yes";
  attribute mark_debug_string of \B_reg[0]\ : label is "true";
  attribute KEEP of \B_reg[10]\ : label is "yes";
  attribute mark_debug_string of \B_reg[10]\ : label is "true";
  attribute KEEP of \B_reg[11]\ : label is "yes";
  attribute mark_debug_string of \B_reg[11]\ : label is "true";
  attribute KEEP of \B_reg[12]\ : label is "yes";
  attribute mark_debug_string of \B_reg[12]\ : label is "true";
  attribute KEEP of \B_reg[13]\ : label is "yes";
  attribute mark_debug_string of \B_reg[13]\ : label is "true";
  attribute KEEP of \B_reg[14]\ : label is "yes";
  attribute mark_debug_string of \B_reg[14]\ : label is "true";
  attribute KEEP of \B_reg[15]\ : label is "yes";
  attribute mark_debug_string of \B_reg[15]\ : label is "true";
  attribute KEEP of \B_reg[16]\ : label is "yes";
  attribute mark_debug_string of \B_reg[16]\ : label is "true";
  attribute KEEP of \B_reg[1]\ : label is "yes";
  attribute mark_debug_string of \B_reg[1]\ : label is "true";
  attribute KEEP of \B_reg[2]\ : label is "yes";
  attribute mark_debug_string of \B_reg[2]\ : label is "true";
  attribute KEEP of \B_reg[3]\ : label is "yes";
  attribute mark_debug_string of \B_reg[3]\ : label is "true";
  attribute KEEP of \B_reg[4]\ : label is "yes";
  attribute mark_debug_string of \B_reg[4]\ : label is "true";
  attribute KEEP of \B_reg[5]\ : label is "yes";
  attribute mark_debug_string of \B_reg[5]\ : label is "true";
  attribute KEEP of \B_reg[6]\ : label is "yes";
  attribute mark_debug_string of \B_reg[6]\ : label is "true";
  attribute KEEP of \B_reg[7]\ : label is "yes";
  attribute mark_debug_string of \B_reg[7]\ : label is "true";
  attribute KEEP of \B_reg[8]\ : label is "yes";
  attribute mark_debug_string of \B_reg[8]\ : label is "true";
  attribute KEEP of \B_reg[9]\ : label is "yes";
  attribute mark_debug_string of \B_reg[9]\ : label is "true";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of C_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute KEEP of \Dout_reg[0]\ : label is "yes";
  attribute KEEP of \Dout_reg[10]\ : label is "yes";
  attribute KEEP of \Dout_reg[11]\ : label is "yes";
  attribute KEEP of \Dout_reg[12]\ : label is "yes";
  attribute KEEP of \Dout_reg[13]\ : label is "yes";
  attribute KEEP of \Dout_reg[14]\ : label is "yes";
  attribute KEEP of \Dout_reg[15]\ : label is "yes";
  attribute KEEP of \Dout_reg[1]\ : label is "yes";
  attribute KEEP of \Dout_reg[2]\ : label is "yes";
  attribute KEEP of \Dout_reg[3]\ : label is "yes";
  attribute KEEP of \Dout_reg[4]\ : label is "yes";
  attribute KEEP of \Dout_reg[5]\ : label is "yes";
  attribute KEEP of \Dout_reg[6]\ : label is "yes";
  attribute KEEP of \Dout_reg[7]\ : label is "yes";
  attribute KEEP of \Dout_reg[8]\ : label is "yes";
  attribute KEEP of \Dout_reg[9]\ : label is "yes";
  attribute Laenge : integer;
  attribute Laenge of Interface : label is 16;
  attribute Quarz_Taktfrequenz : integer;
  attribute Quarz_Taktfrequenz of Interface : label is 100000000;
  attribute SPI_Taktfrequenz : integer;
  attribute SPI_Taktfrequenz of Interface : label is 25000000;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \State[2]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[8]_i_2\ : label is "soft_lutpair26";
begin
\A[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA8"
    )
        port map (
      I0 => State(2),
      I1 => State(1),
      I2 => State(3),
      I3 => State(0),
      O => CEP
    );
\A_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => \MemArray[1].MemoryX_n_21\,
      Q => A_0(0),
      R => '0'
    );
\A_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => \MemArray[1].MemoryX_n_20\,
      Q => A_0(1),
      R => '0'
    );
\A_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => \MemArray[1].MemoryX_n_19\,
      Q => A_0(2),
      R => '0'
    );
\A_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => \MemArray[1].MemoryX_n_18\,
      Q => A_0(3),
      R => '0'
    );
\A_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => \MemArray[1].MemoryX_n_17\,
      Q => A_0(4),
      R => '0'
    );
\A_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => \MemArray[1].MemoryX_n_16\,
      Q => A_0(5),
      R => '0'
    );
\A_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => \MemArray[1].MemoryX_n_15\,
      Q => A_0(6),
      R => '0'
    );
\A_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => \MemArray[1].MemoryX_n_14\,
      Q => A_0(7),
      R => '0'
    );
Addr0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666F6666F666"
    )
        port map (
      I0 => WaveID,
      I1 => WaveIDZ,
      I2 => State(0),
      I3 => State(3),
      I4 => State(1),
      I5 => State(2),
      O => Addr0_i_1_n_0
    );
Addr0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Addr0_i_1_n_0,
      Q => Addr0,
      R => '0'
    );
\B_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => '0',
      Q => B(0),
      R => '0'
    );
\B_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(10),
      R => '0'
    );
\B_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(11),
      R => '0'
    );
\B_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(12),
      R => '0'
    );
\B_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(13),
      R => '0'
    );
\B_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(14),
      R => '0'
    );
\B_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(15),
      R => '0'
    );
\B_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(16),
      R => '0'
    );
\B_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => '0',
      Q => B(1),
      R => '0'
    );
\B_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => '0',
      Q => B(2),
      R => '0'
    );
\B_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => '0',
      Q => B(3),
      R => '0'
    );
\B_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(0),
      Q => B(4),
      R => '0'
    );
\B_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(1),
      Q => B(5),
      R => '0'
    );
\B_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(2),
      Q => B(6),
      R => '0'
    );
\B_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(3),
      Q => B(7),
      R => '0'
    );
\B_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(8),
      R => '0'
    );
\B_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CEP,
      D => D(4),
      Q => B(9),
      R => '0'
    );
C_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(16),
      A(28) => A(16),
      A(27) => A(16),
      A(26) => A(16),
      A(25) => A(16),
      A(24) => A(16),
      A(23) => A(16),
      A(22) => A(16),
      A(21) => A(16),
      A(20) => A(16),
      A(19) => A(16),
      A(18) => A(16),
      A(17) => A(16),
      A(16 downto 0) => A(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_C_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(16),
      B(16 downto 0) => B(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_C_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000001000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_C_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_C_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => CLK_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_C_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_C_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_C_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => C(33 downto 0),
      PATTERNBDETECT => NLW_C_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_C_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_C_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_C_reg_UNDERFLOW_UNCONNECTED
    );
C_reg_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => C_reg_i_2_n_0,
      CO(3) => NLW_C_reg_i_1_CO_UNCONNECTED(3),
      CO(2) => C_reg_i_1_n_1,
      CO(1) => C_reg_i_1_n_2,
      CO(0) => C_reg_i_1_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A_0(15 downto 13),
      O(3 downto 0) => A(16 downto 13),
      S(3) => C_reg_i_6_n_0,
      S(2) => C_reg_i_7_n_0,
      S(1) => C_reg_i_8_n_0,
      S(0) => C_reg_i_9_n_0
    );
C_reg_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(12),
      O => C_reg_i_10_n_0
    );
C_reg_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(11),
      O => C_reg_i_11_n_0
    );
C_reg_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(10),
      O => C_reg_i_12_n_0
    );
C_reg_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(9),
      O => C_reg_i_13_n_0
    );
C_reg_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(8),
      O => C_reg_i_14_n_0
    );
C_reg_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(7),
      O => C_reg_i_15_n_0
    );
C_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => C_reg_i_3_n_0,
      CO(3) => C_reg_i_2_n_0,
      CO(2) => C_reg_i_2_n_1,
      CO(1) => C_reg_i_2_n_2,
      CO(0) => C_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => A_0(12 downto 9),
      O(3 downto 0) => A(12 downto 9),
      S(3) => C_reg_i_10_n_0,
      S(2) => C_reg_i_11_n_0,
      S(1) => C_reg_i_12_n_0,
      S(0) => C_reg_i_13_n_0
    );
C_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => C_reg_i_4_n_0,
      CO(3) => C_reg_i_3_n_0,
      CO(2) => C_reg_i_3_n_1,
      CO(1) => C_reg_i_3_n_2,
      CO(0) => C_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 2) => A_0(8 downto 7),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => A(8 downto 5),
      S(3) => C_reg_i_14_n_0,
      S(2) => C_reg_i_15_n_0,
      S(1 downto 0) => A_0(6 downto 5)
    );
C_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => C_reg_i_4_n_0,
      CO(2) => C_reg_i_4_n_1,
      CO(1) => C_reg_i_4_n_2,
      CO(0) => C_reg_i_4_n_3,
      CYINIT => A_0(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => A(4 downto 1),
      S(3 downto 0) => A_0(4 downto 1)
    );
C_reg_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(0),
      O => A(0)
    );
C_reg_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(16),
      O => C_reg_i_6_n_0
    );
C_reg_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(15),
      O => C_reg_i_7_n_0
    );
C_reg_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(14),
      O => C_reg_i_8_n_0
    );
C_reg_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A_0(13),
      O => C_reg_i_9_n_0
    );
\Dout[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"017F"
    )
        port map (
      I0 => State(0),
      I1 => State(3),
      I2 => State(1),
      I3 => State(2),
      O => \Dout[14]_i_1_n_0\
    );
\Dout[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBFFF"
    )
        port map (
      I0 => C(15),
      I1 => State(0),
      I2 => State(3),
      I3 => State(1),
      I4 => State(2),
      O => \Dout[15]_i_1_n_0\
    );
\Dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(0),
      Q => Dout(0),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(10),
      Q => Dout(10),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(11),
      Q => Dout(11),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(12),
      Q => Dout(12),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(13),
      Q => Dout(13),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(14),
      Q => Dout(14),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Dout[15]_i_1_n_0\,
      Q => Dout(15),
      R => '0'
    );
\Dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(1),
      Q => Dout(1),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(2),
      Q => Dout(2),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(3),
      Q => Dout(3),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(4),
      Q => Dout(4),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(5),
      Q => Dout(5),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(6),
      Q => Dout(6),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(7),
      Q => Dout(7),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(8),
      Q => Dout(8),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(9),
      Q => Dout(9),
      R => \Dout[14]_i_1_n_0\
    );
\FolState1_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FolState1_inferred__2/i__carry_n_0\,
      CO(2) => \FolState1_inferred__2/i__carry_n_1\,
      CO(1) => \FolState1_inferred__2/i__carry_n_2\,
      CO(0) => \FolState1_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_FolState1_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\FolState1_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \FolState1_inferred__2/i__carry_n_0\,
      CO(3 downto 1) => \NLW_FolState1_inferred__2/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \FolState1_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_reg__0\(8),
      O(3 downto 0) => \NLW_FolState1_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1_n_0\
    );
FolState2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FolState2_carry_n_0,
      CO(2) => FolState2_carry_n_1,
      CO(1) => FolState2_carry_n_2,
      CO(0) => FolState2_carry_n_3,
      CYINIT => '1',
      DI(3) => FolState2_carry_i_1_n_0,
      DI(2) => FolState2_carry_i_2_n_0,
      DI(1) => FolState2_carry_i_3_n_0,
      DI(0) => FolState2_carry_i_4_n_0,
      O(3 downto 0) => NLW_FolState2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => FolState2_carry_i_5_n_0,
      S(2) => FolState2_carry_i_6_n_0,
      S(1) => FolState2_carry_i_7_n_0,
      S(0) => FolState2_carry_i_8_n_0
    );
\FolState2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => FolState2_carry_n_0,
      CO(3 downto 1) => \NLW_FolState2_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => FolState25_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_reg__0\(8),
      O(3 downto 0) => \NLW_FolState2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \FolState2_carry__0_i_1__0_n_0\
    );
\FolState2_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(8),
      O => \FolState2_carry__0_i_1__0_n_0\
    );
FolState2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => FolState2_carry_0(6),
      I2 => FolState2_carry_0(7),
      I3 => \counter_reg__0\(7),
      O => FolState2_carry_i_1_n_0
    );
FolState2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => FolState2_carry_0(4),
      I2 => FolState2_carry_0(5),
      I3 => \counter_reg__0\(5),
      O => FolState2_carry_i_2_n_0
    );
FolState2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => FolState2_carry_0(2),
      I2 => FolState2_carry_0(3),
      I3 => \counter_reg__0\(3),
      O => FolState2_carry_i_3_n_0
    );
FolState2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => FolState2_carry_0(0),
      I2 => FolState2_carry_0(1),
      I3 => \counter_reg__0\(1),
      O => FolState2_carry_i_4_n_0
    );
FolState2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => FolState2_carry_0(6),
      I2 => \counter_reg__0\(7),
      I3 => FolState2_carry_0(7),
      O => FolState2_carry_i_5_n_0
    );
FolState2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => FolState2_carry_0(4),
      I2 => \counter_reg__0\(5),
      I3 => FolState2_carry_0(5),
      O => FolState2_carry_i_6_n_0
    );
FolState2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => FolState2_carry_0(2),
      I2 => \counter_reg__0\(3),
      I3 => FolState2_carry_0(3),
      O => FolState2_carry_i_7_n_0
    );
FolState2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => FolState2_carry_0(0),
      I2 => \counter_reg__0\(1),
      I3 => FolState2_carry_0(1),
      O => FolState2_carry_i_8_n_0
    );
Interface: entity work.\SPI_Master__1\
     port map (
      MOSI => MOSI,
      SCLK => SCLK,
      SS => SS,
      TX_Data(15 downto 0) => Dout(15 downto 0),
      TX_Done => TX_Done,
      TX_Start => Interface_i_1_n_0,
      clk => CLK_IBUF_BUFG
    );
Interface_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => State(0),
      I1 => State(2),
      I2 => State(3),
      O => Interface_i_1_n_0
    );
\MemArray[0].MemoryX\: entity work.Memory_3
     port map (
      Addr0 => Addr0,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CO(0) => FolState25_in,
      ChanAddressReg => ChanAddressReg,
      D(2 downto 0) => FolState(3 downto 1),
      DIADI(7) => \MemArray[1].MemoryX_n_0\,
      DIADI(6) => \MemArray[1].MemoryX_n_1\,
      DIADI(5) => \MemArray[1].MemoryX_n_2\,
      DIADI(4) => \MemArray[1].MemoryX_n_3\,
      DIADI(3) => \MemArray[1].MemoryX_n_4\,
      DIADI(2) => \MemArray[1].MemoryX_n_5\,
      DIADI(1) => \MemArray[1].MemoryX_n_6\,
      DIADI(0) => \MemArray[1].MemoryX_n_7\,
      DOBDO(7) => \MemArray[0].MemoryX_n_0\,
      DOBDO(6) => \MemArray[0].MemoryX_n_1\,
      DOBDO(5) => \MemArray[0].MemoryX_n_2\,
      DOBDO(4) => \MemArray[0].MemoryX_n_3\,
      DOBDO(3) => \MemArray[0].MemoryX_n_4\,
      DOBDO(2) => \MemArray[0].MemoryX_n_5\,
      DOBDO(1) => \MemArray[0].MemoryX_n_6\,
      DOBDO(0) => \MemArray[0].MemoryX_n_7\,
      EnWrite_IBUF => EnWrite_IBUF,
      NullflagA(0) => NullflagA(0),
      Q(3 downto 0) => State(3 downto 0),
      SR(0) => clear,
      \State_reg[1]\ => \State[1]_i_3_n_0\,
      \State_reg[1]_0\ => \WaveIDZ[0]_i_2__0_n_0\,
      \State_reg[2]\ => \State[2]_i_2_n_0\,
      \State_reg[3]\(0) => NullflagA(1),
      TX_Done => TX_Done,
      WEA(0) => p_1_in,
      WaveID => WaveID,
      \WriteMem__1\ => \WriteMem__1\,
      Write_IBUF => Write_IBUF,
      Write_Z1_reg_0 => \MemArray[1].MemoryX_n_12\,
      loadReg0_reg_0 => \MemArray[0].MemoryX_n_13\,
      rdcnt0 => rdcnt0
    );
\MemArray[1].MemoryX\: entity work.Memory_4
     port map (
      Addr0 => Addr0,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      D(0) => FolState(0),
      DIADI(7) => \MemArray[1].MemoryX_n_0\,
      DIADI(6) => \MemArray[1].MemoryX_n_1\,
      DIADI(5) => \MemArray[1].MemoryX_n_2\,
      DIADI(4) => \MemArray[1].MemoryX_n_3\,
      DIADI(3) => \MemArray[1].MemoryX_n_4\,
      DIADI(2) => \MemArray[1].MemoryX_n_5\,
      DIADI(1) => \MemArray[1].MemoryX_n_6\,
      DIADI(0) => \MemArray[1].MemoryX_n_7\,
      DOBDO(7) => \MemArray[0].MemoryX_n_0\,
      DOBDO(6) => \MemArray[0].MemoryX_n_1\,
      DOBDO(5) => \MemArray[0].MemoryX_n_2\,
      DOBDO(4) => \MemArray[0].MemoryX_n_3\,
      DOBDO(3) => \MemArray[0].MemoryX_n_4\,
      DOBDO(2) => \MemArray[0].MemoryX_n_5\,
      DOBDO(1) => \MemArray[0].MemoryX_n_6\,
      DOBDO(0) => \MemArray[0].MemoryX_n_7\,
      Din_IBUF(7 downto 0) => Din_IBUF(7 downto 0),
      NullflagA(0) => NullflagA(0),
      Nullflag_reg_0(0) => NullflagA(1),
      Q(3 downto 0) => State(3 downto 0),
      SR(0) => clear,
      \State_reg[0]\ => \MemArray[1].MemoryX_n_12\,
      \State_reg[0]_0\ => \State[0]_i_3_n_0\,
      \State_reg[0]_1\ => \State[0]_i_4_n_0\,
      TX_Done => TX_Done,
      WEA(0) => p_1_in,
      WaveID => WaveID,
      \WriteMem__1\ => \WriteMem__1\,
      Write_IBUF => Write_IBUF,
      memory_reg_0(7) => \MemArray[1].MemoryX_n_14\,
      memory_reg_0(6) => \MemArray[1].MemoryX_n_15\,
      memory_reg_0(5) => \MemArray[1].MemoryX_n_16\,
      memory_reg_0(4) => \MemArray[1].MemoryX_n_17\,
      memory_reg_0(3) => \MemArray[1].MemoryX_n_18\,
      memory_reg_0(2) => \MemArray[1].MemoryX_n_19\,
      memory_reg_0(1) => \MemArray[1].MemoryX_n_20\,
      memory_reg_0(0) => \MemArray[1].MemoryX_n_21\,
      memory_reg_1 => \MemArray[0].MemoryX_n_13\,
      rdcnt0 => rdcnt0
    );
\State[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4747774777777777"
    )
        port map (
      I0 => \State[2]_i_2_n_0\,
      I1 => State(1),
      I2 => \FolState1_inferred__2/i__carry__0_n_3\,
      I3 => EnWrite_IBUF,
      I4 => ChanAddressReg,
      I5 => State(0),
      O => \State[0]_i_3_n_0\
    );
\State[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB8BB8BBB8BBB"
    )
        port map (
      I0 => \State_reg[0]_i_5_n_0\,
      I1 => State(2),
      I2 => State(1),
      I3 => State(0),
      I4 => ChanAddressReg,
      I5 => EnWrite_IBUF,
      O => \State[0]_i_4_n_0\
    );
\State[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAFEFFFFAAFE"
    )
        port map (
      I0 => State(0),
      I1 => trig_all_IBUF,
      I2 => trig_CH_IBUF(0),
      I3 => trigZ1,
      I4 => EnWrite_IBUF,
      I5 => ChanAddressReg,
      O => \State[0]_i_6_n_0\
    );
\State[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => TX_Done,
      I1 => State(0),
      O => \State[0]_i_7_n_0\
    );
\State[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA10BF10BA10BA10"
    )
        port map (
      I0 => State(2),
      I1 => \State[2]_i_2_n_0\,
      I2 => State(1),
      I3 => State(0),
      I4 => \WaveIDZ[0]_i_2__0_n_0\,
      I5 => \FolState1_inferred__2/i__carry__0_n_3\,
      O => \State[1]_i_3_n_0\
    );
\State[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => State(0),
      I1 => \State[2]_i_4_n_0\,
      I2 => \counter_reg__0\(3),
      I3 => \counter_reg__0\(2),
      I4 => \counter_reg__0\(5),
      I5 => \counter_reg__0\(4),
      O => \State[2]_i_2_n_0\
    );
\State[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg__0\(7),
      I1 => \counter_reg__0\(6),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(8),
      O => \State[2]_i_4_n_0\
    );
\State[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RESET_IBUF,
      I1 => ChanAddressReg,
      I2 => RESET_CH_IBUF,
      O => mux1_out(0)
    );
\State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FolState(0),
      Q => State(0),
      R => mux1_out(0)
    );
\State_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \State[0]_i_6_n_0\,
      I1 => \State[0]_i_7_n_0\,
      O => \State_reg[0]_i_5_n_0\,
      S => State(1)
    );
\State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FolState(1),
      Q => State(1),
      R => mux1_out(0)
    );
\State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FolState(2),
      Q => State(2),
      R => mux1_out(0)
    );
\State_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FolState(3),
      Q => State(3),
      R => mux1_out(0)
    );
\WaveIDZ[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B888"
    )
        port map (
      I0 => \WaveAdressA[0]\,
      I1 => \WaveIDZ[0]_i_2__0_n_0\,
      I2 => State(3),
      I3 => State(2),
      I4 => State(0),
      I5 => State(1),
      O => \WaveIDZ[0]_i_1_n_0\
    );
\WaveIDZ[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EnWrite_IBUF,
      I1 => ChanAddressReg,
      O => \WaveIDZ[0]_i_2__0_n_0\
    );
\WaveIDZ_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \WaveIDZ[0]_i_1_n_0\,
      Q => WaveIDZ,
      R => '0'
    );
\WaveID_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => WaveIDZ,
      Q => WaveID,
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => p_0_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(2),
      I4 => \counter_reg__0\(4),
      I5 => \counter_reg__0\(5),
      O => p_0_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter[8]_i_3_n_0\,
      I1 => \counter_reg__0\(6),
      O => p_0_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter[8]_i_3_n_0\,
      I1 => \counter_reg__0\(6),
      I2 => \counter_reg__0\(7),
      O => p_0_in(7)
    );
\counter[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A55B"
    )
        port map (
      I0 => State(3),
      I1 => State(1),
      I2 => State(2),
      I3 => State(0),
      O => \counter[8]_i_1__0_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => \counter[8]_i_3_n_0\,
      I2 => \counter_reg__0\(7),
      I3 => \counter_reg__0\(8),
      O => p_0_in(8)
    );
\counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_reg__0\(5),
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => \counter_reg__0\(2),
      I5 => \counter_reg__0\(4),
      O => \counter[8]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(0),
      Q => \counter_reg__0\(0),
      R => \counter[8]_i_1__0_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(1),
      Q => \counter_reg__0\(1),
      R => \counter[8]_i_1__0_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(2),
      Q => \counter_reg__0\(2),
      R => \counter[8]_i_1__0_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(3),
      Q => \counter_reg__0\(3),
      R => \counter[8]_i_1__0_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(4),
      Q => \counter_reg__0\(4),
      R => \counter[8]_i_1__0_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(5),
      Q => \counter_reg__0\(5),
      R => \counter[8]_i_1__0_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(6),
      Q => \counter_reg__0\(6),
      R => \counter[8]_i_1__0_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(7),
      Q => \counter_reg__0\(7),
      R => \counter[8]_i_1__0_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(8),
      Q => \counter_reg__0\(8),
      R => \counter[8]_i_1__0_n_0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(16)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(15)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(14)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(13)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(12)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(11)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(10)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(9)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A_0(8)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => Q(6),
      I2 => Q(7),
      I3 => \counter_reg__0\(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => Q(4),
      I2 => Q(5),
      I3 => \counter_reg__0\(5),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \counter_reg__0\(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \counter_reg__0\(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => Q(6),
      I2 => \counter_reg__0\(7),
      I3 => Q(7),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => Q(4),
      I2 => \counter_reg__0\(5),
      I3 => Q(5),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => Q(2),
      I2 => \counter_reg__0\(3),
      I3 => Q(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => Q(0),
      I2 => \counter_reg__0\(1),
      I3 => Q(1),
      O => \i__carry_i_8__0_n_0\
    );
trigZ1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => trig_CH_IBUF(0),
      I1 => trig_all_IBUF,
      O => trig
    );
trigZ1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => trig,
      Q => trigZ1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Channel_1 is
  port (
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SS : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    ChanAddressReg : in STD_LOGIC;
    EnWrite_IBUF : in STD_LOGIC;
    trig_all_IBUF : in STD_LOGIC;
    trig_CH_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FolState2_carry_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Din_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write_IBUF : in STD_LOGIC;
    \WaveAdressA[1]\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    RESET_CH_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Channel_1 : entity is "Channel";
end Channel_1;

architecture STRUCTURE of Channel_1 is
  signal A : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of A : signal is std.standard.true;
  signal \A[7]_i_1__0_n_0\ : STD_LOGIC;
  signal Addr0 : STD_LOGIC;
  signal \Addr0_i_1__0_n_0\ : STD_LOGIC;
  signal B : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG of B : signal is std.standard.true;
  signal C : STD_LOGIC_VECTOR ( 33 downto 0 );
  attribute MARK_DEBUG of C : signal is std.standard.true;
  signal C_reg_i_10_n_0 : STD_LOGIC;
  signal C_reg_i_11_n_0 : STD_LOGIC;
  signal C_reg_i_12_n_0 : STD_LOGIC;
  signal C_reg_i_13_n_0 : STD_LOGIC;
  signal C_reg_i_14_n_0 : STD_LOGIC;
  signal C_reg_i_15_n_0 : STD_LOGIC;
  signal C_reg_i_1_n_1 : STD_LOGIC;
  signal C_reg_i_1_n_2 : STD_LOGIC;
  signal C_reg_i_1_n_3 : STD_LOGIC;
  signal C_reg_i_1_n_4 : STD_LOGIC;
  signal C_reg_i_1_n_5 : STD_LOGIC;
  signal C_reg_i_1_n_6 : STD_LOGIC;
  signal C_reg_i_1_n_7 : STD_LOGIC;
  signal C_reg_i_2_n_0 : STD_LOGIC;
  signal C_reg_i_2_n_1 : STD_LOGIC;
  signal C_reg_i_2_n_2 : STD_LOGIC;
  signal C_reg_i_2_n_3 : STD_LOGIC;
  signal C_reg_i_2_n_4 : STD_LOGIC;
  signal C_reg_i_2_n_5 : STD_LOGIC;
  signal C_reg_i_2_n_6 : STD_LOGIC;
  signal C_reg_i_2_n_7 : STD_LOGIC;
  signal C_reg_i_3_n_0 : STD_LOGIC;
  signal C_reg_i_3_n_1 : STD_LOGIC;
  signal C_reg_i_3_n_2 : STD_LOGIC;
  signal C_reg_i_3_n_3 : STD_LOGIC;
  signal C_reg_i_3_n_4 : STD_LOGIC;
  signal C_reg_i_3_n_5 : STD_LOGIC;
  signal C_reg_i_3_n_6 : STD_LOGIC;
  signal C_reg_i_3_n_7 : STD_LOGIC;
  signal C_reg_i_4_n_0 : STD_LOGIC;
  signal C_reg_i_4_n_1 : STD_LOGIC;
  signal C_reg_i_4_n_2 : STD_LOGIC;
  signal C_reg_i_4_n_3 : STD_LOGIC;
  signal C_reg_i_4_n_4 : STD_LOGIC;
  signal C_reg_i_4_n_5 : STD_LOGIC;
  signal C_reg_i_4_n_6 : STD_LOGIC;
  signal C_reg_i_4_n_7 : STD_LOGIC;
  signal C_reg_i_5_n_0 : STD_LOGIC;
  signal C_reg_i_6_n_0 : STD_LOGIC;
  signal C_reg_i_7_n_0 : STD_LOGIC;
  signal C_reg_i_8_n_0 : STD_LOGIC;
  signal C_reg_i_9_n_0 : STD_LOGIC;
  signal Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of Dout : signal is std.standard.true;
  signal \Dout[14]_i_1_n_0\ : STD_LOGIC;
  signal \Dout[15]_i_1__0_n_0\ : STD_LOGIC;
  signal FolState : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FolState1_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal FolState25_in : STD_LOGIC;
  signal \FolState2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \FolState2_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \FolState2_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \FolState2_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \FolState2_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \FolState2_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \FolState2_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \FolState2_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \FolState2_carry_i_8__0_n_0\ : STD_LOGIC;
  signal FolState2_carry_n_0 : STD_LOGIC;
  signal FolState2_carry_n_1 : STD_LOGIC;
  signal FolState2_carry_n_2 : STD_LOGIC;
  signal FolState2_carry_n_3 : STD_LOGIC;
  signal \Interface_i_1__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_1\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_13\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_2\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_3\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_4\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_5\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_6\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_7\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_0\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_1\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_12\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_14\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_15\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_16\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_17\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_18\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_19\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_2\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_20\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_21\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_3\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_4\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_5\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_6\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_7\ : STD_LOGIC;
  signal NullflagA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal State : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \State[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \State[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \State[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \State[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \State[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \State[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \State[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \State_reg[0]_i_5__0_n_0\ : STD_LOGIC;
  signal TX_Done : STD_LOGIC;
  signal WaveID : STD_LOGIC;
  signal \WaveIDZ[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \WaveIDZ_reg_n_0_[0]\ : STD_LOGIC;
  signal \WriteMem__1\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal mux1_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal mux4_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal rdcnt0 : STD_LOGIC;
  signal trig0_out : STD_LOGIC;
  signal trigZ1 : STD_LOGIC;
  signal NLW_C_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_C_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_C_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_C_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_C_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_C_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FolState1_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FolState1_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FolState1_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_FolState2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FolState2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FolState2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \A_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \A_reg[0]\ : label is "true";
  attribute KEEP of \A_reg[1]\ : label is "yes";
  attribute mark_debug_string of \A_reg[1]\ : label is "true";
  attribute KEEP of \A_reg[2]\ : label is "yes";
  attribute mark_debug_string of \A_reg[2]\ : label is "true";
  attribute KEEP of \A_reg[3]\ : label is "yes";
  attribute mark_debug_string of \A_reg[3]\ : label is "true";
  attribute KEEP of \A_reg[4]\ : label is "yes";
  attribute mark_debug_string of \A_reg[4]\ : label is "true";
  attribute KEEP of \A_reg[5]\ : label is "yes";
  attribute mark_debug_string of \A_reg[5]\ : label is "true";
  attribute KEEP of \A_reg[6]\ : label is "yes";
  attribute mark_debug_string of \A_reg[6]\ : label is "true";
  attribute KEEP of \A_reg[7]\ : label is "yes";
  attribute mark_debug_string of \A_reg[7]\ : label is "true";
  attribute KEEP of \B_reg[0]\ : label is "yes";
  attribute mark_debug_string of \B_reg[0]\ : label is "true";
  attribute KEEP of \B_reg[10]\ : label is "yes";
  attribute mark_debug_string of \B_reg[10]\ : label is "true";
  attribute KEEP of \B_reg[11]\ : label is "yes";
  attribute mark_debug_string of \B_reg[11]\ : label is "true";
  attribute KEEP of \B_reg[12]\ : label is "yes";
  attribute mark_debug_string of \B_reg[12]\ : label is "true";
  attribute KEEP of \B_reg[13]\ : label is "yes";
  attribute mark_debug_string of \B_reg[13]\ : label is "true";
  attribute KEEP of \B_reg[14]\ : label is "yes";
  attribute mark_debug_string of \B_reg[14]\ : label is "true";
  attribute KEEP of \B_reg[15]\ : label is "yes";
  attribute mark_debug_string of \B_reg[15]\ : label is "true";
  attribute KEEP of \B_reg[16]\ : label is "yes";
  attribute mark_debug_string of \B_reg[16]\ : label is "true";
  attribute KEEP of \B_reg[1]\ : label is "yes";
  attribute mark_debug_string of \B_reg[1]\ : label is "true";
  attribute KEEP of \B_reg[2]\ : label is "yes";
  attribute mark_debug_string of \B_reg[2]\ : label is "true";
  attribute KEEP of \B_reg[3]\ : label is "yes";
  attribute mark_debug_string of \B_reg[3]\ : label is "true";
  attribute KEEP of \B_reg[4]\ : label is "yes";
  attribute mark_debug_string of \B_reg[4]\ : label is "true";
  attribute KEEP of \B_reg[5]\ : label is "yes";
  attribute mark_debug_string of \B_reg[5]\ : label is "true";
  attribute KEEP of \B_reg[6]\ : label is "yes";
  attribute mark_debug_string of \B_reg[6]\ : label is "true";
  attribute KEEP of \B_reg[7]\ : label is "yes";
  attribute mark_debug_string of \B_reg[7]\ : label is "true";
  attribute KEEP of \B_reg[8]\ : label is "yes";
  attribute mark_debug_string of \B_reg[8]\ : label is "true";
  attribute KEEP of \B_reg[9]\ : label is "yes";
  attribute mark_debug_string of \B_reg[9]\ : label is "true";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of C_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute KEEP of \Dout_reg[0]\ : label is "yes";
  attribute KEEP of \Dout_reg[10]\ : label is "yes";
  attribute KEEP of \Dout_reg[11]\ : label is "yes";
  attribute KEEP of \Dout_reg[12]\ : label is "yes";
  attribute KEEP of \Dout_reg[13]\ : label is "yes";
  attribute KEEP of \Dout_reg[14]\ : label is "yes";
  attribute KEEP of \Dout_reg[15]\ : label is "yes";
  attribute KEEP of \Dout_reg[1]\ : label is "yes";
  attribute KEEP of \Dout_reg[2]\ : label is "yes";
  attribute KEEP of \Dout_reg[3]\ : label is "yes";
  attribute KEEP of \Dout_reg[4]\ : label is "yes";
  attribute KEEP of \Dout_reg[5]\ : label is "yes";
  attribute KEEP of \Dout_reg[6]\ : label is "yes";
  attribute KEEP of \Dout_reg[7]\ : label is "yes";
  attribute KEEP of \Dout_reg[8]\ : label is "yes";
  attribute KEEP of \Dout_reg[9]\ : label is "yes";
  attribute Laenge : integer;
  attribute Laenge of Interface : label is 16;
  attribute Quarz_Taktfrequenz : integer;
  attribute Quarz_Taktfrequenz of Interface : label is 100000000;
  attribute SPI_Taktfrequenz : integer;
  attribute SPI_Taktfrequenz of Interface : label is 25000000;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \State[2]_i_4__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \counter[3]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \counter[4]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \counter[6]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \counter[7]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \counter[8]_i_2__0\ : label is "soft_lutpair55";
begin
\A[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA8"
    )
        port map (
      I0 => State(2),
      I1 => State(1),
      I2 => State(3),
      I3 => State(0),
      O => \A[7]_i_1__0_n_0\
    );
\A_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => \MemArray[1].MemoryX_n_21\,
      Q => A(0),
      R => '0'
    );
\A_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => \MemArray[1].MemoryX_n_20\,
      Q => A(1),
      R => '0'
    );
\A_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => \MemArray[1].MemoryX_n_19\,
      Q => A(2),
      R => '0'
    );
\A_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => \MemArray[1].MemoryX_n_18\,
      Q => A(3),
      R => '0'
    );
\A_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => \MemArray[1].MemoryX_n_17\,
      Q => A(4),
      R => '0'
    );
\A_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => \MemArray[1].MemoryX_n_16\,
      Q => A(5),
      R => '0'
    );
\A_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => \MemArray[1].MemoryX_n_15\,
      Q => A(6),
      R => '0'
    );
\A_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => \MemArray[1].MemoryX_n_14\,
      Q => A(7),
      R => '0'
    );
\Addr0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666F6666F666"
    )
        port map (
      I0 => WaveID,
      I1 => \WaveIDZ_reg_n_0_[0]\,
      I2 => State(0),
      I3 => State(3),
      I4 => State(1),
      I5 => State(2),
      O => \Addr0_i_1__0_n_0\
    );
Addr0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Addr0_i_1__0_n_0\,
      Q => Addr0,
      R => '0'
    );
\B_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => '0',
      Q => B(0),
      R => '0'
    );
\B_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(10),
      R => '0'
    );
\B_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(11),
      R => '0'
    );
\B_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(12),
      R => '0'
    );
\B_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(13),
      R => '0'
    );
\B_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(14),
      R => '0'
    );
\B_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(15),
      R => '0'
    );
\B_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(16),
      R => '0'
    );
\B_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => '0',
      Q => B(1),
      R => '0'
    );
\B_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => '0',
      Q => B(2),
      R => '0'
    );
\B_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => '0',
      Q => B(3),
      R => '0'
    );
\B_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(0),
      Q => B(4),
      R => '0'
    );
\B_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(1),
      Q => B(5),
      R => '0'
    );
\B_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(2),
      Q => B(6),
      R => '0'
    );
\B_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(3),
      Q => B(7),
      R => '0'
    );
\B_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(8),
      R => '0'
    );
\B_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \A[7]_i_1__0_n_0\,
      D => D(4),
      Q => B(9),
      R => '0'
    );
C_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => C_reg_i_1_n_4,
      A(28) => C_reg_i_1_n_4,
      A(27) => C_reg_i_1_n_4,
      A(26) => C_reg_i_1_n_4,
      A(25) => C_reg_i_1_n_4,
      A(24) => C_reg_i_1_n_4,
      A(23) => C_reg_i_1_n_4,
      A(22) => C_reg_i_1_n_4,
      A(21) => C_reg_i_1_n_4,
      A(20) => C_reg_i_1_n_4,
      A(19) => C_reg_i_1_n_4,
      A(18) => C_reg_i_1_n_4,
      A(17) => C_reg_i_1_n_4,
      A(16) => C_reg_i_1_n_4,
      A(15) => C_reg_i_1_n_5,
      A(14) => C_reg_i_1_n_6,
      A(13) => C_reg_i_1_n_7,
      A(12) => C_reg_i_2_n_4,
      A(11) => C_reg_i_2_n_5,
      A(10) => C_reg_i_2_n_6,
      A(9) => C_reg_i_2_n_7,
      A(8) => C_reg_i_3_n_4,
      A(7) => C_reg_i_3_n_5,
      A(6) => C_reg_i_3_n_6,
      A(5) => C_reg_i_3_n_7,
      A(4) => C_reg_i_4_n_4,
      A(3) => C_reg_i_4_n_5,
      A(2) => C_reg_i_4_n_6,
      A(1) => C_reg_i_4_n_7,
      A(0) => C_reg_i_5_n_0,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_C_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(16),
      B(16 downto 0) => B(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_C_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000001000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_C_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_C_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \A[7]_i_1__0_n_0\,
      CLK => CLK_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_C_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_C_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_C_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => C(33 downto 0),
      PATTERNBDETECT => NLW_C_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_C_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_C_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_C_reg_UNDERFLOW_UNCONNECTED
    );
C_reg_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => C_reg_i_2_n_0,
      CO(3) => NLW_C_reg_i_1_CO_UNCONNECTED(3),
      CO(2) => C_reg_i_1_n_1,
      CO(1) => C_reg_i_1_n_2,
      CO(0) => C_reg_i_1_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A(15 downto 13),
      O(3) => C_reg_i_1_n_4,
      O(2) => C_reg_i_1_n_5,
      O(1) => C_reg_i_1_n_6,
      O(0) => C_reg_i_1_n_7,
      S(3) => C_reg_i_6_n_0,
      S(2) => C_reg_i_7_n_0,
      S(1) => C_reg_i_8_n_0,
      S(0) => C_reg_i_9_n_0
    );
C_reg_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(12),
      O => C_reg_i_10_n_0
    );
C_reg_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(11),
      O => C_reg_i_11_n_0
    );
C_reg_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(10),
      O => C_reg_i_12_n_0
    );
C_reg_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(9),
      O => C_reg_i_13_n_0
    );
C_reg_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(8),
      O => C_reg_i_14_n_0
    );
C_reg_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(7),
      O => C_reg_i_15_n_0
    );
C_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => C_reg_i_3_n_0,
      CO(3) => C_reg_i_2_n_0,
      CO(2) => C_reg_i_2_n_1,
      CO(1) => C_reg_i_2_n_2,
      CO(0) => C_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => A(12 downto 9),
      O(3) => C_reg_i_2_n_4,
      O(2) => C_reg_i_2_n_5,
      O(1) => C_reg_i_2_n_6,
      O(0) => C_reg_i_2_n_7,
      S(3) => C_reg_i_10_n_0,
      S(2) => C_reg_i_11_n_0,
      S(1) => C_reg_i_12_n_0,
      S(0) => C_reg_i_13_n_0
    );
C_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => C_reg_i_4_n_0,
      CO(3) => C_reg_i_3_n_0,
      CO(2) => C_reg_i_3_n_1,
      CO(1) => C_reg_i_3_n_2,
      CO(0) => C_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 2) => A(8 downto 7),
      DI(1 downto 0) => B"00",
      O(3) => C_reg_i_3_n_4,
      O(2) => C_reg_i_3_n_5,
      O(1) => C_reg_i_3_n_6,
      O(0) => C_reg_i_3_n_7,
      S(3) => C_reg_i_14_n_0,
      S(2) => C_reg_i_15_n_0,
      S(1 downto 0) => A(6 downto 5)
    );
C_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => C_reg_i_4_n_0,
      CO(2) => C_reg_i_4_n_1,
      CO(1) => C_reg_i_4_n_2,
      CO(0) => C_reg_i_4_n_3,
      CYINIT => A(0),
      DI(3 downto 0) => B"0000",
      O(3) => C_reg_i_4_n_4,
      O(2) => C_reg_i_4_n_5,
      O(1) => C_reg_i_4_n_6,
      O(0) => C_reg_i_4_n_7,
      S(3 downto 0) => A(4 downto 1)
    );
C_reg_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(0),
      O => C_reg_i_5_n_0
    );
C_reg_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(16),
      O => C_reg_i_6_n_0
    );
C_reg_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(15),
      O => C_reg_i_7_n_0
    );
C_reg_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(14),
      O => C_reg_i_8_n_0
    );
C_reg_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(13),
      O => C_reg_i_9_n_0
    );
\Dout[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"017F"
    )
        port map (
      I0 => State(0),
      I1 => State(3),
      I2 => State(1),
      I3 => State(2),
      O => \Dout[14]_i_1_n_0\
    );
\Dout[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBFFF"
    )
        port map (
      I0 => C(15),
      I1 => State(0),
      I2 => State(3),
      I3 => State(1),
      I4 => State(2),
      O => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(0),
      Q => Dout(0),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(10),
      Q => Dout(10),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(11),
      Q => Dout(11),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(12),
      Q => Dout(12),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(13),
      Q => Dout(13),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(14),
      Q => Dout(14),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Dout[15]_i_1__0_n_0\,
      Q => Dout(15),
      R => '0'
    );
\Dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(1),
      Q => Dout(1),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(2),
      Q => Dout(2),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(3),
      Q => Dout(3),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(4),
      Q => Dout(4),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(5),
      Q => Dout(5),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(6),
      Q => Dout(6),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(7),
      Q => Dout(7),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(8),
      Q => Dout(8),
      R => \Dout[14]_i_1_n_0\
    );
\Dout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C(9),
      Q => Dout(9),
      R => \Dout[14]_i_1_n_0\
    );
\FolState1_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FolState1_inferred__2/i__carry_n_0\,
      CO(2) => \FolState1_inferred__2/i__carry_n_1\,
      CO(1) => \FolState1_inferred__2/i__carry_n_2\,
      CO(0) => \FolState1_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__6_n_0\,
      DI(2) => \i__carry_i_2__6_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_FolState1_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__6_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__2_n_0\
    );
\FolState1_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \FolState1_inferred__2/i__carry_n_0\,
      CO(3 downto 1) => \NLW_FolState1_inferred__2/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \FolState1_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_reg__0\(8),
      O(3 downto 0) => \NLW_FolState1_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__0_n_0\
    );
FolState2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FolState2_carry_n_0,
      CO(2) => FolState2_carry_n_1,
      CO(1) => FolState2_carry_n_2,
      CO(0) => FolState2_carry_n_3,
      CYINIT => '1',
      DI(3) => \FolState2_carry_i_1__0_n_0\,
      DI(2) => \FolState2_carry_i_2__0_n_0\,
      DI(1) => \FolState2_carry_i_3__0_n_0\,
      DI(0) => \FolState2_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_FolState2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \FolState2_carry_i_5__0_n_0\,
      S(2) => \FolState2_carry_i_6__0_n_0\,
      S(1) => \FolState2_carry_i_7__0_n_0\,
      S(0) => \FolState2_carry_i_8__0_n_0\
    );
\FolState2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => FolState2_carry_n_0,
      CO(3 downto 1) => \NLW_FolState2_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => FolState25_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_reg__0\(8),
      O(3 downto 0) => \NLW_FolState2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \FolState2_carry__0_i_1_n_0\
    );
\FolState2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(8),
      O => \FolState2_carry__0_i_1_n_0\
    );
\FolState2_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => FolState2_carry_0(6),
      I2 => FolState2_carry_0(7),
      I3 => \counter_reg__0\(7),
      O => \FolState2_carry_i_1__0_n_0\
    );
\FolState2_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => FolState2_carry_0(4),
      I2 => FolState2_carry_0(5),
      I3 => \counter_reg__0\(5),
      O => \FolState2_carry_i_2__0_n_0\
    );
\FolState2_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => FolState2_carry_0(2),
      I2 => FolState2_carry_0(3),
      I3 => \counter_reg__0\(3),
      O => \FolState2_carry_i_3__0_n_0\
    );
\FolState2_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => FolState2_carry_0(0),
      I2 => FolState2_carry_0(1),
      I3 => \counter_reg__0\(1),
      O => \FolState2_carry_i_4__0_n_0\
    );
\FolState2_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => FolState2_carry_0(6),
      I2 => \counter_reg__0\(7),
      I3 => FolState2_carry_0(7),
      O => \FolState2_carry_i_5__0_n_0\
    );
\FolState2_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => FolState2_carry_0(4),
      I2 => \counter_reg__0\(5),
      I3 => FolState2_carry_0(5),
      O => \FolState2_carry_i_6__0_n_0\
    );
\FolState2_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => FolState2_carry_0(2),
      I2 => \counter_reg__0\(3),
      I3 => FolState2_carry_0(3),
      O => \FolState2_carry_i_7__0_n_0\
    );
\FolState2_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => FolState2_carry_0(0),
      I2 => \counter_reg__0\(1),
      I3 => FolState2_carry_0(1),
      O => \FolState2_carry_i_8__0_n_0\
    );
Interface: entity work.SPI_Master
     port map (
      MOSI => MOSI,
      SCLK => SCLK,
      SS => SS,
      TX_Data(15 downto 0) => Dout(15 downto 0),
      TX_Done => TX_Done,
      TX_Start => \Interface_i_1__0_n_0\,
      clk => CLK_IBUF_BUFG
    );
\Interface_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => State(0),
      I1 => State(2),
      I2 => State(3),
      O => \Interface_i_1__0_n_0\
    );
\MemArray[0].MemoryX\: entity work.Memory
     port map (
      Addr0 => Addr0,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CO(0) => FolState25_in,
      ChanAddressReg => ChanAddressReg,
      D(2 downto 0) => FolState(3 downto 1),
      DIADI(7) => \MemArray[1].MemoryX_n_0\,
      DIADI(6) => \MemArray[1].MemoryX_n_1\,
      DIADI(5) => \MemArray[1].MemoryX_n_2\,
      DIADI(4) => \MemArray[1].MemoryX_n_3\,
      DIADI(3) => \MemArray[1].MemoryX_n_4\,
      DIADI(2) => \MemArray[1].MemoryX_n_5\,
      DIADI(1) => \MemArray[1].MemoryX_n_6\,
      DIADI(0) => \MemArray[1].MemoryX_n_7\,
      DOBDO(7) => \MemArray[0].MemoryX_n_0\,
      DOBDO(6) => \MemArray[0].MemoryX_n_1\,
      DOBDO(5) => \MemArray[0].MemoryX_n_2\,
      DOBDO(4) => \MemArray[0].MemoryX_n_3\,
      DOBDO(3) => \MemArray[0].MemoryX_n_4\,
      DOBDO(2) => \MemArray[0].MemoryX_n_5\,
      DOBDO(1) => \MemArray[0].MemoryX_n_6\,
      DOBDO(0) => \MemArray[0].MemoryX_n_7\,
      EnWrite_IBUF => EnWrite_IBUF,
      NullflagA(0) => NullflagA(0),
      Q(3 downto 0) => State(3 downto 0),
      SR(0) => clear,
      \State_reg[1]\ => \State[1]_i_3__0_n_0\,
      \State_reg[2]\ => \State[2]_i_2__0_n_0\,
      \State_reg[3]\(0) => NullflagA(1),
      TX_Done => TX_Done,
      WEA(0) => p_1_in,
      WaveID => WaveID,
      \WriteMem__1\ => \WriteMem__1\,
      Write_IBUF => Write_IBUF,
      Write_Z1_reg_0 => \MemArray[1].MemoryX_n_12\,
      loadReg0_reg_0 => \MemArray[0].MemoryX_n_13\,
      mux4_out(0) => mux4_out(1),
      rdcnt0 => rdcnt0
    );
\MemArray[1].MemoryX\: entity work.Memory_2
     port map (
      Addr0 => Addr0,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      D(0) => FolState(0),
      DIADI(7) => \MemArray[1].MemoryX_n_0\,
      DIADI(6) => \MemArray[1].MemoryX_n_1\,
      DIADI(5) => \MemArray[1].MemoryX_n_2\,
      DIADI(4) => \MemArray[1].MemoryX_n_3\,
      DIADI(3) => \MemArray[1].MemoryX_n_4\,
      DIADI(2) => \MemArray[1].MemoryX_n_5\,
      DIADI(1) => \MemArray[1].MemoryX_n_6\,
      DIADI(0) => \MemArray[1].MemoryX_n_7\,
      DOBDO(7) => \MemArray[0].MemoryX_n_0\,
      DOBDO(6) => \MemArray[0].MemoryX_n_1\,
      DOBDO(5) => \MemArray[0].MemoryX_n_2\,
      DOBDO(4) => \MemArray[0].MemoryX_n_3\,
      DOBDO(3) => \MemArray[0].MemoryX_n_4\,
      DOBDO(2) => \MemArray[0].MemoryX_n_5\,
      DOBDO(1) => \MemArray[0].MemoryX_n_6\,
      DOBDO(0) => \MemArray[0].MemoryX_n_7\,
      Din_IBUF(7 downto 0) => Din_IBUF(7 downto 0),
      NullflagA(0) => NullflagA(0),
      Nullflag_reg_0(0) => NullflagA(1),
      Q(3 downto 0) => State(3 downto 0),
      SR(0) => clear,
      \State_reg[0]\ => \MemArray[1].MemoryX_n_12\,
      \State_reg[0]_0\ => \State[0]_i_3__0_n_0\,
      \State_reg[0]_1\ => \State[0]_i_4__0_n_0\,
      TX_Done => TX_Done,
      WEA(0) => p_1_in,
      WaveID => WaveID,
      \WriteMem__1\ => \WriteMem__1\,
      Write_IBUF => Write_IBUF,
      memory_reg_0(7) => \MemArray[1].MemoryX_n_14\,
      memory_reg_0(6) => \MemArray[1].MemoryX_n_15\,
      memory_reg_0(5) => \MemArray[1].MemoryX_n_16\,
      memory_reg_0(4) => \MemArray[1].MemoryX_n_17\,
      memory_reg_0(3) => \MemArray[1].MemoryX_n_18\,
      memory_reg_0(2) => \MemArray[1].MemoryX_n_19\,
      memory_reg_0(1) => \MemArray[1].MemoryX_n_20\,
      memory_reg_0(0) => \MemArray[1].MemoryX_n_21\,
      memory_reg_1 => \MemArray[0].MemoryX_n_13\,
      rdcnt0 => rdcnt0
    );
\State[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7747474777777777"
    )
        port map (
      I0 => \State[2]_i_2__0_n_0\,
      I1 => State(1),
      I2 => \FolState1_inferred__2/i__carry__0_n_3\,
      I3 => EnWrite_IBUF,
      I4 => ChanAddressReg,
      I5 => State(0),
      O => \State[0]_i_3__0_n_0\
    );
\State[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8BBB8BBB8BBB"
    )
        port map (
      I0 => \State_reg[0]_i_5__0_n_0\,
      I1 => State(2),
      I2 => State(1),
      I3 => State(0),
      I4 => ChanAddressReg,
      I5 => EnWrite_IBUF,
      O => \State[0]_i_4__0_n_0\
    );
\State[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFEAAFEAAFE"
    )
        port map (
      I0 => State(0),
      I1 => trig_all_IBUF,
      I2 => trig_CH_IBUF(0),
      I3 => trigZ1,
      I4 => EnWrite_IBUF,
      I5 => ChanAddressReg,
      O => \State[0]_i_6__0_n_0\
    );
\State[0]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => TX_Done,
      I1 => State(0),
      O => \State[0]_i_7__0_n_0\
    );
\State[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA10BF10BA10BA10"
    )
        port map (
      I0 => State(2),
      I1 => \State[2]_i_2__0_n_0\,
      I2 => State(1),
      I3 => State(0),
      I4 => mux4_out(1),
      I5 => \FolState1_inferred__2/i__carry__0_n_3\,
      O => \State[1]_i_3__0_n_0\
    );
\State[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => State(0),
      I1 => \State[2]_i_4__0_n_0\,
      I2 => \counter_reg__0\(3),
      I3 => \counter_reg__0\(2),
      I4 => \counter_reg__0\(5),
      I5 => \counter_reg__0\(4),
      O => \State[2]_i_2__0_n_0\
    );
\State[2]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg__0\(7),
      I1 => \counter_reg__0\(6),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(8),
      O => \State[2]_i_4__0_n_0\
    );
\State[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => RESET_IBUF,
      I1 => ChanAddressReg,
      I2 => RESET_CH_IBUF,
      O => mux1_out(1)
    );
\State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FolState(0),
      Q => State(0),
      R => mux1_out(1)
    );
\State_reg[0]_i_5__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \State[0]_i_6__0_n_0\,
      I1 => \State[0]_i_7__0_n_0\,
      O => \State_reg[0]_i_5__0_n_0\,
      S => State(1)
    );
\State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FolState(1),
      Q => State(1),
      R => mux1_out(1)
    );
\State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FolState(2),
      Q => State(2),
      R => mux1_out(1)
    );
\State_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FolState(3),
      Q => State(3),
      R => mux1_out(1)
    );
\WaveIDZ[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B888"
    )
        port map (
      I0 => \WaveAdressA[1]\,
      I1 => mux4_out(1),
      I2 => State(3),
      I3 => State(2),
      I4 => State(0),
      I5 => State(1),
      O => \WaveIDZ[0]_i_1__0_n_0\
    );
\WaveIDZ[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EnWrite_IBUF,
      I1 => ChanAddressReg,
      O => mux4_out(1)
    );
\WaveIDZ_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \WaveIDZ[0]_i_1__0_n_0\,
      Q => \WaveIDZ_reg_n_0_[0]\,
      R => '0'
    );
\WaveID_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \WaveIDZ_reg_n_0_[0]\,
      Q => WaveID,
      R => '0'
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => \p_0_in__2\(2)
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => \p_0_in__2\(3)
    );
\counter[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => \p_0_in__2\(4)
    );
\counter[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(2),
      I4 => \counter_reg__0\(4),
      I5 => \counter_reg__0\(5),
      O => \p_0_in__2\(5)
    );
\counter[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter[8]_i_3__0_n_0\,
      I1 => \counter_reg__0\(6),
      O => \p_0_in__2\(6)
    );
\counter[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter[8]_i_3__0_n_0\,
      I1 => \counter_reg__0\(6),
      I2 => \counter_reg__0\(7),
      O => \p_0_in__2\(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A55B"
    )
        port map (
      I0 => State(3),
      I1 => State(1),
      I2 => State(2),
      I3 => State(0),
      O => \counter[8]_i_1_n_0\
    );
\counter[8]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => \counter[8]_i_3__0_n_0\,
      I2 => \counter_reg__0\(7),
      I3 => \counter_reg__0\(8),
      O => \p_0_in__2\(8)
    );
\counter[8]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_reg__0\(5),
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => \counter_reg__0\(2),
      I5 => \counter_reg__0\(4),
      O => \counter[8]_i_3__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(0),
      Q => \counter_reg__0\(0),
      R => \counter[8]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(1),
      Q => \counter_reg__0\(1),
      R => \counter[8]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(2),
      Q => \counter_reg__0\(2),
      R => \counter[8]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(3),
      Q => \counter_reg__0\(3),
      R => \counter[8]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(4),
      Q => \counter_reg__0\(4),
      R => \counter[8]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(5),
      Q => \counter_reg__0\(5),
      R => \counter[8]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(6),
      Q => \counter_reg__0\(6),
      R => \counter[8]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(7),
      Q => \counter_reg__0\(7),
      R => \counter[8]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__2\(8),
      Q => \counter_reg__0\(8),
      R => \counter[8]_i_1_n_0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(16)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(15)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(14)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(13)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(12)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(11)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(10)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(9)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => A(8)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(8),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => Q(6),
      I2 => Q(7),
      I3 => \counter_reg__0\(7),
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => Q(4),
      I2 => Q(5),
      I3 => \counter_reg__0\(5),
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \counter_reg__0\(3),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \counter_reg__0\(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => Q(6),
      I2 => \counter_reg__0\(7),
      I3 => Q(7),
      O => \i__carry_i_5__6_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => Q(4),
      I2 => \counter_reg__0\(5),
      I3 => Q(5),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => Q(2),
      I2 => \counter_reg__0\(3),
      I3 => Q(3),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => Q(0),
      I2 => \counter_reg__0\(1),
      I3 => Q(1),
      O => \i__carry_i_8__2_n_0\
    );
\trigZ1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => trig_CH_IBUF(0),
      I1 => trig_all_IBUF,
      O => trig0_out
    );
trigZ1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => trig0_out,
      Q => trigZ1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Stimulator is
  port (
    WaveAddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    ChanAddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    RESET_CH : in STD_LOGIC;
    Write : in STD_LOGIC;
    EnWrite : in STD_LOGIC;
    WriteConfig : in STD_LOGIC;
    trig_all : in STD_LOGIC;
    trig_CH : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MOSI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SCLK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 1 downto 0 );
    InterInterval : in STD_LOGIC_VECTOR ( 7 downto 0 );
    InterPeriods : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Amplitude : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Stimulator : entity is true;
  attribute Adresswidth : integer;
  attribute Adresswidth of Stimulator : entity is 8;
  attribute Clock : integer;
  attribute Clock of Stimulator : entity is 100000000;
  attribute MaxDelay : integer;
  attribute MaxDelay of Stimulator : entity is 255;
  attribute MultiplierWordwith : integer;
  attribute MultiplierWordwith of Stimulator : entity is 4;
  attribute NChannels : integer;
  attribute NChannels of Stimulator : entity is 2;
  attribute NWave : integer;
  attribute NWave of Stimulator : entity is 1;
  attribute NeurtralDW : string;
  attribute NeurtralDW of Stimulator : entity is "16'b1000000000000000";
  attribute SPI_Clock : integer;
  attribute SPI_Clock of Stimulator : entity is 25000000;
  attribute TransmitterWordwith : integer;
  attribute TransmitterWordwith of Stimulator : entity is 16;
  attribute Wordwidth : integer;
  attribute Wordwidth of Stimulator : entity is 8;
end Stimulator;

architecture STRUCTURE of Stimulator is
  signal Amplitude_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal ChanAddr_IBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ChanAddressReg : STD_LOGIC;
  signal \ChannelArray[0].ChannelREG_n_1\ : STD_LOGIC;
  signal \ChannelArray[0].ChannelREG_n_2\ : STD_LOGIC;
  signal \ChannelArray[0].ChannelREG_n_3\ : STD_LOGIC;
  signal \ChannelArray[0].ChannelREG_n_4\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_1\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_10\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_11\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_12\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_13\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_14\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_15\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_16\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_17\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_18\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_19\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_2\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_20\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_21\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_3\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_4\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_5\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_6\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_7\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_8\ : STD_LOGIC;
  signal \ChannelArray[1].ChannelREG_n_9\ : STD_LOGIC;
  signal Din_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal EnWrite_IBUF : STD_LOGIC;
  signal InterInterval_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal InterPeriods_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MOSI_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal OUT_Amplitude : STD_LOGIC_VECTOR ( 0 to 0 );
  signal OUT_InterInterval : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal OUT_InterPeriods : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RESET_CH_IBUF : STD_LOGIC;
  signal RESET_IBUF : STD_LOGIC;
  signal SCLK_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SS_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal WaveAddr_IBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \WaveAdressA[0]\ : STD_LOGIC;
  signal \WaveAdressA[1]\ : STD_LOGIC;
  signal WriteConfig_IBUF : STD_LOGIC;
  signal Write_IBUF : STD_LOGIC;
  signal trig_CH_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trig_all_IBUF : STD_LOGIC;
begin
\Amplitude_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Amplitude(0),
      O => Amplitude_IBUF(0)
    );
\Amplitude_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Amplitude(1),
      O => Amplitude_IBUF(1)
    );
\Amplitude_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Amplitude(2),
      O => Amplitude_IBUF(2)
    );
\Amplitude_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Amplitude(3),
      O => Amplitude_IBUF(3)
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\ChanAddr_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ChanAddr(0),
      O => ChanAddr_IBUF(0)
    );
\ChanAddressReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ChanAddr_IBUF(0),
      Q => ChanAddressReg,
      R => '0'
    );
\ChannelArray[0].ChannelREG\: entity work.ChannelConfigReg
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      D(4) => \ChannelArray[0].ChannelREG_n_1\,
      D(3) => \ChannelArray[0].ChannelREG_n_2\,
      D(2) => \ChannelArray[0].ChannelREG_n_3\,
      D(1) => \ChannelArray[0].ChannelREG_n_4\,
      D(0) => OUT_Amplitude(0),
      \OUT_Amplitude_reg[3]_0\(3 downto 0) => Amplitude_IBUF(3 downto 0),
      \OUT_InterInterval_reg[7]_0\(7 downto 0) => InterInterval_IBUF(7 downto 0),
      \OUT_InterPeriods_reg[7]_0\(7 downto 0) => OUT_InterPeriods(7 downto 0),
      \OUT_InterPeriods_reg[7]_1\(7 downto 0) => InterPeriods_IBUF(7 downto 0),
      Q(7 downto 0) => OUT_InterInterval(7 downto 0),
      RESET_IBUF => RESET_IBUF,
      WaveAddr_IBUF(0) => WaveAddr_IBUF(0),
      \WaveAdressA[0]\ => \WaveAdressA[0]\,
      WriteConfig_IBUF => WriteConfig_IBUF
    );
\ChannelArray[0].ChannelX\: entity work.Channel
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      D(4) => \ChannelArray[0].ChannelREG_n_1\,
      D(3) => \ChannelArray[0].ChannelREG_n_2\,
      D(2) => \ChannelArray[0].ChannelREG_n_3\,
      D(1) => \ChannelArray[0].ChannelREG_n_4\,
      D(0) => OUT_Amplitude(0),
      Din_IBUF(7 downto 0) => Din_IBUF(7 downto 0),
      EnWrite_IBUF => EnWrite_IBUF,
      FolState2_carry_0(7 downto 0) => OUT_InterPeriods(7 downto 0),
      MOSI => MOSI_OBUF(0),
      Q(7 downto 0) => OUT_InterInterval(7 downto 0),
      RESET_CH_IBUF => RESET_CH_IBUF,
      RESET_IBUF => RESET_IBUF,
      SCLK => SCLK_OBUF(0),
      SS => SS_OBUF(0),
      \WaveAdressA[0]\ => \WaveAdressA[0]\,
      Write_IBUF => Write_IBUF,
      trig_CH_IBUF(0) => trig_CH_IBUF(0),
      trig_all_IBUF => trig_all_IBUF
    );
\ChannelArray[1].ChannelREG\: entity work.ChannelConfigReg_0
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      D(4) => \ChannelArray[1].ChannelREG_n_1\,
      D(3) => \ChannelArray[1].ChannelREG_n_2\,
      D(2) => \ChannelArray[1].ChannelREG_n_3\,
      D(1) => \ChannelArray[1].ChannelREG_n_4\,
      D(0) => \ChannelArray[1].ChannelREG_n_5\,
      \OUT_Amplitude_reg[3]_0\(3 downto 0) => Amplitude_IBUF(3 downto 0),
      \OUT_InterInterval_reg[7]_0\(7 downto 0) => InterInterval_IBUF(7 downto 0),
      \OUT_InterPeriods_reg[7]_0\(7) => \ChannelArray[1].ChannelREG_n_14\,
      \OUT_InterPeriods_reg[7]_0\(6) => \ChannelArray[1].ChannelREG_n_15\,
      \OUT_InterPeriods_reg[7]_0\(5) => \ChannelArray[1].ChannelREG_n_16\,
      \OUT_InterPeriods_reg[7]_0\(4) => \ChannelArray[1].ChannelREG_n_17\,
      \OUT_InterPeriods_reg[7]_0\(3) => \ChannelArray[1].ChannelREG_n_18\,
      \OUT_InterPeriods_reg[7]_0\(2) => \ChannelArray[1].ChannelREG_n_19\,
      \OUT_InterPeriods_reg[7]_0\(1) => \ChannelArray[1].ChannelREG_n_20\,
      \OUT_InterPeriods_reg[7]_0\(0) => \ChannelArray[1].ChannelREG_n_21\,
      \OUT_InterPeriods_reg[7]_1\(7 downto 0) => InterPeriods_IBUF(7 downto 0),
      Q(7) => \ChannelArray[1].ChannelREG_n_6\,
      Q(6) => \ChannelArray[1].ChannelREG_n_7\,
      Q(5) => \ChannelArray[1].ChannelREG_n_8\,
      Q(4) => \ChannelArray[1].ChannelREG_n_9\,
      Q(3) => \ChannelArray[1].ChannelREG_n_10\,
      Q(2) => \ChannelArray[1].ChannelREG_n_11\,
      Q(1) => \ChannelArray[1].ChannelREG_n_12\,
      Q(0) => \ChannelArray[1].ChannelREG_n_13\,
      RESET_IBUF => RESET_IBUF,
      WaveAddr_IBUF(0) => WaveAddr_IBUF(0),
      \WaveAdressA[1]\ => \WaveAdressA[1]\,
      WriteConfig_IBUF => WriteConfig_IBUF
    );
\ChannelArray[1].ChannelX\: entity work.Channel_1
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      D(4) => \ChannelArray[1].ChannelREG_n_1\,
      D(3) => \ChannelArray[1].ChannelREG_n_2\,
      D(2) => \ChannelArray[1].ChannelREG_n_3\,
      D(1) => \ChannelArray[1].ChannelREG_n_4\,
      D(0) => \ChannelArray[1].ChannelREG_n_5\,
      Din_IBUF(7 downto 0) => Din_IBUF(7 downto 0),
      EnWrite_IBUF => EnWrite_IBUF,
      FolState2_carry_0(7) => \ChannelArray[1].ChannelREG_n_14\,
      FolState2_carry_0(6) => \ChannelArray[1].ChannelREG_n_15\,
      FolState2_carry_0(5) => \ChannelArray[1].ChannelREG_n_16\,
      FolState2_carry_0(4) => \ChannelArray[1].ChannelREG_n_17\,
      FolState2_carry_0(3) => \ChannelArray[1].ChannelREG_n_18\,
      FolState2_carry_0(2) => \ChannelArray[1].ChannelREG_n_19\,
      FolState2_carry_0(1) => \ChannelArray[1].ChannelREG_n_20\,
      FolState2_carry_0(0) => \ChannelArray[1].ChannelREG_n_21\,
      MOSI => MOSI_OBUF(1),
      Q(7) => \ChannelArray[1].ChannelREG_n_6\,
      Q(6) => \ChannelArray[1].ChannelREG_n_7\,
      Q(5) => \ChannelArray[1].ChannelREG_n_8\,
      Q(4) => \ChannelArray[1].ChannelREG_n_9\,
      Q(3) => \ChannelArray[1].ChannelREG_n_10\,
      Q(2) => \ChannelArray[1].ChannelREG_n_11\,
      Q(1) => \ChannelArray[1].ChannelREG_n_12\,
      Q(0) => \ChannelArray[1].ChannelREG_n_13\,
      RESET_CH_IBUF => RESET_CH_IBUF,
      RESET_IBUF => RESET_IBUF,
      SCLK => SCLK_OBUF(1),
      SS => SS_OBUF(1),
      \WaveAdressA[1]\ => \WaveAdressA[1]\,
      Write_IBUF => Write_IBUF,
      trig_CH_IBUF(0) => trig_CH_IBUF(1),
      trig_all_IBUF => trig_all_IBUF
    );
\Din_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(0),
      O => Din_IBUF(0)
    );
\Din_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(1),
      O => Din_IBUF(1)
    );
\Din_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(2),
      O => Din_IBUF(2)
    );
\Din_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(3),
      O => Din_IBUF(3)
    );
\Din_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(4),
      O => Din_IBUF(4)
    );
\Din_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(5),
      O => Din_IBUF(5)
    );
\Din_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(6),
      O => Din_IBUF(6)
    );
\Din_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(7),
      O => Din_IBUF(7)
    );
EnWrite_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => EnWrite,
      O => EnWrite_IBUF
    );
\InterInterval_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterInterval(0),
      O => InterInterval_IBUF(0)
    );
\InterInterval_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterInterval(1),
      O => InterInterval_IBUF(1)
    );
\InterInterval_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterInterval(2),
      O => InterInterval_IBUF(2)
    );
\InterInterval_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterInterval(3),
      O => InterInterval_IBUF(3)
    );
\InterInterval_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterInterval(4),
      O => InterInterval_IBUF(4)
    );
\InterInterval_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterInterval(5),
      O => InterInterval_IBUF(5)
    );
\InterInterval_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterInterval(6),
      O => InterInterval_IBUF(6)
    );
\InterInterval_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterInterval(7),
      O => InterInterval_IBUF(7)
    );
\InterPeriods_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterPeriods(0),
      O => InterPeriods_IBUF(0)
    );
\InterPeriods_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterPeriods(1),
      O => InterPeriods_IBUF(1)
    );
\InterPeriods_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterPeriods(2),
      O => InterPeriods_IBUF(2)
    );
\InterPeriods_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterPeriods(3),
      O => InterPeriods_IBUF(3)
    );
\InterPeriods_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterPeriods(4),
      O => InterPeriods_IBUF(4)
    );
\InterPeriods_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterPeriods(5),
      O => InterPeriods_IBUF(5)
    );
\InterPeriods_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterPeriods(6),
      O => InterPeriods_IBUF(6)
    );
\InterPeriods_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => InterPeriods(7),
      O => InterPeriods_IBUF(7)
    );
\MOSI_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MOSI_OBUF(0),
      O => MOSI(0)
    );
\MOSI_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MOSI_OBUF(1),
      O => MOSI(1)
    );
RESET_CH_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RESET_CH,
      O => RESET_CH_IBUF
    );
RESET_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RESET,
      O => RESET_IBUF
    );
\SCLK_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SCLK_OBUF(0),
      O => SCLK(0)
    );
\SCLK_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SCLK_OBUF(1),
      O => SCLK(1)
    );
\SS_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SS_OBUF(0),
      O => SS(0)
    );
\SS_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SS_OBUF(1),
      O => SS(1)
    );
\WaveAddr_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WaveAddr(0),
      O => WaveAddr_IBUF(0)
    );
WriteConfig_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => WriteConfig,
      O => WriteConfig_IBUF
    );
Write_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Write,
      O => Write_IBUF
    );
\trig_CH_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => trig_CH(0),
      O => trig_CH_IBUF(0)
    );
\trig_CH_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => trig_CH(1),
      O => trig_CH_IBUF(1)
    );
trig_all_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => trig_all,
      O => trig_all_IBUF
    );
end STRUCTURE;
