-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Nov 15 15:35:32 2019
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
    B : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_InterPeriods_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    WaveAddr_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    ChanAddressReg : in STD_LOGIC;
    WriteConfig_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_InterInterval_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_InterPeriods_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end ChannelConfigReg;

architecture STRUCTURE of ChannelConfigReg is
  signal \^b\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal OUT_Amplitude : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \OUT_Amplitude[3]_i_1_n_0\ : STD_LOGIC;
  signal WriteConfZ1 : STD_LOGIC;
  signal \WriteConfZ1_i_1__0_n_0\ : STD_LOGIC;
begin
  B(4 downto 0) <= \^b\(4 downto 0);
C_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => OUT_Amplitude(3),
      I1 => OUT_Amplitude(2),
      I2 => \^b\(0),
      I3 => OUT_Amplitude(1),
      O => \^b\(4)
    );
C_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => OUT_Amplitude(2),
      I1 => \^b\(0),
      I2 => OUT_Amplitude(1),
      I3 => OUT_Amplitude(3),
      O => \^b\(3)
    );
C_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => OUT_Amplitude(1),
      I1 => \^b\(0),
      I2 => OUT_Amplitude(2),
      O => \^b\(2)
    );
C_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b\(0),
      I1 => OUT_Amplitude(1),
      O => \^b\(1)
    );
\OUT_Amplitude[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ChanAddressReg,
      I1 => WriteConfig_IBUF,
      I2 => WriteConfZ1,
      O => \OUT_Amplitude[3]_i_1_n_0\
    );
\OUT_Amplitude_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1_n_0\,
      D => D(0),
      Q => \^b\(0),
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1_n_0\,
      D => D(1),
      Q => OUT_Amplitude(1),
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1_n_0\,
      D => D(2),
      Q => OUT_Amplitude(2),
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1_n_0\,
      D => D(3),
      Q => OUT_Amplitude(3),
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1_n_0\,
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
    B : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_InterPeriods_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    WaveAddr_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    ChanAddressReg : in STD_LOGIC;
    WriteConfig_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_InterInterval_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_InterPeriods_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ChannelConfigReg_0 : entity is "ChannelConfigReg";
end ChannelConfigReg_0;

architecture STRUCTURE of ChannelConfigReg_0 is
  signal \^b\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \OUT_Amplitude[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \OUT_Amplitude_reg_n_0_[1]\ : STD_LOGIC;
  signal \OUT_Amplitude_reg_n_0_[2]\ : STD_LOGIC;
  signal \OUT_Amplitude_reg_n_0_[3]\ : STD_LOGIC;
  signal WriteConf : STD_LOGIC;
  signal WriteConfZ1_reg_n_0 : STD_LOGIC;
begin
  B(4 downto 0) <= \^b\(4 downto 0);
\C_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \OUT_Amplitude_reg_n_0_[3]\,
      I1 => \OUT_Amplitude_reg_n_0_[2]\,
      I2 => \^b\(0),
      I3 => \OUT_Amplitude_reg_n_0_[1]\,
      O => \^b\(4)
    );
\C_reg_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \OUT_Amplitude_reg_n_0_[2]\,
      I1 => \^b\(0),
      I2 => \OUT_Amplitude_reg_n_0_[1]\,
      I3 => \OUT_Amplitude_reg_n_0_[3]\,
      O => \^b\(3)
    );
\C_reg_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \OUT_Amplitude_reg_n_0_[1]\,
      I1 => \^b\(0),
      I2 => \OUT_Amplitude_reg_n_0_[2]\,
      O => \^b\(2)
    );
\C_reg_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b\(0),
      I1 => \OUT_Amplitude_reg_n_0_[1]\,
      O => \^b\(1)
    );
\OUT_Amplitude[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ChanAddressReg,
      I1 => WriteConfig_IBUF,
      I2 => WriteConfZ1_reg_n_0,
      O => \OUT_Amplitude[3]_i_1__0_n_0\
    );
\OUT_Amplitude_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
      D => D(0),
      Q => \^b\(0),
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
      D => D(1),
      Q => \OUT_Amplitude_reg_n_0_[1]\,
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
      D => D(2),
      Q => \OUT_Amplitude_reg_n_0_[2]\,
      R => RESET_IBUF
    );
\OUT_Amplitude_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
      D => D(3),
      Q => \OUT_Amplitude_reg_n_0_[3]\,
      R => RESET_IBUF
    );
\OUT_InterInterval_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
      CE => \OUT_Amplitude[3]_i_1__0_n_0\,
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
    CLK : in STD_LOGIC;
    Addr0 : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write : in STD_LOGIC;
    Read : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Empty : out STD_LOGIC;
    Full : out STD_LOGIC;
    WRCNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Nullflag : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[0]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[1]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[2]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[3]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[4]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[5]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[6]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[7]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[8]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[9]\ : out STD_LOGIC
  );
  attribute Adresswidth : integer;
  attribute Adresswidth of Memory : entity is 10;
  attribute Wordwidth : integer;
  attribute Wordwidth of Memory : entity is 8;
end Memory;

architecture STRUCTURE of Memory is
  signal \<const0>\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^nullflag\ : STD_LOGIC;
  signal Nullflag_i_10_n_0 : STD_LOGIC;
  signal Nullflag_i_1_n_0 : STD_LOGIC;
  signal Nullflag_i_3_n_0 : STD_LOGIC;
  signal Nullflag_i_4_n_0 : STD_LOGIC;
  signal Nullflag_i_5_n_0 : STD_LOGIC;
  signal Nullflag_i_6_n_0 : STD_LOGIC;
  signal Nullflag_i_7_n_0 : STD_LOGIC;
  signal Nullflag_i_8_n_0 : STD_LOGIC;
  signal Nullflag_i_9_n_0 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_1 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_2 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_3 : STD_LOGIC;
  signal Read_Z1 : STD_LOGIC;
  signal WRCNT_loc : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of WRCNT_loc : signal is std.standard.true;
  signal \WRCNT_loc[7]_i_2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc[9]_i_2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Write_Z1 : STD_LOGIC;
  signal empty_loc_i_1_n_0 : STD_LOGIC;
  signal loadReg0 : STD_LOGIC;
  signal memory_reg_i_1_n_0 : STD_LOGIC;
  signal memory_reg_i_2_n_0 : STD_LOGIC;
  signal memory_reg_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdcnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdcnt0 : STD_LOGIC;
  signal \rdcnt[8]_i_10_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_11_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_12_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_13_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_14_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_15_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_16_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_9_n_0\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal NLW_Nullflag_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdcnt_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rdcnt_reg[8]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rdcnt_reg[8]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \WRCNT_loc_reg[0]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[1]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[2]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[3]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[4]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[5]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[6]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[7]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[8]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[9]\ : label is "yes";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 8192;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdcnt[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdcnt[8]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdcnt[9]_i_1\ : label is "soft_lutpair24";
begin
  Empty <= \^empty\;
  Full <= \<const0>\;
  Nullflag <= \^nullflag\;
  WRCNT(9 downto 0) <= WRCNT_loc(9 downto 0);
  \u_ila_0_WRCNT_loc[0]\ <= WRCNT_loc(0);
  \u_ila_0_WRCNT_loc[1]\ <= WRCNT_loc(1);
  \u_ila_0_WRCNT_loc[2]\ <= WRCNT_loc(2);
  \u_ila_0_WRCNT_loc[3]\ <= WRCNT_loc(3);
  \u_ila_0_WRCNT_loc[4]\ <= WRCNT_loc(4);
  \u_ila_0_WRCNT_loc[5]\ <= WRCNT_loc(5);
  \u_ila_0_WRCNT_loc[6]\ <= WRCNT_loc(6);
  \u_ila_0_WRCNT_loc[7]\ <= WRCNT_loc(7);
  \u_ila_0_WRCNT_loc[8]\ <= WRCNT_loc(8);
  \u_ila_0_WRCNT_loc[9]\ <= WRCNT_loc(9);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Nullflag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => p_0_in,
      I1 => \^empty\,
      I2 => Read_Z1,
      I3 => Read,
      I4 => RESET,
      I5 => \^nullflag\,
      O => Nullflag_i_1_n_0
    );
Nullflag_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => WRCNT_loc(0),
      I2 => WRCNT_loc(1),
      I3 => WRCNT_loc(3),
      O => Nullflag_i_10_n_0
    );
Nullflag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999994"
    )
        port map (
      I0 => rdcnt(9),
      I1 => WRCNT_loc(9),
      I2 => WRCNT_loc(7),
      I3 => Nullflag_i_7_n_0,
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(8),
      O => Nullflag_i_3_n_0
    );
Nullflag_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9600"
    )
        port map (
      I0 => rdcnt(6),
      I1 => Nullflag_i_7_n_0,
      I2 => WRCNT_loc(6),
      I3 => Nullflag_i_8_n_0,
      O => Nullflag_i_4_n_0
    );
Nullflag_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => Nullflag_i_9_n_0,
      I1 => WRCNT_loc(5),
      I2 => Nullflag_i_10_n_0,
      I3 => WRCNT_loc(4),
      I4 => rdcnt(5),
      I5 => rdcnt(4),
      O => Nullflag_i_5_n_0
    );
Nullflag_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842112840000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => WRCNT_loc(1),
      I2 => rdcnt(2),
      I3 => rdcnt(1),
      I4 => rdcnt(0),
      I5 => WRCNT_loc(0),
      O => Nullflag_i_6_n_0
    );
Nullflag_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => WRCNT_loc(2),
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(1),
      I4 => WRCNT_loc(3),
      I5 => WRCNT_loc(5),
      O => Nullflag_i_7_n_0
    );
Nullflag_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => rdcnt(7),
      I1 => rdcnt(8),
      I2 => WRCNT_loc(7),
      I3 => Nullflag_i_7_n_0,
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(8),
      O => Nullflag_i_8_n_0
    );
Nullflag_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => WRCNT_loc(3),
      I1 => WRCNT_loc(1),
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(2),
      I4 => rdcnt(3),
      O => Nullflag_i_9_n_0
    );
Nullflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Nullflag_i_1_n_0,
      Q => \^nullflag\,
      R => '0'
    );
Nullflag_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_in,
      CO(2) => Nullflag_reg_i_2_n_1,
      CO(1) => Nullflag_reg_i_2_n_2,
      CO(0) => Nullflag_reg_i_2_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_Nullflag_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => Nullflag_i_3_n_0,
      S(2) => Nullflag_i_4_n_0,
      S(1) => Nullflag_i_5_n_0,
      S(0) => Nullflag_i_6_n_0
    );
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Read,
      Q => Read_Z1,
      R => '0'
    );
\WRCNT_loc[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => WRCNT_loc(0),
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      O => \WRCNT_loc__0\(0)
    );
\WRCNT_loc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => WRCNT_loc(0),
      I1 => Write_Z1,
      I2 => Write,
      I3 => Addr0,
      I4 => WRCNT_loc(1),
      O => \WRCNT_loc__0\(1)
    );
\WRCNT_loc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF04000000"
    )
        port map (
      I0 => Addr0,
      I1 => Write,
      I2 => Write_Z1,
      I3 => WRCNT_loc(0),
      I4 => WRCNT_loc(1),
      I5 => WRCNT_loc(2),
      O => \WRCNT_loc__0\(2)
    );
\WRCNT_loc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(1),
      I1 => WRCNT_loc(0),
      I2 => memory_reg_i_1_n_0,
      I3 => WRCNT_loc(2),
      I4 => WRCNT_loc(3),
      O => \WRCNT_loc__0\(3)
    );
\WRCNT_loc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => memory_reg_i_1_n_0,
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(1),
      I4 => WRCNT_loc(3),
      I5 => WRCNT_loc(4),
      O => \WRCNT_loc__0\(4)
    );
\WRCNT_loc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => WRCNT_loc(3),
      I1 => \WRCNT_loc[7]_i_2_n_0\,
      I2 => WRCNT_loc(4),
      I3 => WRCNT_loc(5),
      O => \WRCNT_loc__0\(5)
    );
\WRCNT_loc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => \WRCNT_loc[7]_i_2_n_0\,
      I2 => WRCNT_loc(3),
      I3 => WRCNT_loc(5),
      I4 => WRCNT_loc(6),
      O => \WRCNT_loc__0\(6)
    );
\WRCNT_loc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(5),
      I1 => WRCNT_loc(3),
      I2 => \WRCNT_loc[7]_i_2_n_0\,
      I3 => WRCNT_loc(4),
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(7),
      O => \WRCNT_loc__0\(7)
    );
\WRCNT_loc[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      I4 => WRCNT_loc(0),
      I5 => WRCNT_loc(1),
      O => \WRCNT_loc[7]_i_2_n_0\
    );
\WRCNT_loc[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(6),
      I1 => \WRCNT_loc[9]_i_2_n_0\,
      I2 => WRCNT_loc(5),
      I3 => WRCNT_loc(7),
      I4 => WRCNT_loc(8),
      O => \WRCNT_loc__0\(8)
    );
\WRCNT_loc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(7),
      I1 => WRCNT_loc(5),
      I2 => \WRCNT_loc[9]_i_2_n_0\,
      I3 => WRCNT_loc(6),
      I4 => WRCNT_loc(8),
      I5 => WRCNT_loc(9),
      O => \WRCNT_loc__0\(9)
    );
\WRCNT_loc[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => WRCNT_loc(2),
      I2 => memory_reg_i_1_n_0,
      I3 => WRCNT_loc(0),
      I4 => WRCNT_loc(1),
      I5 => WRCNT_loc(3),
      O => \WRCNT_loc[9]_i_2_n_0\
    );
\WRCNT_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(0),
      Q => WRCNT_loc(0),
      R => RESET
    );
\WRCNT_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(1),
      Q => WRCNT_loc(1),
      R => RESET
    );
\WRCNT_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(2),
      Q => WRCNT_loc(2),
      R => RESET
    );
\WRCNT_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(3),
      Q => WRCNT_loc(3),
      R => RESET
    );
\WRCNT_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(4),
      Q => WRCNT_loc(4),
      R => RESET
    );
\WRCNT_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(5),
      Q => WRCNT_loc(5),
      R => RESET
    );
\WRCNT_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(6),
      Q => WRCNT_loc(6),
      R => RESET
    );
\WRCNT_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(7),
      Q => WRCNT_loc(7),
      R => RESET
    );
\WRCNT_loc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(8),
      Q => WRCNT_loc(8),
      R => RESET
    );
\WRCNT_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(9),
      Q => WRCNT_loc(9),
      R => RESET
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Write,
      Q => Write_Z1,
      R => '0'
    );
empty_loc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^empty\,
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      O => empty_loc_i_1_n_0
    );
empty_loc_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => empty_loc_i_1_n_0,
      Q => \^empty\,
      S => RESET
    );
loadReg0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Addr0,
      Q => loadReg0,
      R => RESET
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
      ADDRARDADDR(13 downto 4) => WRCNT_loc(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 4) => rdcnt(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK,
      CLKBWRCLK => CLK,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => Din(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_memory_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => Dout(7 downto 0),
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
      WEA(1) => memory_reg_i_3_n_0,
      WEA(0) => memory_reg_i_3_n_0,
      WEBWE(3 downto 0) => B"0000"
    );
memory_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Write_Z1,
      I1 => Write,
      I2 => Addr0,
      O => memory_reg_i_1_n_0
    );
memory_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1,
      I2 => \^empty\,
      I3 => loadReg0,
      I4 => RESET,
      O => memory_reg_i_2_n_0
    );
memory_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => memory_reg_i_3_n_0
    );
\rdcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      I2 => rdcnt(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt(1),
      I1 => rdcnt(0),
      I2 => rdcnt(2),
      I3 => rdcnt(3),
      O => plusOp(3)
    );
\rdcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt(2),
      I1 => rdcnt(0),
      I2 => rdcnt(1),
      I3 => rdcnt(3),
      I4 => rdcnt(4),
      O => plusOp(4)
    );
\rdcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rdcnt(3),
      I1 => rdcnt(1),
      I2 => rdcnt(0),
      I3 => rdcnt(2),
      I4 => rdcnt(4),
      I5 => rdcnt(5),
      O => plusOp(5)
    );
\rdcnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rdcnt[8]_i_5_n_0\,
      I1 => rdcnt(6),
      O => plusOp(6)
    );
\rdcnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rdcnt[8]_i_5_n_0\,
      I1 => rdcnt(6),
      I2 => rdcnt(7),
      O => plusOp(7)
    );
\rdcnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEEEEAEEEE"
    )
        port map (
      I0 => RESET,
      I1 => Addr0,
      I2 => \^empty\,
      I3 => Read_Z1,
      I4 => Read,
      I5 => \rdcnt_reg[8]_i_4_n_3\,
      O => \rdcnt[8]_i_1_n_0\
    );
\rdcnt[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(4),
      I1 => WRCNT_loc(4),
      I2 => WRCNT_loc(5),
      I3 => rdcnt(5),
      O => \rdcnt[8]_i_10_n_0\
    );
\rdcnt[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(2),
      I1 => WRCNT_loc(2),
      I2 => WRCNT_loc(3),
      I3 => rdcnt(3),
      O => \rdcnt[8]_i_11_n_0\
    );
\rdcnt[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(0),
      I1 => WRCNT_loc(0),
      I2 => WRCNT_loc(1),
      I3 => rdcnt(1),
      O => \rdcnt[8]_i_12_n_0\
    );
\rdcnt[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(6),
      I1 => WRCNT_loc(6),
      I2 => rdcnt(7),
      I3 => WRCNT_loc(7),
      O => \rdcnt[8]_i_13_n_0\
    );
\rdcnt[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(4),
      I1 => WRCNT_loc(4),
      I2 => rdcnt(5),
      I3 => WRCNT_loc(5),
      O => \rdcnt[8]_i_14_n_0\
    );
\rdcnt[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(2),
      I1 => WRCNT_loc(2),
      I2 => rdcnt(3),
      I3 => WRCNT_loc(3),
      O => \rdcnt[8]_i_15_n_0\
    );
\rdcnt[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(0),
      I1 => WRCNT_loc(0),
      I2 => rdcnt(1),
      I3 => WRCNT_loc(1),
      O => \rdcnt[8]_i_16_n_0\
    );
\rdcnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1,
      I2 => \^empty\,
      O => rdcnt0
    );
\rdcnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt(6),
      I1 => \rdcnt[8]_i_5_n_0\,
      I2 => rdcnt(7),
      I3 => rdcnt(8),
      O => plusOp(8)
    );
\rdcnt[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rdcnt(5),
      I1 => rdcnt(3),
      I2 => rdcnt(1),
      I3 => rdcnt(0),
      I4 => rdcnt(2),
      I5 => rdcnt(4),
      O => \rdcnt[8]_i_5_n_0\
    );
\rdcnt[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(8),
      I1 => WRCNT_loc(8),
      I2 => WRCNT_loc(9),
      I3 => rdcnt(9),
      O => \rdcnt[8]_i_7_n_0\
    );
\rdcnt[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(8),
      I1 => WRCNT_loc(8),
      I2 => rdcnt(9),
      I3 => WRCNT_loc(9),
      O => \rdcnt[8]_i_8_n_0\
    );
\rdcnt[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(6),
      I1 => WRCNT_loc(6),
      I2 => WRCNT_loc(7),
      I3 => rdcnt(7),
      O => \rdcnt[8]_i_9_n_0\
    );
\rdcnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt(7),
      I1 => \rdcnt[8]_i_5_n_0\,
      I2 => rdcnt(6),
      I3 => rdcnt(8),
      I4 => rdcnt(9),
      O => plusOp(9)
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(0),
      Q => rdcnt(0),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(1),
      Q => rdcnt(1),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(2),
      Q => rdcnt(2),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(3),
      Q => rdcnt(3),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(4),
      Q => rdcnt(4),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(5),
      Q => rdcnt(5),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(6),
      Q => rdcnt(6),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(7),
      Q => rdcnt(7),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(8),
      Q => rdcnt(8),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rdcnt_reg[8]_i_6_n_0\,
      CO(3 downto 1) => \NLW_rdcnt_reg[8]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rdcnt_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rdcnt[8]_i_7_n_0\,
      O(3 downto 0) => \NLW_rdcnt_reg[8]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \rdcnt[8]_i_8_n_0\
    );
\rdcnt_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rdcnt_reg[8]_i_6_n_0\,
      CO(2) => \rdcnt_reg[8]_i_6_n_1\,
      CO(1) => \rdcnt_reg[8]_i_6_n_2\,
      CO(0) => \rdcnt_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rdcnt[8]_i_9_n_0\,
      DI(2) => \rdcnt[8]_i_10_n_0\,
      DI(1) => \rdcnt[8]_i_11_n_0\,
      DI(0) => \rdcnt[8]_i_12_n_0\,
      O(3 downto 0) => \NLW_rdcnt_reg[8]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \rdcnt[8]_i_13_n_0\,
      S(2) => \rdcnt[8]_i_14_n_0\,
      S(1) => \rdcnt[8]_i_15_n_0\,
      S(0) => \rdcnt[8]_i_16_n_0\
    );
\rdcnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(9),
      Q => rdcnt(9),
      R => \rdcnt[8]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Memory__1\ is
  port (
    CLK : in STD_LOGIC;
    Addr0 : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write : in STD_LOGIC;
    Read : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Empty : out STD_LOGIC;
    Full : out STD_LOGIC;
    WRCNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Nullflag : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[0]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[1]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[2]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[3]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[4]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[5]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[6]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[7]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[8]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[9]\ : out STD_LOGIC
  );
  attribute Adresswidth : integer;
  attribute Adresswidth of \Memory__1\ : entity is 10;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Memory__1\ : entity is "Memory";
  attribute Wordwidth : integer;
  attribute Wordwidth of \Memory__1\ : entity is 8;
end \Memory__1\;

architecture STRUCTURE of \Memory__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^nullflag\ : STD_LOGIC;
  signal Nullflag_i_10_n_0 : STD_LOGIC;
  signal Nullflag_i_1_n_0 : STD_LOGIC;
  signal Nullflag_i_3_n_0 : STD_LOGIC;
  signal Nullflag_i_4_n_0 : STD_LOGIC;
  signal Nullflag_i_5_n_0 : STD_LOGIC;
  signal Nullflag_i_6_n_0 : STD_LOGIC;
  signal Nullflag_i_7_n_0 : STD_LOGIC;
  signal Nullflag_i_8_n_0 : STD_LOGIC;
  signal Nullflag_i_9_n_0 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_1 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_2 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_3 : STD_LOGIC;
  signal Read_Z1 : STD_LOGIC;
  signal WRCNT_loc : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of WRCNT_loc : signal is std.standard.true;
  signal \WRCNT_loc[7]_i_2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc[9]_i_2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Write_Z1 : STD_LOGIC;
  signal empty_loc_i_1_n_0 : STD_LOGIC;
  signal loadReg0 : STD_LOGIC;
  signal memory_reg_i_1_n_0 : STD_LOGIC;
  signal memory_reg_i_2_n_0 : STD_LOGIC;
  signal memory_reg_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdcnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdcnt0 : STD_LOGIC;
  signal \rdcnt[8]_i_10_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_11_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_12_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_13_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_14_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_15_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_16_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_9_n_0\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal NLW_Nullflag_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdcnt_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rdcnt_reg[8]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rdcnt_reg[8]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \WRCNT_loc_reg[0]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[1]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[2]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[3]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[4]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[5]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[6]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[7]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[8]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[9]\ : label is "yes";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 8192;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdcnt[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdcnt[8]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdcnt[9]_i_1\ : label is "soft_lutpair4";
begin
  Empty <= \^empty\;
  Full <= \<const0>\;
  Nullflag <= \^nullflag\;
  WRCNT(9 downto 0) <= WRCNT_loc(9 downto 0);
  \u_ila_0_WRCNT_loc[0]\ <= WRCNT_loc(0);
  \u_ila_0_WRCNT_loc[1]\ <= WRCNT_loc(1);
  \u_ila_0_WRCNT_loc[2]\ <= WRCNT_loc(2);
  \u_ila_0_WRCNT_loc[3]\ <= WRCNT_loc(3);
  \u_ila_0_WRCNT_loc[4]\ <= WRCNT_loc(4);
  \u_ila_0_WRCNT_loc[5]\ <= WRCNT_loc(5);
  \u_ila_0_WRCNT_loc[6]\ <= WRCNT_loc(6);
  \u_ila_0_WRCNT_loc[7]\ <= WRCNT_loc(7);
  \u_ila_0_WRCNT_loc[8]\ <= WRCNT_loc(8);
  \u_ila_0_WRCNT_loc[9]\ <= WRCNT_loc(9);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Nullflag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => p_0_in,
      I1 => \^empty\,
      I2 => Read_Z1,
      I3 => Read,
      I4 => RESET,
      I5 => \^nullflag\,
      O => Nullflag_i_1_n_0
    );
Nullflag_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => WRCNT_loc(0),
      I2 => WRCNT_loc(1),
      I3 => WRCNT_loc(3),
      O => Nullflag_i_10_n_0
    );
Nullflag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999994"
    )
        port map (
      I0 => rdcnt(9),
      I1 => WRCNT_loc(9),
      I2 => WRCNT_loc(7),
      I3 => Nullflag_i_7_n_0,
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(8),
      O => Nullflag_i_3_n_0
    );
Nullflag_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9600"
    )
        port map (
      I0 => rdcnt(6),
      I1 => Nullflag_i_7_n_0,
      I2 => WRCNT_loc(6),
      I3 => Nullflag_i_8_n_0,
      O => Nullflag_i_4_n_0
    );
Nullflag_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => Nullflag_i_9_n_0,
      I1 => WRCNT_loc(5),
      I2 => Nullflag_i_10_n_0,
      I3 => WRCNT_loc(4),
      I4 => rdcnt(5),
      I5 => rdcnt(4),
      O => Nullflag_i_5_n_0
    );
Nullflag_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842112840000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => WRCNT_loc(1),
      I2 => rdcnt(2),
      I3 => rdcnt(1),
      I4 => rdcnt(0),
      I5 => WRCNT_loc(0),
      O => Nullflag_i_6_n_0
    );
Nullflag_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => WRCNT_loc(2),
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(1),
      I4 => WRCNT_loc(3),
      I5 => WRCNT_loc(5),
      O => Nullflag_i_7_n_0
    );
Nullflag_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => rdcnt(7),
      I1 => rdcnt(8),
      I2 => WRCNT_loc(7),
      I3 => Nullflag_i_7_n_0,
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(8),
      O => Nullflag_i_8_n_0
    );
Nullflag_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => WRCNT_loc(3),
      I1 => WRCNT_loc(1),
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(2),
      I4 => rdcnt(3),
      O => Nullflag_i_9_n_0
    );
Nullflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Nullflag_i_1_n_0,
      Q => \^nullflag\,
      R => '0'
    );
Nullflag_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_in,
      CO(2) => Nullflag_reg_i_2_n_1,
      CO(1) => Nullflag_reg_i_2_n_2,
      CO(0) => Nullflag_reg_i_2_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_Nullflag_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => Nullflag_i_3_n_0,
      S(2) => Nullflag_i_4_n_0,
      S(1) => Nullflag_i_5_n_0,
      S(0) => Nullflag_i_6_n_0
    );
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Read,
      Q => Read_Z1,
      R => '0'
    );
\WRCNT_loc[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => WRCNT_loc(0),
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      O => \WRCNT_loc__0\(0)
    );
\WRCNT_loc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => WRCNT_loc(0),
      I1 => Write_Z1,
      I2 => Write,
      I3 => Addr0,
      I4 => WRCNT_loc(1),
      O => \WRCNT_loc__0\(1)
    );
\WRCNT_loc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF04000000"
    )
        port map (
      I0 => Addr0,
      I1 => Write,
      I2 => Write_Z1,
      I3 => WRCNT_loc(0),
      I4 => WRCNT_loc(1),
      I5 => WRCNT_loc(2),
      O => \WRCNT_loc__0\(2)
    );
\WRCNT_loc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(1),
      I1 => WRCNT_loc(0),
      I2 => memory_reg_i_1_n_0,
      I3 => WRCNT_loc(2),
      I4 => WRCNT_loc(3),
      O => \WRCNT_loc__0\(3)
    );
\WRCNT_loc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => memory_reg_i_1_n_0,
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(1),
      I4 => WRCNT_loc(3),
      I5 => WRCNT_loc(4),
      O => \WRCNT_loc__0\(4)
    );
\WRCNT_loc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => WRCNT_loc(3),
      I1 => \WRCNT_loc[7]_i_2_n_0\,
      I2 => WRCNT_loc(4),
      I3 => WRCNT_loc(5),
      O => \WRCNT_loc__0\(5)
    );
\WRCNT_loc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => \WRCNT_loc[7]_i_2_n_0\,
      I2 => WRCNT_loc(3),
      I3 => WRCNT_loc(5),
      I4 => WRCNT_loc(6),
      O => \WRCNT_loc__0\(6)
    );
\WRCNT_loc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(5),
      I1 => WRCNT_loc(3),
      I2 => \WRCNT_loc[7]_i_2_n_0\,
      I3 => WRCNT_loc(4),
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(7),
      O => \WRCNT_loc__0\(7)
    );
\WRCNT_loc[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      I4 => WRCNT_loc(0),
      I5 => WRCNT_loc(1),
      O => \WRCNT_loc[7]_i_2_n_0\
    );
\WRCNT_loc[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(6),
      I1 => \WRCNT_loc[9]_i_2_n_0\,
      I2 => WRCNT_loc(5),
      I3 => WRCNT_loc(7),
      I4 => WRCNT_loc(8),
      O => \WRCNT_loc__0\(8)
    );
\WRCNT_loc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(7),
      I1 => WRCNT_loc(5),
      I2 => \WRCNT_loc[9]_i_2_n_0\,
      I3 => WRCNT_loc(6),
      I4 => WRCNT_loc(8),
      I5 => WRCNT_loc(9),
      O => \WRCNT_loc__0\(9)
    );
\WRCNT_loc[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => WRCNT_loc(2),
      I2 => memory_reg_i_1_n_0,
      I3 => WRCNT_loc(0),
      I4 => WRCNT_loc(1),
      I5 => WRCNT_loc(3),
      O => \WRCNT_loc[9]_i_2_n_0\
    );
\WRCNT_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(0),
      Q => WRCNT_loc(0),
      R => RESET
    );
\WRCNT_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(1),
      Q => WRCNT_loc(1),
      R => RESET
    );
\WRCNT_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(2),
      Q => WRCNT_loc(2),
      R => RESET
    );
\WRCNT_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(3),
      Q => WRCNT_loc(3),
      R => RESET
    );
\WRCNT_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(4),
      Q => WRCNT_loc(4),
      R => RESET
    );
\WRCNT_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(5),
      Q => WRCNT_loc(5),
      R => RESET
    );
\WRCNT_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(6),
      Q => WRCNT_loc(6),
      R => RESET
    );
\WRCNT_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(7),
      Q => WRCNT_loc(7),
      R => RESET
    );
\WRCNT_loc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(8),
      Q => WRCNT_loc(8),
      R => RESET
    );
\WRCNT_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(9),
      Q => WRCNT_loc(9),
      R => RESET
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Write,
      Q => Write_Z1,
      R => '0'
    );
empty_loc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^empty\,
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      O => empty_loc_i_1_n_0
    );
empty_loc_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => empty_loc_i_1_n_0,
      Q => \^empty\,
      S => RESET
    );
loadReg0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Addr0,
      Q => loadReg0,
      R => RESET
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
      ADDRARDADDR(13 downto 4) => WRCNT_loc(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 4) => rdcnt(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK,
      CLKBWRCLK => CLK,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => Din(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_memory_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => Dout(7 downto 0),
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
      WEA(1) => memory_reg_i_3_n_0,
      WEA(0) => memory_reg_i_3_n_0,
      WEBWE(3 downto 0) => B"0000"
    );
memory_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Write_Z1,
      I1 => Write,
      I2 => Addr0,
      O => memory_reg_i_1_n_0
    );
memory_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1,
      I2 => \^empty\,
      I3 => loadReg0,
      I4 => RESET,
      O => memory_reg_i_2_n_0
    );
memory_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => memory_reg_i_3_n_0
    );
\rdcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      I2 => rdcnt(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt(1),
      I1 => rdcnt(0),
      I2 => rdcnt(2),
      I3 => rdcnt(3),
      O => plusOp(3)
    );
\rdcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt(2),
      I1 => rdcnt(0),
      I2 => rdcnt(1),
      I3 => rdcnt(3),
      I4 => rdcnt(4),
      O => plusOp(4)
    );
\rdcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rdcnt(3),
      I1 => rdcnt(1),
      I2 => rdcnt(0),
      I3 => rdcnt(2),
      I4 => rdcnt(4),
      I5 => rdcnt(5),
      O => plusOp(5)
    );
\rdcnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rdcnt[8]_i_5_n_0\,
      I1 => rdcnt(6),
      O => plusOp(6)
    );
\rdcnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rdcnt[8]_i_5_n_0\,
      I1 => rdcnt(6),
      I2 => rdcnt(7),
      O => plusOp(7)
    );
\rdcnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEEEEAEEEE"
    )
        port map (
      I0 => RESET,
      I1 => Addr0,
      I2 => \^empty\,
      I3 => Read_Z1,
      I4 => Read,
      I5 => \rdcnt_reg[8]_i_4_n_3\,
      O => \rdcnt[8]_i_1_n_0\
    );
\rdcnt[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(4),
      I1 => WRCNT_loc(4),
      I2 => WRCNT_loc(5),
      I3 => rdcnt(5),
      O => \rdcnt[8]_i_10_n_0\
    );
\rdcnt[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(2),
      I1 => WRCNT_loc(2),
      I2 => WRCNT_loc(3),
      I3 => rdcnt(3),
      O => \rdcnt[8]_i_11_n_0\
    );
\rdcnt[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(0),
      I1 => WRCNT_loc(0),
      I2 => WRCNT_loc(1),
      I3 => rdcnt(1),
      O => \rdcnt[8]_i_12_n_0\
    );
\rdcnt[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(6),
      I1 => WRCNT_loc(6),
      I2 => rdcnt(7),
      I3 => WRCNT_loc(7),
      O => \rdcnt[8]_i_13_n_0\
    );
\rdcnt[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(4),
      I1 => WRCNT_loc(4),
      I2 => rdcnt(5),
      I3 => WRCNT_loc(5),
      O => \rdcnt[8]_i_14_n_0\
    );
\rdcnt[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(2),
      I1 => WRCNT_loc(2),
      I2 => rdcnt(3),
      I3 => WRCNT_loc(3),
      O => \rdcnt[8]_i_15_n_0\
    );
\rdcnt[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(0),
      I1 => WRCNT_loc(0),
      I2 => rdcnt(1),
      I3 => WRCNT_loc(1),
      O => \rdcnt[8]_i_16_n_0\
    );
\rdcnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1,
      I2 => \^empty\,
      O => rdcnt0
    );
\rdcnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt(6),
      I1 => \rdcnt[8]_i_5_n_0\,
      I2 => rdcnt(7),
      I3 => rdcnt(8),
      O => plusOp(8)
    );
\rdcnt[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rdcnt(5),
      I1 => rdcnt(3),
      I2 => rdcnt(1),
      I3 => rdcnt(0),
      I4 => rdcnt(2),
      I5 => rdcnt(4),
      O => \rdcnt[8]_i_5_n_0\
    );
\rdcnt[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(8),
      I1 => WRCNT_loc(8),
      I2 => WRCNT_loc(9),
      I3 => rdcnt(9),
      O => \rdcnt[8]_i_7_n_0\
    );
\rdcnt[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(8),
      I1 => WRCNT_loc(8),
      I2 => rdcnt(9),
      I3 => WRCNT_loc(9),
      O => \rdcnt[8]_i_8_n_0\
    );
\rdcnt[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(6),
      I1 => WRCNT_loc(6),
      I2 => WRCNT_loc(7),
      I3 => rdcnt(7),
      O => \rdcnt[8]_i_9_n_0\
    );
\rdcnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt(7),
      I1 => \rdcnt[8]_i_5_n_0\,
      I2 => rdcnt(6),
      I3 => rdcnt(8),
      I4 => rdcnt(9),
      O => plusOp(9)
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(0),
      Q => rdcnt(0),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(1),
      Q => rdcnt(1),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(2),
      Q => rdcnt(2),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(3),
      Q => rdcnt(3),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(4),
      Q => rdcnt(4),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(5),
      Q => rdcnt(5),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(6),
      Q => rdcnt(6),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(7),
      Q => rdcnt(7),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(8),
      Q => rdcnt(8),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rdcnt_reg[8]_i_6_n_0\,
      CO(3 downto 1) => \NLW_rdcnt_reg[8]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rdcnt_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rdcnt[8]_i_7_n_0\,
      O(3 downto 0) => \NLW_rdcnt_reg[8]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \rdcnt[8]_i_8_n_0\
    );
\rdcnt_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rdcnt_reg[8]_i_6_n_0\,
      CO(2) => \rdcnt_reg[8]_i_6_n_1\,
      CO(1) => \rdcnt_reg[8]_i_6_n_2\,
      CO(0) => \rdcnt_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rdcnt[8]_i_9_n_0\,
      DI(2) => \rdcnt[8]_i_10_n_0\,
      DI(1) => \rdcnt[8]_i_11_n_0\,
      DI(0) => \rdcnt[8]_i_12_n_0\,
      O(3 downto 0) => \NLW_rdcnt_reg[8]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \rdcnt[8]_i_13_n_0\,
      S(2) => \rdcnt[8]_i_14_n_0\,
      S(1) => \rdcnt[8]_i_15_n_0\,
      S(0) => \rdcnt[8]_i_16_n_0\
    );
\rdcnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(9),
      Q => rdcnt(9),
      R => \rdcnt[8]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Memory__2\ is
  port (
    CLK : in STD_LOGIC;
    Addr0 : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write : in STD_LOGIC;
    Read : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Empty : out STD_LOGIC;
    Full : out STD_LOGIC;
    WRCNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Nullflag : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[0]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[1]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[2]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[3]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[4]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[5]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[6]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[7]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[8]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[9]\ : out STD_LOGIC
  );
  attribute Adresswidth : integer;
  attribute Adresswidth of \Memory__2\ : entity is 10;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Memory__2\ : entity is "Memory";
  attribute Wordwidth : integer;
  attribute Wordwidth of \Memory__2\ : entity is 8;
end \Memory__2\;

architecture STRUCTURE of \Memory__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^nullflag\ : STD_LOGIC;
  signal Nullflag_i_10_n_0 : STD_LOGIC;
  signal Nullflag_i_1_n_0 : STD_LOGIC;
  signal Nullflag_i_3_n_0 : STD_LOGIC;
  signal Nullflag_i_4_n_0 : STD_LOGIC;
  signal Nullflag_i_5_n_0 : STD_LOGIC;
  signal Nullflag_i_6_n_0 : STD_LOGIC;
  signal Nullflag_i_7_n_0 : STD_LOGIC;
  signal Nullflag_i_8_n_0 : STD_LOGIC;
  signal Nullflag_i_9_n_0 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_1 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_2 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_3 : STD_LOGIC;
  signal Read_Z1 : STD_LOGIC;
  signal WRCNT_loc : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of WRCNT_loc : signal is std.standard.true;
  signal \WRCNT_loc[7]_i_2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc[9]_i_2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Write_Z1 : STD_LOGIC;
  signal empty_loc_i_1_n_0 : STD_LOGIC;
  signal loadReg0 : STD_LOGIC;
  signal memory_reg_i_1_n_0 : STD_LOGIC;
  signal memory_reg_i_2_n_0 : STD_LOGIC;
  signal memory_reg_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdcnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdcnt0 : STD_LOGIC;
  signal \rdcnt[8]_i_10_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_11_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_12_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_13_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_14_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_15_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_16_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_9_n_0\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal NLW_Nullflag_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdcnt_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rdcnt_reg[8]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rdcnt_reg[8]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \WRCNT_loc_reg[0]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[1]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[2]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[3]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[4]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[5]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[6]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[7]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[8]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[9]\ : label is "yes";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 8192;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rdcnt[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rdcnt[8]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rdcnt[9]_i_1\ : label is "soft_lutpair20";
begin
  Empty <= \^empty\;
  Full <= \<const0>\;
  Nullflag <= \^nullflag\;
  WRCNT(9 downto 0) <= WRCNT_loc(9 downto 0);
  \u_ila_0_WRCNT_loc[0]\ <= WRCNT_loc(0);
  \u_ila_0_WRCNT_loc[1]\ <= WRCNT_loc(1);
  \u_ila_0_WRCNT_loc[2]\ <= WRCNT_loc(2);
  \u_ila_0_WRCNT_loc[3]\ <= WRCNT_loc(3);
  \u_ila_0_WRCNT_loc[4]\ <= WRCNT_loc(4);
  \u_ila_0_WRCNT_loc[5]\ <= WRCNT_loc(5);
  \u_ila_0_WRCNT_loc[6]\ <= WRCNT_loc(6);
  \u_ila_0_WRCNT_loc[7]\ <= WRCNT_loc(7);
  \u_ila_0_WRCNT_loc[8]\ <= WRCNT_loc(8);
  \u_ila_0_WRCNT_loc[9]\ <= WRCNT_loc(9);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Nullflag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => p_0_in,
      I1 => \^empty\,
      I2 => Read_Z1,
      I3 => Read,
      I4 => RESET,
      I5 => \^nullflag\,
      O => Nullflag_i_1_n_0
    );
Nullflag_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => WRCNT_loc(0),
      I2 => WRCNT_loc(1),
      I3 => WRCNT_loc(3),
      O => Nullflag_i_10_n_0
    );
Nullflag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999994"
    )
        port map (
      I0 => rdcnt(9),
      I1 => WRCNT_loc(9),
      I2 => WRCNT_loc(7),
      I3 => Nullflag_i_7_n_0,
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(8),
      O => Nullflag_i_3_n_0
    );
Nullflag_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9600"
    )
        port map (
      I0 => rdcnt(6),
      I1 => Nullflag_i_7_n_0,
      I2 => WRCNT_loc(6),
      I3 => Nullflag_i_8_n_0,
      O => Nullflag_i_4_n_0
    );
Nullflag_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => Nullflag_i_9_n_0,
      I1 => WRCNT_loc(5),
      I2 => Nullflag_i_10_n_0,
      I3 => WRCNT_loc(4),
      I4 => rdcnt(5),
      I5 => rdcnt(4),
      O => Nullflag_i_5_n_0
    );
Nullflag_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842112840000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => WRCNT_loc(1),
      I2 => rdcnt(2),
      I3 => rdcnt(1),
      I4 => rdcnt(0),
      I5 => WRCNT_loc(0),
      O => Nullflag_i_6_n_0
    );
Nullflag_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => WRCNT_loc(2),
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(1),
      I4 => WRCNT_loc(3),
      I5 => WRCNT_loc(5),
      O => Nullflag_i_7_n_0
    );
Nullflag_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => rdcnt(7),
      I1 => rdcnt(8),
      I2 => WRCNT_loc(7),
      I3 => Nullflag_i_7_n_0,
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(8),
      O => Nullflag_i_8_n_0
    );
Nullflag_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => WRCNT_loc(3),
      I1 => WRCNT_loc(1),
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(2),
      I4 => rdcnt(3),
      O => Nullflag_i_9_n_0
    );
Nullflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Nullflag_i_1_n_0,
      Q => \^nullflag\,
      R => '0'
    );
Nullflag_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_in,
      CO(2) => Nullflag_reg_i_2_n_1,
      CO(1) => Nullflag_reg_i_2_n_2,
      CO(0) => Nullflag_reg_i_2_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_Nullflag_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => Nullflag_i_3_n_0,
      S(2) => Nullflag_i_4_n_0,
      S(1) => Nullflag_i_5_n_0,
      S(0) => Nullflag_i_6_n_0
    );
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Read,
      Q => Read_Z1,
      R => '0'
    );
\WRCNT_loc[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => WRCNT_loc(0),
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      O => \WRCNT_loc__0\(0)
    );
\WRCNT_loc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => WRCNT_loc(0),
      I1 => Write_Z1,
      I2 => Write,
      I3 => Addr0,
      I4 => WRCNT_loc(1),
      O => \WRCNT_loc__0\(1)
    );
\WRCNT_loc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF04000000"
    )
        port map (
      I0 => Addr0,
      I1 => Write,
      I2 => Write_Z1,
      I3 => WRCNT_loc(0),
      I4 => WRCNT_loc(1),
      I5 => WRCNT_loc(2),
      O => \WRCNT_loc__0\(2)
    );
\WRCNT_loc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(1),
      I1 => WRCNT_loc(0),
      I2 => memory_reg_i_1_n_0,
      I3 => WRCNT_loc(2),
      I4 => WRCNT_loc(3),
      O => \WRCNT_loc__0\(3)
    );
\WRCNT_loc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => memory_reg_i_1_n_0,
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(1),
      I4 => WRCNT_loc(3),
      I5 => WRCNT_loc(4),
      O => \WRCNT_loc__0\(4)
    );
\WRCNT_loc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => WRCNT_loc(3),
      I1 => \WRCNT_loc[7]_i_2_n_0\,
      I2 => WRCNT_loc(4),
      I3 => WRCNT_loc(5),
      O => \WRCNT_loc__0\(5)
    );
\WRCNT_loc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => \WRCNT_loc[7]_i_2_n_0\,
      I2 => WRCNT_loc(3),
      I3 => WRCNT_loc(5),
      I4 => WRCNT_loc(6),
      O => \WRCNT_loc__0\(6)
    );
\WRCNT_loc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(5),
      I1 => WRCNT_loc(3),
      I2 => \WRCNT_loc[7]_i_2_n_0\,
      I3 => WRCNT_loc(4),
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(7),
      O => \WRCNT_loc__0\(7)
    );
\WRCNT_loc[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      I4 => WRCNT_loc(0),
      I5 => WRCNT_loc(1),
      O => \WRCNT_loc[7]_i_2_n_0\
    );
\WRCNT_loc[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(6),
      I1 => \WRCNT_loc[9]_i_2_n_0\,
      I2 => WRCNT_loc(5),
      I3 => WRCNT_loc(7),
      I4 => WRCNT_loc(8),
      O => \WRCNT_loc__0\(8)
    );
\WRCNT_loc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(7),
      I1 => WRCNT_loc(5),
      I2 => \WRCNT_loc[9]_i_2_n_0\,
      I3 => WRCNT_loc(6),
      I4 => WRCNT_loc(8),
      I5 => WRCNT_loc(9),
      O => \WRCNT_loc__0\(9)
    );
\WRCNT_loc[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => WRCNT_loc(2),
      I2 => memory_reg_i_1_n_0,
      I3 => WRCNT_loc(0),
      I4 => WRCNT_loc(1),
      I5 => WRCNT_loc(3),
      O => \WRCNT_loc[9]_i_2_n_0\
    );
\WRCNT_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(0),
      Q => WRCNT_loc(0),
      R => RESET
    );
\WRCNT_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(1),
      Q => WRCNT_loc(1),
      R => RESET
    );
\WRCNT_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(2),
      Q => WRCNT_loc(2),
      R => RESET
    );
\WRCNT_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(3),
      Q => WRCNT_loc(3),
      R => RESET
    );
\WRCNT_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(4),
      Q => WRCNT_loc(4),
      R => RESET
    );
\WRCNT_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(5),
      Q => WRCNT_loc(5),
      R => RESET
    );
\WRCNT_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(6),
      Q => WRCNT_loc(6),
      R => RESET
    );
\WRCNT_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(7),
      Q => WRCNT_loc(7),
      R => RESET
    );
\WRCNT_loc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(8),
      Q => WRCNT_loc(8),
      R => RESET
    );
\WRCNT_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(9),
      Q => WRCNT_loc(9),
      R => RESET
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Write,
      Q => Write_Z1,
      R => '0'
    );
empty_loc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^empty\,
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      O => empty_loc_i_1_n_0
    );
empty_loc_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => empty_loc_i_1_n_0,
      Q => \^empty\,
      S => RESET
    );
loadReg0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Addr0,
      Q => loadReg0,
      R => RESET
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
      ADDRARDADDR(13 downto 4) => WRCNT_loc(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 4) => rdcnt(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK,
      CLKBWRCLK => CLK,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => Din(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_memory_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => Dout(7 downto 0),
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
      WEA(1) => memory_reg_i_3_n_0,
      WEA(0) => memory_reg_i_3_n_0,
      WEBWE(3 downto 0) => B"0000"
    );
memory_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Write_Z1,
      I1 => Write,
      I2 => Addr0,
      O => memory_reg_i_1_n_0
    );
memory_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1,
      I2 => \^empty\,
      I3 => loadReg0,
      I4 => RESET,
      O => memory_reg_i_2_n_0
    );
memory_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => memory_reg_i_3_n_0
    );
\rdcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      I2 => rdcnt(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt(1),
      I1 => rdcnt(0),
      I2 => rdcnt(2),
      I3 => rdcnt(3),
      O => plusOp(3)
    );
\rdcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt(2),
      I1 => rdcnt(0),
      I2 => rdcnt(1),
      I3 => rdcnt(3),
      I4 => rdcnt(4),
      O => plusOp(4)
    );
\rdcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rdcnt(3),
      I1 => rdcnt(1),
      I2 => rdcnt(0),
      I3 => rdcnt(2),
      I4 => rdcnt(4),
      I5 => rdcnt(5),
      O => plusOp(5)
    );
\rdcnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rdcnt[8]_i_5_n_0\,
      I1 => rdcnt(6),
      O => plusOp(6)
    );
\rdcnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rdcnt[8]_i_5_n_0\,
      I1 => rdcnt(6),
      I2 => rdcnt(7),
      O => plusOp(7)
    );
\rdcnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEEEEAEEEE"
    )
        port map (
      I0 => RESET,
      I1 => Addr0,
      I2 => \^empty\,
      I3 => Read_Z1,
      I4 => Read,
      I5 => \rdcnt_reg[8]_i_4_n_3\,
      O => \rdcnt[8]_i_1_n_0\
    );
\rdcnt[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(4),
      I1 => WRCNT_loc(4),
      I2 => WRCNT_loc(5),
      I3 => rdcnt(5),
      O => \rdcnt[8]_i_10_n_0\
    );
\rdcnt[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(2),
      I1 => WRCNT_loc(2),
      I2 => WRCNT_loc(3),
      I3 => rdcnt(3),
      O => \rdcnt[8]_i_11_n_0\
    );
\rdcnt[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(0),
      I1 => WRCNT_loc(0),
      I2 => WRCNT_loc(1),
      I3 => rdcnt(1),
      O => \rdcnt[8]_i_12_n_0\
    );
\rdcnt[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(6),
      I1 => WRCNT_loc(6),
      I2 => rdcnt(7),
      I3 => WRCNT_loc(7),
      O => \rdcnt[8]_i_13_n_0\
    );
\rdcnt[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(4),
      I1 => WRCNT_loc(4),
      I2 => rdcnt(5),
      I3 => WRCNT_loc(5),
      O => \rdcnt[8]_i_14_n_0\
    );
\rdcnt[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(2),
      I1 => WRCNT_loc(2),
      I2 => rdcnt(3),
      I3 => WRCNT_loc(3),
      O => \rdcnt[8]_i_15_n_0\
    );
\rdcnt[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(0),
      I1 => WRCNT_loc(0),
      I2 => rdcnt(1),
      I3 => WRCNT_loc(1),
      O => \rdcnt[8]_i_16_n_0\
    );
\rdcnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1,
      I2 => \^empty\,
      O => rdcnt0
    );
\rdcnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt(6),
      I1 => \rdcnt[8]_i_5_n_0\,
      I2 => rdcnt(7),
      I3 => rdcnt(8),
      O => plusOp(8)
    );
\rdcnt[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rdcnt(5),
      I1 => rdcnt(3),
      I2 => rdcnt(1),
      I3 => rdcnt(0),
      I4 => rdcnt(2),
      I5 => rdcnt(4),
      O => \rdcnt[8]_i_5_n_0\
    );
\rdcnt[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(8),
      I1 => WRCNT_loc(8),
      I2 => WRCNT_loc(9),
      I3 => rdcnt(9),
      O => \rdcnt[8]_i_7_n_0\
    );
\rdcnt[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(8),
      I1 => WRCNT_loc(8),
      I2 => rdcnt(9),
      I3 => WRCNT_loc(9),
      O => \rdcnt[8]_i_8_n_0\
    );
\rdcnt[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(6),
      I1 => WRCNT_loc(6),
      I2 => WRCNT_loc(7),
      I3 => rdcnt(7),
      O => \rdcnt[8]_i_9_n_0\
    );
\rdcnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt(7),
      I1 => \rdcnt[8]_i_5_n_0\,
      I2 => rdcnt(6),
      I3 => rdcnt(8),
      I4 => rdcnt(9),
      O => plusOp(9)
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(0),
      Q => rdcnt(0),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(1),
      Q => rdcnt(1),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(2),
      Q => rdcnt(2),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(3),
      Q => rdcnt(3),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(4),
      Q => rdcnt(4),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(5),
      Q => rdcnt(5),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(6),
      Q => rdcnt(6),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(7),
      Q => rdcnt(7),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(8),
      Q => rdcnt(8),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rdcnt_reg[8]_i_6_n_0\,
      CO(3 downto 1) => \NLW_rdcnt_reg[8]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rdcnt_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rdcnt[8]_i_7_n_0\,
      O(3 downto 0) => \NLW_rdcnt_reg[8]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \rdcnt[8]_i_8_n_0\
    );
\rdcnt_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rdcnt_reg[8]_i_6_n_0\,
      CO(2) => \rdcnt_reg[8]_i_6_n_1\,
      CO(1) => \rdcnt_reg[8]_i_6_n_2\,
      CO(0) => \rdcnt_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rdcnt[8]_i_9_n_0\,
      DI(2) => \rdcnt[8]_i_10_n_0\,
      DI(1) => \rdcnt[8]_i_11_n_0\,
      DI(0) => \rdcnt[8]_i_12_n_0\,
      O(3 downto 0) => \NLW_rdcnt_reg[8]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \rdcnt[8]_i_13_n_0\,
      S(2) => \rdcnt[8]_i_14_n_0\,
      S(1) => \rdcnt[8]_i_15_n_0\,
      S(0) => \rdcnt[8]_i_16_n_0\
    );
\rdcnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(9),
      Q => rdcnt(9),
      R => \rdcnt[8]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Memory__3\ is
  port (
    CLK : in STD_LOGIC;
    Addr0 : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write : in STD_LOGIC;
    Read : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Empty : out STD_LOGIC;
    Full : out STD_LOGIC;
    WRCNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Nullflag : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[0]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[1]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[2]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[3]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[4]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[5]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[6]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[7]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[8]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[9]\ : out STD_LOGIC
  );
  attribute Adresswidth : integer;
  attribute Adresswidth of \Memory__3\ : entity is 10;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Memory__3\ : entity is "Memory";
  attribute Wordwidth : integer;
  attribute Wordwidth of \Memory__3\ : entity is 8;
end \Memory__3\;

architecture STRUCTURE of \Memory__3\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^nullflag\ : STD_LOGIC;
  signal Nullflag_i_10_n_0 : STD_LOGIC;
  signal Nullflag_i_1_n_0 : STD_LOGIC;
  signal Nullflag_i_3_n_0 : STD_LOGIC;
  signal Nullflag_i_4_n_0 : STD_LOGIC;
  signal Nullflag_i_5_n_0 : STD_LOGIC;
  signal Nullflag_i_6_n_0 : STD_LOGIC;
  signal Nullflag_i_7_n_0 : STD_LOGIC;
  signal Nullflag_i_8_n_0 : STD_LOGIC;
  signal Nullflag_i_9_n_0 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_1 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_2 : STD_LOGIC;
  signal Nullflag_reg_i_2_n_3 : STD_LOGIC;
  signal Read_Z1 : STD_LOGIC;
  signal WRCNT_loc : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of WRCNT_loc : signal is std.standard.true;
  signal \WRCNT_loc[7]_i_2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc[9]_i_2_n_0\ : STD_LOGIC;
  signal \WRCNT_loc__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Write_Z1 : STD_LOGIC;
  signal empty_loc_i_1_n_0 : STD_LOGIC;
  signal loadReg0 : STD_LOGIC;
  signal memory_reg_i_1_n_0 : STD_LOGIC;
  signal memory_reg_i_2_n_0 : STD_LOGIC;
  signal memory_reg_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdcnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdcnt0 : STD_LOGIC;
  signal \rdcnt[8]_i_10_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_11_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_12_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_13_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_14_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_15_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_16_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \rdcnt[8]_i_9_n_0\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \rdcnt_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal NLW_Nullflag_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdcnt_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rdcnt_reg[8]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rdcnt_reg[8]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \WRCNT_loc_reg[0]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[1]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[2]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[3]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[4]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[5]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[6]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[7]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[8]\ : label is "yes";
  attribute KEEP of \WRCNT_loc_reg[9]\ : label is "yes";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 8192;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdcnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdcnt[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdcnt[9]_i_1\ : label is "soft_lutpair0";
begin
  Empty <= \^empty\;
  Full <= \<const0>\;
  Nullflag <= \^nullflag\;
  WRCNT(9 downto 0) <= WRCNT_loc(9 downto 0);
  \u_ila_0_WRCNT_loc[0]\ <= WRCNT_loc(0);
  \u_ila_0_WRCNT_loc[1]\ <= WRCNT_loc(1);
  \u_ila_0_WRCNT_loc[2]\ <= WRCNT_loc(2);
  \u_ila_0_WRCNT_loc[3]\ <= WRCNT_loc(3);
  \u_ila_0_WRCNT_loc[4]\ <= WRCNT_loc(4);
  \u_ila_0_WRCNT_loc[5]\ <= WRCNT_loc(5);
  \u_ila_0_WRCNT_loc[6]\ <= WRCNT_loc(6);
  \u_ila_0_WRCNT_loc[7]\ <= WRCNT_loc(7);
  \u_ila_0_WRCNT_loc[8]\ <= WRCNT_loc(8);
  \u_ila_0_WRCNT_loc[9]\ <= WRCNT_loc(9);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Nullflag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => p_0_in,
      I1 => \^empty\,
      I2 => Read_Z1,
      I3 => Read,
      I4 => RESET,
      I5 => \^nullflag\,
      O => Nullflag_i_1_n_0
    );
Nullflag_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => WRCNT_loc(0),
      I2 => WRCNT_loc(1),
      I3 => WRCNT_loc(3),
      O => Nullflag_i_10_n_0
    );
Nullflag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999994"
    )
        port map (
      I0 => rdcnt(9),
      I1 => WRCNT_loc(9),
      I2 => WRCNT_loc(7),
      I3 => Nullflag_i_7_n_0,
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(8),
      O => Nullflag_i_3_n_0
    );
Nullflag_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9600"
    )
        port map (
      I0 => rdcnt(6),
      I1 => Nullflag_i_7_n_0,
      I2 => WRCNT_loc(6),
      I3 => Nullflag_i_8_n_0,
      O => Nullflag_i_4_n_0
    );
Nullflag_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => Nullflag_i_9_n_0,
      I1 => WRCNT_loc(5),
      I2 => Nullflag_i_10_n_0,
      I3 => WRCNT_loc(4),
      I4 => rdcnt(5),
      I5 => rdcnt(4),
      O => Nullflag_i_5_n_0
    );
Nullflag_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842112840000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => WRCNT_loc(1),
      I2 => rdcnt(2),
      I3 => rdcnt(1),
      I4 => rdcnt(0),
      I5 => WRCNT_loc(0),
      O => Nullflag_i_6_n_0
    );
Nullflag_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => WRCNT_loc(2),
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(1),
      I4 => WRCNT_loc(3),
      I5 => WRCNT_loc(5),
      O => Nullflag_i_7_n_0
    );
Nullflag_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => rdcnt(7),
      I1 => rdcnt(8),
      I2 => WRCNT_loc(7),
      I3 => Nullflag_i_7_n_0,
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(8),
      O => Nullflag_i_8_n_0
    );
Nullflag_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => WRCNT_loc(3),
      I1 => WRCNT_loc(1),
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(2),
      I4 => rdcnt(3),
      O => Nullflag_i_9_n_0
    );
Nullflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Nullflag_i_1_n_0,
      Q => \^nullflag\,
      R => '0'
    );
Nullflag_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_in,
      CO(2) => Nullflag_reg_i_2_n_1,
      CO(1) => Nullflag_reg_i_2_n_2,
      CO(0) => Nullflag_reg_i_2_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_Nullflag_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => Nullflag_i_3_n_0,
      S(2) => Nullflag_i_4_n_0,
      S(1) => Nullflag_i_5_n_0,
      S(0) => Nullflag_i_6_n_0
    );
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Read,
      Q => Read_Z1,
      R => '0'
    );
\WRCNT_loc[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => WRCNT_loc(0),
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      O => \WRCNT_loc__0\(0)
    );
\WRCNT_loc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => WRCNT_loc(0),
      I1 => Write_Z1,
      I2 => Write,
      I3 => Addr0,
      I4 => WRCNT_loc(1),
      O => \WRCNT_loc__0\(1)
    );
\WRCNT_loc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF04000000"
    )
        port map (
      I0 => Addr0,
      I1 => Write,
      I2 => Write_Z1,
      I3 => WRCNT_loc(0),
      I4 => WRCNT_loc(1),
      I5 => WRCNT_loc(2),
      O => \WRCNT_loc__0\(2)
    );
\WRCNT_loc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(1),
      I1 => WRCNT_loc(0),
      I2 => memory_reg_i_1_n_0,
      I3 => WRCNT_loc(2),
      I4 => WRCNT_loc(3),
      O => \WRCNT_loc__0\(3)
    );
\WRCNT_loc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => memory_reg_i_1_n_0,
      I2 => WRCNT_loc(0),
      I3 => WRCNT_loc(1),
      I4 => WRCNT_loc(3),
      I5 => WRCNT_loc(4),
      O => \WRCNT_loc__0\(4)
    );
\WRCNT_loc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => WRCNT_loc(3),
      I1 => \WRCNT_loc[7]_i_2_n_0\,
      I2 => WRCNT_loc(4),
      I3 => WRCNT_loc(5),
      O => \WRCNT_loc__0\(5)
    );
\WRCNT_loc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => \WRCNT_loc[7]_i_2_n_0\,
      I2 => WRCNT_loc(3),
      I3 => WRCNT_loc(5),
      I4 => WRCNT_loc(6),
      O => \WRCNT_loc__0\(6)
    );
\WRCNT_loc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(5),
      I1 => WRCNT_loc(3),
      I2 => \WRCNT_loc[7]_i_2_n_0\,
      I3 => WRCNT_loc(4),
      I4 => WRCNT_loc(6),
      I5 => WRCNT_loc(7),
      O => \WRCNT_loc__0\(7)
    );
\WRCNT_loc[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => WRCNT_loc(2),
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      I4 => WRCNT_loc(0),
      I5 => WRCNT_loc(1),
      O => \WRCNT_loc[7]_i_2_n_0\
    );
\WRCNT_loc[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => WRCNT_loc(6),
      I1 => \WRCNT_loc[9]_i_2_n_0\,
      I2 => WRCNT_loc(5),
      I3 => WRCNT_loc(7),
      I4 => WRCNT_loc(8),
      O => \WRCNT_loc__0\(8)
    );
\WRCNT_loc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => WRCNT_loc(7),
      I1 => WRCNT_loc(5),
      I2 => \WRCNT_loc[9]_i_2_n_0\,
      I3 => WRCNT_loc(6),
      I4 => WRCNT_loc(8),
      I5 => WRCNT_loc(9),
      O => \WRCNT_loc__0\(9)
    );
\WRCNT_loc[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => WRCNT_loc(4),
      I1 => WRCNT_loc(2),
      I2 => memory_reg_i_1_n_0,
      I3 => WRCNT_loc(0),
      I4 => WRCNT_loc(1),
      I5 => WRCNT_loc(3),
      O => \WRCNT_loc[9]_i_2_n_0\
    );
\WRCNT_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(0),
      Q => WRCNT_loc(0),
      R => RESET
    );
\WRCNT_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(1),
      Q => WRCNT_loc(1),
      R => RESET
    );
\WRCNT_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(2),
      Q => WRCNT_loc(2),
      R => RESET
    );
\WRCNT_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(3),
      Q => WRCNT_loc(3),
      R => RESET
    );
\WRCNT_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(4),
      Q => WRCNT_loc(4),
      R => RESET
    );
\WRCNT_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(5),
      Q => WRCNT_loc(5),
      R => RESET
    );
\WRCNT_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(6),
      Q => WRCNT_loc(6),
      R => RESET
    );
\WRCNT_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(7),
      Q => WRCNT_loc(7),
      R => RESET
    );
\WRCNT_loc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(8),
      Q => WRCNT_loc(8),
      R => RESET
    );
\WRCNT_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \WRCNT_loc__0\(9),
      Q => WRCNT_loc(9),
      R => RESET
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Write,
      Q => Write_Z1,
      R => '0'
    );
empty_loc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^empty\,
      I1 => Addr0,
      I2 => Write,
      I3 => Write_Z1,
      O => empty_loc_i_1_n_0
    );
empty_loc_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => empty_loc_i_1_n_0,
      Q => \^empty\,
      S => RESET
    );
loadReg0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Addr0,
      Q => loadReg0,
      R => RESET
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
      ADDRARDADDR(13 downto 4) => WRCNT_loc(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 4) => rdcnt(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK,
      CLKBWRCLK => CLK,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => Din(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_memory_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => Dout(7 downto 0),
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
      WEA(1) => memory_reg_i_3_n_0,
      WEA(0) => memory_reg_i_3_n_0,
      WEBWE(3 downto 0) => B"0000"
    );
memory_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Write_Z1,
      I1 => Write,
      I2 => Addr0,
      O => memory_reg_i_1_n_0
    );
memory_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1,
      I2 => \^empty\,
      I3 => loadReg0,
      I4 => RESET,
      O => memory_reg_i_2_n_0
    );
memory_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => memory_reg_i_3_n_0
    );
\rdcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      I2 => rdcnt(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt(1),
      I1 => rdcnt(0),
      I2 => rdcnt(2),
      I3 => rdcnt(3),
      O => plusOp(3)
    );
\rdcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt(2),
      I1 => rdcnt(0),
      I2 => rdcnt(1),
      I3 => rdcnt(3),
      I4 => rdcnt(4),
      O => plusOp(4)
    );
\rdcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rdcnt(3),
      I1 => rdcnt(1),
      I2 => rdcnt(0),
      I3 => rdcnt(2),
      I4 => rdcnt(4),
      I5 => rdcnt(5),
      O => plusOp(5)
    );
\rdcnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rdcnt[8]_i_5_n_0\,
      I1 => rdcnt(6),
      O => plusOp(6)
    );
\rdcnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rdcnt[8]_i_5_n_0\,
      I1 => rdcnt(6),
      I2 => rdcnt(7),
      O => plusOp(7)
    );
\rdcnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEEEEAEEEE"
    )
        port map (
      I0 => RESET,
      I1 => Addr0,
      I2 => \^empty\,
      I3 => Read_Z1,
      I4 => Read,
      I5 => \rdcnt_reg[8]_i_4_n_3\,
      O => \rdcnt[8]_i_1_n_0\
    );
\rdcnt[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(4),
      I1 => WRCNT_loc(4),
      I2 => WRCNT_loc(5),
      I3 => rdcnt(5),
      O => \rdcnt[8]_i_10_n_0\
    );
\rdcnt[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(2),
      I1 => WRCNT_loc(2),
      I2 => WRCNT_loc(3),
      I3 => rdcnt(3),
      O => \rdcnt[8]_i_11_n_0\
    );
\rdcnt[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(0),
      I1 => WRCNT_loc(0),
      I2 => WRCNT_loc(1),
      I3 => rdcnt(1),
      O => \rdcnt[8]_i_12_n_0\
    );
\rdcnt[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(6),
      I1 => WRCNT_loc(6),
      I2 => rdcnt(7),
      I3 => WRCNT_loc(7),
      O => \rdcnt[8]_i_13_n_0\
    );
\rdcnt[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(4),
      I1 => WRCNT_loc(4),
      I2 => rdcnt(5),
      I3 => WRCNT_loc(5),
      O => \rdcnt[8]_i_14_n_0\
    );
\rdcnt[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(2),
      I1 => WRCNT_loc(2),
      I2 => rdcnt(3),
      I3 => WRCNT_loc(3),
      O => \rdcnt[8]_i_15_n_0\
    );
\rdcnt[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(0),
      I1 => WRCNT_loc(0),
      I2 => rdcnt(1),
      I3 => WRCNT_loc(1),
      O => \rdcnt[8]_i_16_n_0\
    );
\rdcnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Read,
      I1 => Read_Z1,
      I2 => \^empty\,
      O => rdcnt0
    );
\rdcnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rdcnt(6),
      I1 => \rdcnt[8]_i_5_n_0\,
      I2 => rdcnt(7),
      I3 => rdcnt(8),
      O => plusOp(8)
    );
\rdcnt[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rdcnt(5),
      I1 => rdcnt(3),
      I2 => rdcnt(1),
      I3 => rdcnt(0),
      I4 => rdcnt(2),
      I5 => rdcnt(4),
      O => \rdcnt[8]_i_5_n_0\
    );
\rdcnt[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(8),
      I1 => WRCNT_loc(8),
      I2 => WRCNT_loc(9),
      I3 => rdcnt(9),
      O => \rdcnt[8]_i_7_n_0\
    );
\rdcnt[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(8),
      I1 => WRCNT_loc(8),
      I2 => rdcnt(9),
      I3 => WRCNT_loc(9),
      O => \rdcnt[8]_i_8_n_0\
    );
\rdcnt[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rdcnt(6),
      I1 => WRCNT_loc(6),
      I2 => WRCNT_loc(7),
      I3 => rdcnt(7),
      O => \rdcnt[8]_i_9_n_0\
    );
\rdcnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rdcnt(7),
      I1 => \rdcnt[8]_i_5_n_0\,
      I2 => rdcnt(6),
      I3 => rdcnt(8),
      I4 => rdcnt(9),
      O => plusOp(9)
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(0),
      Q => rdcnt(0),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(1),
      Q => rdcnt(1),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(2),
      Q => rdcnt(2),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(3),
      Q => rdcnt(3),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(4),
      Q => rdcnt(4),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(5),
      Q => rdcnt(5),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(6),
      Q => rdcnt(6),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(7),
      Q => rdcnt(7),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(8),
      Q => rdcnt(8),
      R => \rdcnt[8]_i_1_n_0\
    );
\rdcnt_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rdcnt_reg[8]_i_6_n_0\,
      CO(3 downto 1) => \NLW_rdcnt_reg[8]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rdcnt_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rdcnt[8]_i_7_n_0\,
      O(3 downto 0) => \NLW_rdcnt_reg[8]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \rdcnt[8]_i_8_n_0\
    );
\rdcnt_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rdcnt_reg[8]_i_6_n_0\,
      CO(2) => \rdcnt_reg[8]_i_6_n_1\,
      CO(1) => \rdcnt_reg[8]_i_6_n_2\,
      CO(0) => \rdcnt_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rdcnt[8]_i_9_n_0\,
      DI(2) => \rdcnt[8]_i_10_n_0\,
      DI(1) => \rdcnt[8]_i_11_n_0\,
      DI(0) => \rdcnt[8]_i_12_n_0\,
      O(3 downto 0) => \NLW_rdcnt_reg[8]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \rdcnt[8]_i_13_n_0\,
      S(2) => \rdcnt[8]_i_14_n_0\,
      S(1) => \rdcnt[8]_i_15_n_0\,
      S(0) => \rdcnt[8]_i_16_n_0\
    );
\rdcnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rdcnt0,
      D => plusOp(9),
      Q => rdcnt(9),
      R => \rdcnt[8]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_Master is
  port (
    SS_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    spiclk_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_spitxstate_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \State_reg[0]\ : in STD_LOGIC;
    \State_reg[1]\ : in STD_LOGIC;
    \State_reg[2]\ : in STD_LOGIC;
    mux4_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    EnWrite_IBUF : in STD_LOGIC;
    ChanAddressReg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Nullflag : in STD_LOGIC;
    WaveID : in STD_LOGIC;
    \State_reg[3]\ : in STD_LOGIC;
    \u_ila_0_tx_reg2[0]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[1]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[2]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[3]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[4]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[5]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[6]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[7]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[8]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[9]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[10]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[11]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[12]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[13]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[14]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[15]\ : out STD_LOGIC
  );
end SPI_Master;

architecture STRUCTURE of SPI_Master is
  signal \FSM_onehot_spitxstate[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \SS_i_1__0_n_0\ : STD_LOGIC;
  signal \SS_i_2__0_n_0\ : STD_LOGIC;
  signal \State[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \State[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \State[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \State[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \State[3]_i_3__0_n_0\ : STD_LOGIC;
  signal TX_Done : STD_LOGIC;
  signal \TX_Done_i_1__0_n_0\ : STD_LOGIC;
  signal \bitcounter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[4]\ : STD_LOGIC;
  signal delay : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \delay[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \delay_reg_n_0_[0]\ : STD_LOGIC;
  signal \delay_reg_n_0_[1]\ : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal \spiclk_i_1__0_n_0\ : STD_LOGIC;
  signal \spiclk_i_2__0_n_0\ : STD_LOGIC;
  signal \^spiclk_reg_0\ : STD_LOGIC;
  signal spiclklast : STD_LOGIC;
  signal tx_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of tx_reg2 : signal is std.standard.true;
  signal \tx_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \tx_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_reg__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[1]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[2]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[2]_i_4__0\ : label is "soft_lutpair32";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[0]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[1]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[2]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute SOFT_HLUTNM of \SS_i_2__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \State[0]_i_2__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \State[3]_i_4__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bitcounter[0]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bitcounter[1]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bitcounter[2]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bitcounter[3]_i_3__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bitcounter[4]_i_2__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \delay[1]_i_2__0\ : label is "soft_lutpair29";
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
  spiclk_reg_0 <= \^spiclk_reg_0\;
  \u_ila_0_tx_reg2[0]\ <= tx_reg2(0);
  \u_ila_0_tx_reg2[10]\ <= tx_reg2(10);
  \u_ila_0_tx_reg2[11]\ <= tx_reg2(11);
  \u_ila_0_tx_reg2[12]\ <= tx_reg2(12);
  \u_ila_0_tx_reg2[13]\ <= tx_reg2(13);
  \u_ila_0_tx_reg2[14]\ <= tx_reg2(14);
  \u_ila_0_tx_reg2[15]\ <= tx_reg2(15);
  \u_ila_0_tx_reg2[1]\ <= tx_reg2(1);
  \u_ila_0_tx_reg2[2]\ <= tx_reg2(2);
  \u_ila_0_tx_reg2[3]\ <= tx_reg2(3);
  \u_ila_0_tx_reg2[4]\ <= tx_reg2(4);
  \u_ila_0_tx_reg2[5]\ <= tx_reg2(5);
  \u_ila_0_tx_reg2[6]\ <= tx_reg2(6);
  \u_ila_0_tx_reg2[7]\ <= tx_reg2(7);
  \u_ila_0_tx_reg2[8]\ <= tx_reg2(8);
  \u_ila_0_tx_reg2[9]\ <= tx_reg2(9);
\FSM_onehot_spitxstate[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"802AFFFF802A0000"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I4 => \FSM_onehot_spitxstate[2]_i_2__0_n_0\,
      I5 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \FSM_onehot_spitxstate[0]_i_1__0_n_0\
    );
\FSM_onehot_spitxstate[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate[2]_i_2__0_n_0\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      O => \FSM_onehot_spitxstate[1]_i_1__0_n_0\
    );
\FSM_onehot_spitxstate[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I1 => \FSM_onehot_spitxstate[2]_i_2__0_n_0\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[2]_i_1__0_n_0\
    );
\FSM_onehot_spitxstate[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF888"
    )
        port map (
      I0 => \FSM_onehot_spitxstate[2]_i_3__0_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I3 => \delay[1]_i_2__0_n_0\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[2]_i_2__0_n_0\
    );
\FSM_onehot_spitxstate[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \delay_reg_n_0_[1]\,
      I1 => \bitcounter_reg_n_0_[4]\,
      I2 => \delay_reg_n_0_[0]\,
      I3 => \FSM_onehot_spitxstate[2]_i_4__0_n_0\,
      I4 => \bitcounter_reg_n_0_[3]\,
      I5 => \bitcounter_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[2]_i_3__0_n_0\
    );
\FSM_onehot_spitxstate[2]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[0]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      O => \FSM_onehot_spitxstate[2]_i_4__0_n_0\
    );
\FSM_onehot_spitxstate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_spitxstate[0]_i_1__0_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_spitxstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_spitxstate[1]_i_1__0_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_spitxstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_spitxstate[2]_i_1__0_n_0\,
      Q => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      R => '0'
    );
\SS_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \SS_i_1__0_n_0\
    );
\SS_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EABF"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      O => \SS_i_2__0_n_0\
    );
SS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \SS_i_1__0_n_0\,
      D => \SS_i_2__0_n_0\,
      Q => SS_OBUF(0),
      R => '0'
    );
\State[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \State[0]_i_2__0_n_0\,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \State_reg[0]\,
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I4 => \State[0]_i_4__0_n_0\,
      O => D(0)
    );
\State[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I1 => \State_reg[3]\,
      I2 => WaveID,
      I3 => Nullflag,
      I4 => TX_Done,
      O => \State[0]_i_2__0_n_0\
    );
\State[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7CFF4FFF"
    )
        port map (
      I0 => TX_Done,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I4 => mux4_out(0),
      O => \State[0]_i_4__0_n_0\
    );
\State[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FCF50C00FC00FC0"
    )
        port map (
      I0 => p_4_in,
      I1 => \State_reg[2]\,
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I4 => mux4_out(0),
      I5 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      O => \State[1]_i_2__0_n_0\
    );
\State[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444FFFF74440000"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I3 => \State_reg[2]\,
      I4 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I5 => \State[2]_i_3__0_n_0\,
      O => D(2)
    );
\State[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7C7C7CC0CCCCCC"
    )
        port map (
      I0 => p_4_in,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I3 => EnWrite_IBUF,
      I4 => ChanAddressReg,
      I5 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      O => \State[2]_i_3__0_n_0\
    );
\State[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \State[3]_i_3__0_n_0\,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => p_4_in,
      I4 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I5 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      O => D(3)
    );
\State[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFFF7F7F7F7F"
    )
        port map (
      I0 => CO(0),
      I1 => p_4_in,
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I4 => mux4_out(0),
      I5 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      O => \State[3]_i_3__0_n_0\
    );
\State[3]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => TX_Done,
      I1 => Nullflag,
      I2 => WaveID,
      I3 => \State_reg[3]\,
      O => p_4_in
    );
\State_reg[1]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \State[1]_i_2__0_n_0\,
      I1 => \State_reg[1]\,
      O => D(1),
      S => \FSM_onehot_spitxstate_reg[0]_0\(3)
    );
\TX_Done_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I2 => TX_Done,
      O => \TX_Done_i_1__0_n_0\
    );
TX_Done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \TX_Done_i_1__0_n_0\,
      Q => TX_Done,
      R => '0'
    );
\bitcounter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[0]\,
      O => \bitcounter[0]_i_1__0_n_0\
    );
\bitcounter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[0]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      O => \bitcounter[1]_i_1__0_n_0\
    );
\bitcounter[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[1]\,
      I1 => \bitcounter_reg_n_0_[0]\,
      I2 => \bitcounter_reg_n_0_[2]\,
      O => \bitcounter[2]_i_1__0_n_0\
    );
\bitcounter[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      O => \bitcounter[3]_i_1__0_n_0\
    );
\bitcounter[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \delay_reg_n_0_[0]\,
      I2 => \^spiclk_reg_0\,
      I3 => \delay_reg_n_0_[1]\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      O => \bitcounter[3]_i_2__0_n_0\
    );
\bitcounter[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[0]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      I2 => \bitcounter_reg_n_0_[2]\,
      I3 => \bitcounter_reg_n_0_[3]\,
      O => \bitcounter[3]_i_3__0_n_0\
    );
\bitcounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAB00"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \bitcounter[4]_i_2__0_n_0\,
      I2 => \bitcounter_reg_n_0_[3]\,
      I3 => \bitcounter[3]_i_2__0_n_0\,
      I4 => \bitcounter_reg_n_0_[4]\,
      O => \bitcounter[4]_i_1_n_0\
    );
\bitcounter[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[2]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      I2 => \bitcounter_reg_n_0_[0]\,
      O => \bitcounter[4]_i_2__0_n_0\
    );
\bitcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \bitcounter[3]_i_2__0_n_0\,
      D => \bitcounter[0]_i_1__0_n_0\,
      Q => \bitcounter_reg_n_0_[0]\,
      R => \bitcounter[3]_i_1__0_n_0\
    );
\bitcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \bitcounter[3]_i_2__0_n_0\,
      D => \bitcounter[1]_i_1__0_n_0\,
      Q => \bitcounter_reg_n_0_[1]\,
      R => \bitcounter[3]_i_1__0_n_0\
    );
\bitcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \bitcounter[3]_i_2__0_n_0\,
      D => \bitcounter[2]_i_1__0_n_0\,
      Q => \bitcounter_reg_n_0_[2]\,
      R => \bitcounter[3]_i_1__0_n_0\
    );
\bitcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \bitcounter[3]_i_2__0_n_0\,
      D => \bitcounter[3]_i_3__0_n_0\,
      Q => \bitcounter_reg_n_0_[3]\,
      R => \bitcounter[3]_i_1__0_n_0\
    );
\bitcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \bitcounter[4]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[4]\,
      R => '0'
    );
\delay[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888FFFC"
    )
        port map (
      I0 => \delay[1]_i_2__0_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I4 => \delay_reg_n_0_[0]\,
      O => delay(0)
    );
\delay[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4000000000000"
    )
        port map (
      I0 => \delay[1]_i_2__0_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I4 => \delay_reg_n_0_[1]\,
      I5 => \delay_reg_n_0_[0]\,
      O => delay(1)
    );
\delay[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      O => \delay[1]_i_2__0_n_0\
    );
\delay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => delay(0),
      Q => \delay_reg_n_0_[0]\,
      R => '0'
    );
\delay_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => delay(1),
      Q => \delay_reg_n_0_[1]\,
      R => '0'
    );
\spiclk_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBA3333888A0000"
    )
        port map (
      I0 => \spiclk_i_2__0_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \delay_reg_n_0_[1]\,
      I3 => \delay_reg_n_0_[0]\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I5 => \^spiclk_reg_0\,
      O => \spiclk_i_1__0_n_0\
    );
\spiclk_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => \^spiclk_reg_0\,
      I1 => \bitcounter_reg_n_0_[2]\,
      I2 => \bitcounter_reg_n_0_[1]\,
      I3 => \bitcounter_reg_n_0_[0]\,
      I4 => \bitcounter_reg_n_0_[4]\,
      I5 => \bitcounter_reg_n_0_[3]\,
      O => \spiclk_i_2__0_n_0\
    );
spiclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \spiclk_i_1__0_n_0\,
      Q => \^spiclk_reg_0\,
      R => '0'
    );
spiclklast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \^spiclk_reg_0\,
      Q => spiclklast,
      R => '0'
    );
\tx_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(0),
      Q => tx_reg2(0),
      R => '0'
    );
\tx_reg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(10),
      Q => tx_reg2(10),
      R => '0'
    );
\tx_reg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(11),
      Q => tx_reg2(11),
      R => '0'
    );
\tx_reg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(12),
      Q => tx_reg2(12),
      R => '0'
    );
\tx_reg2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(13),
      Q => tx_reg2(13),
      R => '0'
    );
\tx_reg2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(14),
      Q => tx_reg2(14),
      R => '0'
    );
\tx_reg2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(15),
      Q => tx_reg2(15),
      R => '0'
    );
\tx_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(1),
      Q => tx_reg2(1),
      R => '0'
    );
\tx_reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(2),
      Q => tx_reg2(2),
      R => '0'
    );
\tx_reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(3),
      Q => tx_reg2(3),
      R => '0'
    );
\tx_reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(4),
      Q => tx_reg2(4),
      R => '0'
    );
\tx_reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(5),
      Q => tx_reg2(5),
      R => '0'
    );
\tx_reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(6),
      Q => tx_reg2(6),
      R => '0'
    );
\tx_reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(7),
      Q => tx_reg2(7),
      R => '0'
    );
\tx_reg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(8),
      Q => tx_reg2(8),
      R => '0'
    );
\tx_reg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(9),
      Q => tx_reg2(9),
      R => '0'
    );
\tx_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \^spiclk_reg_0\,
      I3 => spiclklast,
      I4 => \tx_reg__0\(0),
      O => \tx_reg[0]_i_1_n_0\
    );
\tx_reg[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(9),
      I1 => Q(10),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[10]_i_1__0_n_0\
    );
\tx_reg[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(10),
      I1 => Q(11),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[11]_i_1__0_n_0\
    );
\tx_reg[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(11),
      I1 => Q(12),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[12]_i_1__0_n_0\
    );
\tx_reg[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(12),
      I1 => Q(13),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[13]_i_1__0_n_0\
    );
\tx_reg[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(13),
      I1 => Q(14),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[14]_i_1__0_n_0\
    );
\tx_reg[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^spiclk_reg_0\,
      I1 => spiclklast,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \tx_reg[15]_i_1__0_n_0\
    );
\tx_reg[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(14),
      I1 => Q(15),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[15]_i_2__0_n_0\
    );
\tx_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(0),
      I1 => Q(1),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[1]_i_1__0_n_0\
    );
\tx_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(1),
      I1 => Q(2),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[2]_i_1__0_n_0\
    );
\tx_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(2),
      I1 => Q(3),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[3]_i_1__0_n_0\
    );
\tx_reg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(3),
      I1 => Q(4),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[4]_i_1__0_n_0\
    );
\tx_reg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(4),
      I1 => Q(5),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[5]_i_1__0_n_0\
    );
\tx_reg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(5),
      I1 => Q(6),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[6]_i_1__0_n_0\
    );
\tx_reg[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(6),
      I1 => Q(7),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[7]_i_1__0_n_0\
    );
\tx_reg[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(7),
      I1 => Q(8),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[8]_i_1__0_n_0\
    );
\tx_reg[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \tx_reg__0\(8),
      I1 => Q(9),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => \tx_reg[9]_i_1__0_n_0\
    );
\tx_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \tx_reg[0]_i_1_n_0\,
      Q => \tx_reg__0\(0),
      R => '0'
    );
\tx_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[10]_i_1__0_n_0\,
      Q => \tx_reg__0\(10),
      R => '0'
    );
\tx_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[11]_i_1__0_n_0\,
      Q => \tx_reg__0\(11),
      R => '0'
    );
\tx_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[12]_i_1__0_n_0\,
      Q => \tx_reg__0\(12),
      R => '0'
    );
\tx_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[13]_i_1__0_n_0\,
      Q => \tx_reg__0\(13),
      R => '0'
    );
\tx_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[14]_i_1__0_n_0\,
      Q => \tx_reg__0\(14),
      R => '0'
    );
\tx_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[15]_i_2__0_n_0\,
      Q => \tx_reg_reg[15]_0\(0),
      R => '0'
    );
\tx_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[1]_i_1__0_n_0\,
      Q => \tx_reg__0\(1),
      R => '0'
    );
\tx_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[2]_i_1__0_n_0\,
      Q => \tx_reg__0\(2),
      R => '0'
    );
\tx_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[3]_i_1__0_n_0\,
      Q => \tx_reg__0\(3),
      R => '0'
    );
\tx_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[4]_i_1__0_n_0\,
      Q => \tx_reg__0\(4),
      R => '0'
    );
\tx_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[5]_i_1__0_n_0\,
      Q => \tx_reg__0\(5),
      R => '0'
    );
\tx_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[6]_i_1__0_n_0\,
      Q => \tx_reg__0\(6),
      R => '0'
    );
\tx_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[7]_i_1__0_n_0\,
      Q => \tx_reg__0\(7),
      R => '0'
    );
\tx_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[8]_i_1__0_n_0\,
      Q => \tx_reg__0\(8),
      R => '0'
    );
\tx_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1__0_n_0\,
      D => \tx_reg[9]_i_1__0_n_0\,
      Q => \tx_reg__0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_Master_2 is
  port (
    spiclk_reg_0 : out STD_LOGIC;
    SS_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_spitxstate_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \State_reg[0]\ : in STD_LOGIC;
    \State_reg[1]\ : in STD_LOGIC;
    \State_reg[2]\ : in STD_LOGIC;
    \State_reg[1]_0\ : in STD_LOGIC;
    EnWrite_IBUF : in STD_LOGIC;
    ChanAddressReg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Nullflag : in STD_LOGIC;
    WaveID : in STD_LOGIC;
    \State_reg[3]\ : in STD_LOGIC;
    \u_ila_0_tx_reg2[0]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[1]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[2]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[3]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[4]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[5]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[6]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[7]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[8]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[9]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[10]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[11]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[12]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[13]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[14]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[15]\ : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SPI_Master_2 : entity is "SPI_Master";
end SPI_Master_2;

architecture STRUCTURE of SPI_Master_2 is
  signal \FSM_onehot_spitxstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[2]\ : STD_LOGIC;
  signal SS_i_1_n_0 : STD_LOGIC;
  signal SS_i_2_n_0 : STD_LOGIC;
  signal \State[0]_i_2_n_0\ : STD_LOGIC;
  signal \State[0]_i_4_n_0\ : STD_LOGIC;
  signal \State[1]_i_2_n_0\ : STD_LOGIC;
  signal \State[2]_i_3_n_0\ : STD_LOGIC;
  signal \State[3]_i_3_n_0\ : STD_LOGIC;
  signal TX_Done : STD_LOGIC;
  signal TX_Done_i_1_n_0 : STD_LOGIC;
  signal \bitcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_3_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_2_n_0\ : STD_LOGIC;
  signal delay : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \delay[1]_i_2_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal p_4_in : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal spiclk_i_1_n_0 : STD_LOGIC;
  signal spiclk_i_2_n_0 : STD_LOGIC;
  signal \^spiclk_reg_0\ : STD_LOGIC;
  signal spiclklast : STD_LOGIC;
  signal tx_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal tx_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of tx_reg2 : signal is std.standard.true;
  signal \tx_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[15]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[2]_i_4\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[0]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[1]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[2]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute SOFT_HLUTNM of SS_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \State[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \State[3]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bitcounter[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bitcounter[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bitcounter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bitcounter[3]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bitcounter[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \delay[1]_i_2\ : label is "soft_lutpair9";
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
  spiclk_reg_0 <= \^spiclk_reg_0\;
  \u_ila_0_tx_reg2[0]\ <= tx_reg2(0);
  \u_ila_0_tx_reg2[10]\ <= tx_reg2(10);
  \u_ila_0_tx_reg2[11]\ <= tx_reg2(11);
  \u_ila_0_tx_reg2[12]\ <= tx_reg2(12);
  \u_ila_0_tx_reg2[13]\ <= tx_reg2(13);
  \u_ila_0_tx_reg2[14]\ <= tx_reg2(14);
  \u_ila_0_tx_reg2[15]\ <= tx_reg2(15);
  \u_ila_0_tx_reg2[1]\ <= tx_reg2(1);
  \u_ila_0_tx_reg2[2]\ <= tx_reg2(2);
  \u_ila_0_tx_reg2[3]\ <= tx_reg2(3);
  \u_ila_0_tx_reg2[4]\ <= tx_reg2(4);
  \u_ila_0_tx_reg2[5]\ <= tx_reg2(5);
  \u_ila_0_tx_reg2[6]\ <= tx_reg2(6);
  \u_ila_0_tx_reg2[7]\ <= tx_reg2(7);
  \u_ila_0_tx_reg2[8]\ <= tx_reg2(8);
  \u_ila_0_tx_reg2[9]\ <= tx_reg2(9);
\FSM_onehot_spitxstate[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"802AFFFF802A0000"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I4 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I5 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \FSM_onehot_spitxstate[0]_i_1_n_0\
    );
\FSM_onehot_spitxstate[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      O => \FSM_onehot_spitxstate[1]_i_1_n_0\
    );
\FSM_onehot_spitxstate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I1 => \FSM_onehot_spitxstate[2]_i_2_n_0\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[2]_i_1_n_0\
    );
\FSM_onehot_spitxstate[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF888"
    )
        port map (
      I0 => \FSM_onehot_spitxstate[2]_i_3_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I3 => \delay[1]_i_2_n_0\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => \FSM_onehot_spitxstate[2]_i_2_n_0\
    );
\FSM_onehot_spitxstate[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => \FSM_onehot_spitxstate[2]_i_4_n_0\,
      I4 => sel0(3),
      I5 => sel0(2),
      O => \FSM_onehot_spitxstate[2]_i_3_n_0\
    );
\FSM_onehot_spitxstate[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \FSM_onehot_spitxstate[2]_i_4_n_0\
    );
\FSM_onehot_spitxstate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => SS_i_1_n_0
    );
SS_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EABF"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      O => SS_i_2_n_0
    );
SS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => SS_i_1_n_0,
      D => SS_i_2_n_0,
      Q => SS_OBUF(0),
      R => '0'
    );
\State[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \State[0]_i_2_n_0\,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \State_reg[0]\,
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I4 => \State[0]_i_4_n_0\,
      O => D(0)
    );
\State[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I1 => \State_reg[3]\,
      I2 => WaveID,
      I3 => Nullflag,
      I4 => TX_Done,
      O => \State[0]_i_2_n_0\
    );
\State[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7CFF4FFF"
    )
        port map (
      I0 => TX_Done,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I4 => \State_reg[1]_0\,
      O => \State[0]_i_4_n_0\
    );
\State[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FCF50C00FC00FC0"
    )
        port map (
      I0 => p_4_in,
      I1 => \State_reg[2]\,
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I4 => \State_reg[1]_0\,
      I5 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      O => \State[1]_i_2_n_0\
    );
\State[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444FFFF74440000"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I3 => \State_reg[2]\,
      I4 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I5 => \State[2]_i_3_n_0\,
      O => D(2)
    );
\State[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C7C4C7CCCCCC0CC"
    )
        port map (
      I0 => p_4_in,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I3 => EnWrite_IBUF,
      I4 => ChanAddressReg,
      I5 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      O => \State[2]_i_3_n_0\
    );
\State[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \State[3]_i_3_n_0\,
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => p_4_in,
      I4 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I5 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      O => D(3)
    );
\State[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFFF7F7F7F7F"
    )
        port map (
      I0 => CO(0),
      I1 => p_4_in,
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I3 => \FSM_onehot_spitxstate_reg[0]_0\(1),
      I4 => \State_reg[1]_0\,
      I5 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      O => \State[3]_i_3_n_0\
    );
\State[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => TX_Done,
      I1 => Nullflag,
      I2 => WaveID,
      I3 => \State_reg[3]\,
      O => p_4_in
    );
\State_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \State[1]_i_2_n_0\,
      I1 => \State_reg[1]\,
      O => D(1),
      S => \FSM_onehot_spitxstate_reg[0]_0\(3)
    );
TX_Done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I2 => TX_Done,
      O => TX_Done_i_1_n_0
    );
TX_Done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => TX_Done_i_1_n_0,
      Q => TX_Done,
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
      I0 => sel0(0),
      I1 => sel0(1),
      O => \bitcounter[1]_i_1_n_0\
    );
\bitcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
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
\bitcounter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => sel0(5),
      I2 => \^spiclk_reg_0\,
      I3 => sel0(6),
      I4 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      O => \bitcounter[3]_i_2_n_0\
    );
\bitcounter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      O => \bitcounter[3]_i_3_n_0\
    );
\bitcounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAB00"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \bitcounter[4]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \bitcounter[3]_i_2_n_0\,
      I4 => sel0(4),
      O => \bitcounter[4]_i_1_n_0\
    );
\bitcounter[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => \bitcounter[4]_i_2_n_0\
    );
\bitcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      I0 => \delay[1]_i_2_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I4 => sel0(5),
      O => delay(0)
    );
\delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4000000000000"
    )
        port map (
      I0 => \delay[1]_i_2_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I4 => sel0(6),
      I5 => sel0(5),
      O => delay(1)
    );
\delay[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg[0]_0\(0),
      I1 => \FSM_onehot_spitxstate_reg[0]_0\(2),
      I2 => \FSM_onehot_spitxstate_reg[0]_0\(3),
      O => \delay[1]_i_2_n_0\
    );
\delay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => delay(0),
      Q => sel0(5),
      R => '0'
    );
\delay_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => delay(1),
      Q => sel0(6),
      R => '0'
    );
spiclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBA3333888A0000"
    )
        port map (
      I0 => spiclk_i_2_n_0,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => sel0(6),
      I3 => sel0(5),
      I4 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I5 => \^spiclk_reg_0\,
      O => spiclk_i_1_n_0
    );
spiclk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => \^spiclk_reg_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(4),
      I5 => sel0(3),
      O => spiclk_i_2_n_0
    );
spiclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => spiclk_i_1_n_0,
      Q => \^spiclk_reg_0\,
      R => '0'
    );
spiclklast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \^spiclk_reg_0\,
      Q => spiclklast,
      R => '0'
    );
\tx_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(0),
      Q => tx_reg2(0),
      R => '0'
    );
\tx_reg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(10),
      Q => tx_reg2(10),
      R => '0'
    );
\tx_reg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(11),
      Q => tx_reg2(11),
      R => '0'
    );
\tx_reg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(12),
      Q => tx_reg2(12),
      R => '0'
    );
\tx_reg2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(13),
      Q => tx_reg2(13),
      R => '0'
    );
\tx_reg2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(14),
      Q => tx_reg2(14),
      R => '0'
    );
\tx_reg2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(15),
      Q => tx_reg2(15),
      R => '0'
    );
\tx_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(1),
      Q => tx_reg2(1),
      R => '0'
    );
\tx_reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(2),
      Q => tx_reg2(2),
      R => '0'
    );
\tx_reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(3),
      Q => tx_reg2(3),
      R => '0'
    );
\tx_reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(4),
      Q => tx_reg2(4),
      R => '0'
    );
\tx_reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(5),
      Q => tx_reg2(5),
      R => '0'
    );
\tx_reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(6),
      Q => tx_reg2(6),
      R => '0'
    );
\tx_reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(7),
      Q => tx_reg2(7),
      R => '0'
    );
\tx_reg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(8),
      Q => tx_reg2(8),
      R => '0'
    );
\tx_reg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      D => Q(9),
      Q => tx_reg2(9),
      R => '0'
    );
\tx_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \^spiclk_reg_0\,
      I3 => spiclklast,
      I4 => tx_reg(0),
      O => \tx_reg[0]_i_1_n_0\
    );
\tx_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(9),
      I1 => Q(10),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(10)
    );
\tx_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(10),
      I1 => Q(11),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(11)
    );
\tx_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(11),
      I1 => Q(12),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(12)
    );
\tx_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(12),
      I1 => Q(13),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(13)
    );
\tx_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(13),
      I1 => Q(14),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(14)
    );
\tx_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^spiclk_reg_0\,
      I1 => spiclklast,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \tx_reg[15]_i_1_n_0\
    );
\tx_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(14),
      I1 => Q(15),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(15)
    );
\tx_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(0),
      I1 => Q(1),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(1)
    );
\tx_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(1),
      I1 => Q(2),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(2)
    );
\tx_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(2),
      I1 => Q(3),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(3)
    );
\tx_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(3),
      I1 => Q(4),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(4)
    );
\tx_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(4),
      I1 => Q(5),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(5)
    );
\tx_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(5),
      I1 => Q(6),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(6)
    );
\tx_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(6),
      I1 => Q(7),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(7)
    );
\tx_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(7),
      I1 => Q(8),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(8)
    );
\tx_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => tx_reg(8),
      I1 => Q(9),
      I2 => spiclklast,
      I3 => \^spiclk_reg_0\,
      O => p_1_in(9)
    );
\tx_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => tx_reg(10),
      R => '0'
    );
\tx_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => tx_reg(11),
      R => '0'
    );
\tx_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => tx_reg(12),
      R => '0'
    );
\tx_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => tx_reg(13),
      R => '0'
    );
\tx_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => tx_reg(14),
      R => '0'
    );
\tx_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => \tx_reg_reg[15]_0\(0),
      R => '0'
    );
\tx_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(1),
      Q => tx_reg(1),
      R => '0'
    );
\tx_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(2),
      Q => tx_reg(2),
      R => '0'
    );
\tx_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(3),
      Q => tx_reg(3),
      R => '0'
    );
\tx_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(4),
      Q => tx_reg(4),
      R => '0'
    );
\tx_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(5),
      Q => tx_reg(5),
      R => '0'
    );
\tx_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(6),
      Q => tx_reg(6),
      R => '0'
    );
\tx_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(7),
      Q => tx_reg(7),
      R => '0'
    );
\tx_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => tx_reg(8),
      R => '0'
    );
\tx_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \tx_reg[15]_i_1_n_0\,
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
    SCLK_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    DecodeWrite : out STD_LOGIC;
    \tx_reg_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 4 downto 0 );
    EnWrite_IBUF : in STD_LOGIC;
    ChanAddressReg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FolState2_carry_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Din_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \WaveAdressA[0]\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    RESET_CH_IBUF : in STD_LOGIC;
    Write_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \u_ila_0_WRCNT_loc[0]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[1]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[2]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[3]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[4]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[5]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[6]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[7]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[8]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[9]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[0]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[1]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[2]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[3]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[4]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[5]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[6]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[7]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[8]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[9]_1\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[0]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[1]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[2]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[3]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[4]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[5]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[6]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[7]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[8]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[9]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[10]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[11]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[12]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[13]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[14]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[15]\ : out STD_LOGIC
  );
end Channel;

architecture STRUCTURE of Channel is
  signal Addr0 : STD_LOGIC;
  signal Addr0_i_1_n_0 : STD_LOGIC;
  signal CEB2 : STD_LOGIC;
  signal C_reg_i_10_n_0 : STD_LOGIC;
  signal C_reg_i_11_n_0 : STD_LOGIC;
  signal C_reg_i_12_n_0 : STD_LOGIC;
  signal C_reg_i_13_n_0 : STD_LOGIC;
  signal C_reg_i_6_n_0 : STD_LOGIC;
  signal C_reg_i_7_n_0 : STD_LOGIC;
  signal C_reg_i_8_n_0 : STD_LOGIC;
  signal C_reg_i_9_n_0 : STD_LOGIC;
  signal C_reg_n_100 : STD_LOGIC;
  signal C_reg_n_101 : STD_LOGIC;
  signal C_reg_n_102 : STD_LOGIC;
  signal C_reg_n_103 : STD_LOGIC;
  signal C_reg_n_104 : STD_LOGIC;
  signal C_reg_n_105 : STD_LOGIC;
  signal C_reg_n_90 : STD_LOGIC;
  signal C_reg_n_91 : STD_LOGIC;
  signal C_reg_n_92 : STD_LOGIC;
  signal C_reg_n_93 : STD_LOGIC;
  signal C_reg_n_94 : STD_LOGIC;
  signal C_reg_n_95 : STD_LOGIC;
  signal C_reg_n_96 : STD_LOGIC;
  signal C_reg_n_97 : STD_LOGIC;
  signal C_reg_n_98 : STD_LOGIC;
  signal C_reg_n_99 : STD_LOGIC;
  signal \^decodewrite\ : STD_LOGIC;
  signal Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Dout[15]_i_1_n_0\ : STD_LOGIC;
  signal \Dout_reg_n_0_[0]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[10]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[11]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[12]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[13]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[14]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[15]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[1]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[2]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[3]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[4]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[5]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[6]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[7]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[8]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[9]\ : STD_LOGIC;
  signal FolState : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FolState1_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal FolState23_in : STD_LOGIC;
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
  signal \MemArray[0].MemoryX_i_10__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_11_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_12__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_1_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_2__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_3__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_4__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_5__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_6__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_7__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_8__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_9__0_n_0\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_0\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_1\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_2\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_20\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_3\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_4\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_5\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_6\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_7\ : STD_LOGIC;
  signal Nullflag : STD_LOGIC;
  signal Read : STD_LOGIC;
  signal State : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \State[0]_i_3_n_0\ : STD_LOGIC;
  signal \State[1]_i_3_n_0\ : STD_LOGIC;
  signal \State[2]_i_2_n_0\ : STD_LOGIC;
  signal \State[2]_i_4_n_0\ : STD_LOGIC;
  signal WaveID : STD_LOGIC;
  signal WaveIDZ : STD_LOGIC;
  signal \WaveIDZ[0]_i_1_n_0\ : STD_LOGIC;
  signal \WaveIDZ[0]_i_2__0_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal mux1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mux3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_C_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_C_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_C_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_C_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_C_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_FolState1_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FolState1_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FolState1_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_FolState2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FolState2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FolState2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MemArray[0].MemoryX_Empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_MemArray[0].MemoryX_Full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_MemArray[0].MemoryX_WRCNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_MemArray[1].MemoryX_Empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_MemArray[1].MemoryX_Full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_MemArray[1].MemoryX_WRCNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute Adresswidth : integer;
  attribute Adresswidth of \MemArray[0].MemoryX\ : label is 10;
  attribute Wordwidth : integer;
  attribute Wordwidth of \MemArray[0].MemoryX\ : label is 8;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MemArray[0].MemoryX_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \MemArray[0].MemoryX_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \MemArray[0].MemoryX_i_12__0\ : label is "soft_lutpair17";
  attribute Adresswidth of \MemArray[1].MemoryX\ : label is 10;
  attribute Wordwidth of \MemArray[1].MemoryX\ : label is 8;
  attribute SOFT_HLUTNM of \MemArray[1].MemoryX_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \State[2]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[8]_i_2\ : label is "soft_lutpair16";
begin
  DecodeWrite <= \^decodewrite\;
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
C_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 0,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
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
      USE_DPORT => true,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111111111111111111111110000001",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_C_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(4),
      B(16) => B(4),
      B(15) => B(4),
      B(14) => B(4),
      B(13) => B(4),
      B(12) => B(4),
      B(11) => B(4),
      B(10) => B(4),
      B(9) => B(4),
      B(8 downto 4) => B(4 downto 0),
      B(3 downto 0) => B"0000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_C_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111000000000000000",
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
      CEB2 => CEB2,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => CEB2,
      CEINMODE => '0',
      CEM => '0',
      CEP => CEB2,
      CLK => CLK_IBUF_BUFG,
      D(24 downto 8) => B"00000000000000000",
      D(7) => C_reg_i_6_n_0,
      D(6) => C_reg_i_7_n_0,
      D(5) => C_reg_i_8_n_0,
      D(4) => C_reg_i_9_n_0,
      D(3) => C_reg_i_10_n_0,
      D(2) => C_reg_i_11_n_0,
      D(1) => C_reg_i_12_n_0,
      D(0) => C_reg_i_13_n_0,
      INMODE(4 downto 0) => B"00100",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_C_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_C_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_C_reg_P_UNCONNECTED(47 downto 16),
      P(15) => C_reg_n_90,
      P(14) => C_reg_n_91,
      P(13) => C_reg_n_92,
      P(12) => C_reg_n_93,
      P(11) => C_reg_n_94,
      P(10) => C_reg_n_95,
      P(9) => C_reg_n_96,
      P(8) => C_reg_n_97,
      P(7) => C_reg_n_98,
      P(6) => C_reg_n_99,
      P(5) => C_reg_n_100,
      P(4) => C_reg_n_101,
      P(3) => C_reg_n_102,
      P(2) => C_reg_n_103,
      P(1) => C_reg_n_104,
      P(0) => C_reg_n_105,
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
C_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA8"
    )
        port map (
      I0 => State(2),
      I1 => State(1),
      I2 => State(3),
      I3 => State(0),
      O => CEB2
    );
C_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_4\,
      I1 => Dout(3),
      I2 => WaveID,
      O => C_reg_i_10_n_0
    );
C_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_5\,
      I1 => Dout(2),
      I2 => WaveID,
      O => C_reg_i_11_n_0
    );
C_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_6\,
      I1 => Dout(1),
      I2 => WaveID,
      O => C_reg_i_12_n_0
    );
C_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_7\,
      I1 => Dout(0),
      I2 => WaveID,
      O => C_reg_i_13_n_0
    );
C_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_0\,
      I1 => Dout(7),
      I2 => WaveID,
      O => C_reg_i_6_n_0
    );
C_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_1\,
      I1 => Dout(6),
      I2 => WaveID,
      O => C_reg_i_7_n_0
    );
C_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_2\,
      I1 => Dout(5),
      I2 => WaveID,
      O => C_reg_i_8_n_0
    );
C_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_3\,
      I1 => Dout(4),
      I2 => WaveID,
      O => C_reg_i_9_n_0
    );
\Dout[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"017F"
    )
        port map (
      I0 => State(0),
      I1 => State(3),
      I2 => State(1),
      I3 => State(2),
      O => \Dout[15]_i_1_n_0\
    );
\Dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_105,
      Q => \Dout_reg_n_0_[0]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_95,
      Q => \Dout_reg_n_0_[10]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_94,
      Q => \Dout_reg_n_0_[11]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_93,
      Q => \Dout_reg_n_0_[12]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_92,
      Q => \Dout_reg_n_0_[13]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_91,
      Q => \Dout_reg_n_0_[14]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_90,
      Q => \Dout_reg_n_0_[15]\,
      S => \Dout[15]_i_1_n_0\
    );
\Dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_104,
      Q => \Dout_reg_n_0_[1]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_103,
      Q => \Dout_reg_n_0_[2]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_102,
      Q => \Dout_reg_n_0_[3]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_101,
      Q => \Dout_reg_n_0_[4]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_100,
      Q => \Dout_reg_n_0_[5]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_99,
      Q => \Dout_reg_n_0_[6]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_98,
      Q => \Dout_reg_n_0_[7]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_97,
      Q => \Dout_reg_n_0_[8]\,
      R => \Dout[15]_i_1_n_0\
    );
\Dout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_96,
      Q => \Dout_reg_n_0_[9]\,
      R => \Dout[15]_i_1_n_0\
    );
\FolState1_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FolState1_inferred__2/i__carry_n_0\,
      CO(2) => \FolState1_inferred__2/i__carry_n_1\,
      CO(1) => \FolState1_inferred__2/i__carry_n_2\,
      CO(0) => \FolState1_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_FolState1_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
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
      CO(0) => FolState23_in,
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
Interface: entity work.SPI_Master_2
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CO(0) => FolState23_in,
      ChanAddressReg => ChanAddressReg,
      D(3 downto 0) => FolState(3 downto 0),
      EnWrite_IBUF => EnWrite_IBUF,
      \FSM_onehot_spitxstate_reg[0]_0\(3 downto 0) => State(3 downto 0),
      Nullflag => Nullflag,
      Q(15) => \Dout_reg_n_0_[15]\,
      Q(14) => \Dout_reg_n_0_[14]\,
      Q(13) => \Dout_reg_n_0_[13]\,
      Q(12) => \Dout_reg_n_0_[12]\,
      Q(11) => \Dout_reg_n_0_[11]\,
      Q(10) => \Dout_reg_n_0_[10]\,
      Q(9) => \Dout_reg_n_0_[9]\,
      Q(8) => \Dout_reg_n_0_[8]\,
      Q(7) => \Dout_reg_n_0_[7]\,
      Q(6) => \Dout_reg_n_0_[6]\,
      Q(5) => \Dout_reg_n_0_[5]\,
      Q(4) => \Dout_reg_n_0_[4]\,
      Q(3) => \Dout_reg_n_0_[3]\,
      Q(2) => \Dout_reg_n_0_[2]\,
      Q(1) => \Dout_reg_n_0_[1]\,
      Q(0) => \Dout_reg_n_0_[0]\,
      SS_OBUF(0) => SS_OBUF(0),
      \State_reg[0]\ => \State[0]_i_3_n_0\,
      \State_reg[1]\ => \State[1]_i_3_n_0\,
      \State_reg[1]_0\ => \WaveIDZ[0]_i_2__0_n_0\,
      \State_reg[2]\ => \State[2]_i_2_n_0\,
      \State_reg[3]\ => \MemArray[1].MemoryX_n_20\,
      WaveID => WaveID,
      spiclk_reg_0 => SCLK_OBUF(0),
      \tx_reg_reg[15]_0\(0) => \tx_reg_reg[15]\(0),
      \u_ila_0_tx_reg2[0]\ => \u_ila_0_tx_reg2[0]\,
      \u_ila_0_tx_reg2[10]\ => \u_ila_0_tx_reg2[10]\,
      \u_ila_0_tx_reg2[11]\ => \u_ila_0_tx_reg2[11]\,
      \u_ila_0_tx_reg2[12]\ => \u_ila_0_tx_reg2[12]\,
      \u_ila_0_tx_reg2[13]\ => \u_ila_0_tx_reg2[13]\,
      \u_ila_0_tx_reg2[14]\ => \u_ila_0_tx_reg2[14]\,
      \u_ila_0_tx_reg2[15]\ => \u_ila_0_tx_reg2[15]\,
      \u_ila_0_tx_reg2[1]\ => \u_ila_0_tx_reg2[1]\,
      \u_ila_0_tx_reg2[2]\ => \u_ila_0_tx_reg2[2]\,
      \u_ila_0_tx_reg2[3]\ => \u_ila_0_tx_reg2[3]\,
      \u_ila_0_tx_reg2[4]\ => \u_ila_0_tx_reg2[4]\,
      \u_ila_0_tx_reg2[5]\ => \u_ila_0_tx_reg2[5]\,
      \u_ila_0_tx_reg2[6]\ => \u_ila_0_tx_reg2[6]\,
      \u_ila_0_tx_reg2[7]\ => \u_ila_0_tx_reg2[7]\,
      \u_ila_0_tx_reg2[8]\ => \u_ila_0_tx_reg2[8]\,
      \u_ila_0_tx_reg2[9]\ => \u_ila_0_tx_reg2[9]\
    );
\MemArray[0].MemoryX\: entity work.\Memory__3\
     port map (
      Addr0 => Addr0,
      CLK => CLK_IBUF_BUFG,
      Din(7) => \MemArray[0].MemoryX_i_2__0_n_0\,
      Din(6) => \MemArray[0].MemoryX_i_3__0_n_0\,
      Din(5) => \MemArray[0].MemoryX_i_4__0_n_0\,
      Din(4) => \MemArray[0].MemoryX_i_5__0_n_0\,
      Din(3) => \MemArray[0].MemoryX_i_6__0_n_0\,
      Din(2) => \MemArray[0].MemoryX_i_7__0_n_0\,
      Din(1) => \MemArray[0].MemoryX_i_8__0_n_0\,
      Din(0) => \MemArray[0].MemoryX_i_9__0_n_0\,
      Dout(7 downto 0) => Dout(7 downto 0),
      Empty => \NLW_MemArray[0].MemoryX_Empty_UNCONNECTED\,
      Full => \NLW_MemArray[0].MemoryX_Full_UNCONNECTED\,
      Nullflag => Nullflag,
      RESET => \MemArray[0].MemoryX_i_1_n_0\,
      Read => \MemArray[0].MemoryX_i_11_n_0\,
      WRCNT(9 downto 0) => \NLW_MemArray[0].MemoryX_WRCNT_UNCONNECTED\(9 downto 0),
      Write => \MemArray[0].MemoryX_i_10__0_n_0\,
      \u_ila_0_WRCNT_loc[0]\ => \u_ila_0_WRCNT_loc[0]\,
      \u_ila_0_WRCNT_loc[1]\ => \u_ila_0_WRCNT_loc[1]\,
      \u_ila_0_WRCNT_loc[2]\ => \u_ila_0_WRCNT_loc[2]\,
      \u_ila_0_WRCNT_loc[3]\ => \u_ila_0_WRCNT_loc[3]\,
      \u_ila_0_WRCNT_loc[4]\ => \u_ila_0_WRCNT_loc[4]\,
      \u_ila_0_WRCNT_loc[5]\ => \u_ila_0_WRCNT_loc[5]\,
      \u_ila_0_WRCNT_loc[6]\ => \u_ila_0_WRCNT_loc[6]\,
      \u_ila_0_WRCNT_loc[7]\ => \u_ila_0_WRCNT_loc[7]\,
      \u_ila_0_WRCNT_loc[8]\ => \u_ila_0_WRCNT_loc[8]\,
      \u_ila_0_WRCNT_loc[9]\ => \u_ila_0_WRCNT_loc[9]\
    );
\MemArray[0].MemoryX_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => State(1),
      I1 => State(3),
      I2 => State(2),
      O => \MemArray[0].MemoryX_i_1_n_0\
    );
\MemArray[0].MemoryX_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \MemArray[0].MemoryX_i_12__0_n_0\,
      I1 => ChanAddressReg,
      I2 => \^decodewrite\,
      I3 => State(2),
      I4 => State(3),
      I5 => WaveID,
      O => \MemArray[0].MemoryX_i_10__0_n_0\
    );
\MemArray[0].MemoryX_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088E2"
    )
        port map (
      I0 => State(2),
      I1 => State(1),
      I2 => State(3),
      I3 => State(0),
      I4 => WaveID,
      O => \MemArray[0].MemoryX_i_11_n_0\
    );
\MemArray[0].MemoryX_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => State(0),
      I1 => State(1),
      O => \MemArray[0].MemoryX_i_12__0_n_0\
    );
\MemArray[0].MemoryX_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => Write_IBUF(1),
      I1 => Write_IBUF(2),
      I2 => Write_IBUF(0),
      O => \^decodewrite\
    );
\MemArray[0].MemoryX_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(7),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_2__0_n_0\
    );
\MemArray[0].MemoryX_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(6),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_3__0_n_0\
    );
\MemArray[0].MemoryX_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(5),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_4__0_n_0\
    );
\MemArray[0].MemoryX_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(4),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_5__0_n_0\
    );
\MemArray[0].MemoryX_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(3),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_6__0_n_0\
    );
\MemArray[0].MemoryX_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(2),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_7__0_n_0\
    );
\MemArray[0].MemoryX_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(1),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_8__0_n_0\
    );
\MemArray[0].MemoryX_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(0),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_9__0_n_0\
    );
\MemArray[1].MemoryX\: entity work.\Memory__1\
     port map (
      Addr0 => Addr0,
      CLK => CLK_IBUF_BUFG,
      Din(7) => \MemArray[0].MemoryX_i_2__0_n_0\,
      Din(6) => \MemArray[0].MemoryX_i_3__0_n_0\,
      Din(5) => \MemArray[0].MemoryX_i_4__0_n_0\,
      Din(4) => \MemArray[0].MemoryX_i_5__0_n_0\,
      Din(3) => \MemArray[0].MemoryX_i_6__0_n_0\,
      Din(2) => \MemArray[0].MemoryX_i_7__0_n_0\,
      Din(1) => \MemArray[0].MemoryX_i_8__0_n_0\,
      Din(0) => \MemArray[0].MemoryX_i_9__0_n_0\,
      Dout(7) => \MemArray[1].MemoryX_n_0\,
      Dout(6) => \MemArray[1].MemoryX_n_1\,
      Dout(5) => \MemArray[1].MemoryX_n_2\,
      Dout(4) => \MemArray[1].MemoryX_n_3\,
      Dout(3) => \MemArray[1].MemoryX_n_4\,
      Dout(2) => \MemArray[1].MemoryX_n_5\,
      Dout(1) => \MemArray[1].MemoryX_n_6\,
      Dout(0) => \MemArray[1].MemoryX_n_7\,
      Empty => \NLW_MemArray[1].MemoryX_Empty_UNCONNECTED\,
      Full => \NLW_MemArray[1].MemoryX_Full_UNCONNECTED\,
      Nullflag => \MemArray[1].MemoryX_n_20\,
      RESET => \MemArray[0].MemoryX_i_1_n_0\,
      Read => Read,
      WRCNT(9 downto 0) => \NLW_MemArray[1].MemoryX_WRCNT_UNCONNECTED\(9 downto 0),
      Write => mux3_out(1),
      \u_ila_0_WRCNT_loc[0]\ => \u_ila_0_WRCNT_loc[0]_1\,
      \u_ila_0_WRCNT_loc[1]\ => \u_ila_0_WRCNT_loc[1]_1\,
      \u_ila_0_WRCNT_loc[2]\ => \u_ila_0_WRCNT_loc[2]_1\,
      \u_ila_0_WRCNT_loc[3]\ => \u_ila_0_WRCNT_loc[3]_1\,
      \u_ila_0_WRCNT_loc[4]\ => \u_ila_0_WRCNT_loc[4]_1\,
      \u_ila_0_WRCNT_loc[5]\ => \u_ila_0_WRCNT_loc[5]_1\,
      \u_ila_0_WRCNT_loc[6]\ => \u_ila_0_WRCNT_loc[6]_1\,
      \u_ila_0_WRCNT_loc[7]\ => \u_ila_0_WRCNT_loc[7]_1\,
      \u_ila_0_WRCNT_loc[8]\ => \u_ila_0_WRCNT_loc[8]_1\,
      \u_ila_0_WRCNT_loc[9]\ => \u_ila_0_WRCNT_loc[9]_1\
    );
\MemArray[1].MemoryX_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \MemArray[0].MemoryX_i_12__0_n_0\,
      I1 => ChanAddressReg,
      I2 => \^decodewrite\,
      I3 => State(2),
      I4 => State(3),
      I5 => WaveID,
      O => mux3_out(1)
    );
\MemArray[1].MemoryX_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88E20000"
    )
        port map (
      I0 => State(2),
      I1 => State(1),
      I2 => State(3),
      I3 => State(0),
      I4 => WaveID,
      O => Read
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
      O => clear
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
      R => clear
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
      R => clear
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
      R => clear
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
      R => clear
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
      R => clear
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
      R => clear
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
      R => clear
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
      R => clear
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
      R => clear
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => Q(6),
      I2 => Q(7),
      I3 => \counter_reg__0\(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => Q(4),
      I2 => Q(5),
      I3 => \counter_reg__0\(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \counter_reg__0\(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \counter_reg__0\(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => Q(6),
      I2 => \counter_reg__0\(7),
      I3 => Q(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => Q(4),
      I2 => \counter_reg__0\(5),
      I3 => Q(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => Q(2),
      I2 => \counter_reg__0\(3),
      I3 => Q(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => Q(0),
      I2 => \counter_reg__0\(1),
      I3 => Q(1),
      O => \i__carry_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Channel_1 is
  port (
    SS_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    SCLK_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_reg_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 4 downto 0 );
    EnWrite_IBUF : in STD_LOGIC;
    ChanAddressReg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FolState2_carry_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DecodeWrite : in STD_LOGIC;
    Din_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \WaveAdressA[1]\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    RESET_CH_IBUF : in STD_LOGIC;
    \u_ila_0_WRCNT_loc[0]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[1]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[2]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[3]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[4]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[5]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[6]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[7]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[8]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[9]\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[0]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[1]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[2]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[3]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[4]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[5]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[6]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[7]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[8]_1\ : out STD_LOGIC;
    \u_ila_0_WRCNT_loc[9]_1\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[0]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[1]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[2]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[3]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[4]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[5]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[6]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[7]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[8]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[9]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[10]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[11]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[12]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[13]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[14]\ : out STD_LOGIC;
    \u_ila_0_tx_reg2[15]\ : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Channel_1 : entity is "Channel";
end Channel_1;

architecture STRUCTURE of Channel_1 is
  signal Addr0 : STD_LOGIC;
  signal \Addr0_i_1__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_10__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_11__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_12__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_13__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_6__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_7__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_8__0_n_0\ : STD_LOGIC;
  signal \C_reg_i_9__0_n_0\ : STD_LOGIC;
  signal C_reg_n_100 : STD_LOGIC;
  signal C_reg_n_101 : STD_LOGIC;
  signal C_reg_n_102 : STD_LOGIC;
  signal C_reg_n_103 : STD_LOGIC;
  signal C_reg_n_104 : STD_LOGIC;
  signal C_reg_n_105 : STD_LOGIC;
  signal C_reg_n_90 : STD_LOGIC;
  signal C_reg_n_91 : STD_LOGIC;
  signal C_reg_n_92 : STD_LOGIC;
  signal C_reg_n_93 : STD_LOGIC;
  signal C_reg_n_94 : STD_LOGIC;
  signal C_reg_n_95 : STD_LOGIC;
  signal C_reg_n_96 : STD_LOGIC;
  signal C_reg_n_97 : STD_LOGIC;
  signal C_reg_n_98 : STD_LOGIC;
  signal C_reg_n_99 : STD_LOGIC;
  signal Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Dout[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \Dout_reg_n_0_[0]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[10]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[11]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[12]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[13]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[14]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[15]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[1]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[2]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[3]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[4]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[5]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[6]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[7]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[8]\ : STD_LOGIC;
  signal \Dout_reg_n_0_[9]\ : STD_LOGIC;
  signal FolState : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FolState1_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \FolState1_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal FolState23_in : STD_LOGIC;
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
  signal \MemArray[0].MemoryX_i_10_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_11__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_12_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_1__0_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_2_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_3_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_4_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_5_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_6_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_7_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_8_n_0\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_i_9_n_0\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_0\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_1\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_2\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_20\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_3\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_4\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_5\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_6\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_7\ : STD_LOGIC;
  signal Nullflag : STD_LOGIC;
  signal Read : STD_LOGIC;
  signal State : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \State[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \State[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \State[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \State[2]_i_4__0_n_0\ : STD_LOGIC;
  signal WaveID : STD_LOGIC;
  signal \WaveIDZ[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \WaveIDZ_reg_n_0_[0]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \counter[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal mux1_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal mux3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal mux4_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_C_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_C_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_C_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_C_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_C_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_C_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_FolState1_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FolState1_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FolState1_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_FolState2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FolState2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FolState2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MemArray[0].MemoryX_Empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_MemArray[0].MemoryX_Full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_MemArray[0].MemoryX_WRCNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_MemArray[1].MemoryX_Empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_MemArray[1].MemoryX_Full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_MemArray[1].MemoryX_WRCNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute Adresswidth : integer;
  attribute Adresswidth of \MemArray[0].MemoryX\ : label is 10;
  attribute Wordwidth : integer;
  attribute Wordwidth of \MemArray[0].MemoryX\ : label is 8;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MemArray[0].MemoryX_i_11__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \MemArray[0].MemoryX_i_12\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \MemArray[0].MemoryX_i_1__0\ : label is "soft_lutpair38";
  attribute Adresswidth of \MemArray[1].MemoryX\ : label is 10;
  attribute Wordwidth of \MemArray[1].MemoryX\ : label is 8;
  attribute SOFT_HLUTNM of \MemArray[1].MemoryX_i_2__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \State[2]_i_4__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \counter[3]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \counter[4]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \counter[6]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \counter[7]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \counter[8]_i_2__0\ : label is "soft_lutpair36";
begin
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
C_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 0,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
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
      USE_DPORT => true,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111111111111111111111110000001",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_C_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(4),
      B(16) => B(4),
      B(15) => B(4),
      B(14) => B(4),
      B(13) => B(4),
      B(12) => B(4),
      B(11) => B(4),
      B(10) => B(4),
      B(9) => B(4),
      B(8 downto 4) => B(4 downto 0),
      B(3 downto 0) => B"0000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_C_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111000000000000000",
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
      CEB2 => \C_reg_i_1__0_n_0\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => \C_reg_i_1__0_n_0\,
      CEINMODE => '0',
      CEM => '0',
      CEP => \C_reg_i_1__0_n_0\,
      CLK => CLK_IBUF_BUFG,
      D(24 downto 8) => B"00000000000000000",
      D(7) => \C_reg_i_6__0_n_0\,
      D(6) => \C_reg_i_7__0_n_0\,
      D(5) => \C_reg_i_8__0_n_0\,
      D(4) => \C_reg_i_9__0_n_0\,
      D(3) => \C_reg_i_10__0_n_0\,
      D(2) => \C_reg_i_11__0_n_0\,
      D(1) => \C_reg_i_12__0_n_0\,
      D(0) => \C_reg_i_13__0_n_0\,
      INMODE(4 downto 0) => B"00100",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_C_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_C_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_C_reg_P_UNCONNECTED(47 downto 16),
      P(15) => C_reg_n_90,
      P(14) => C_reg_n_91,
      P(13) => C_reg_n_92,
      P(12) => C_reg_n_93,
      P(11) => C_reg_n_94,
      P(10) => C_reg_n_95,
      P(9) => C_reg_n_96,
      P(8) => C_reg_n_97,
      P(7) => C_reg_n_98,
      P(6) => C_reg_n_99,
      P(5) => C_reg_n_100,
      P(4) => C_reg_n_101,
      P(3) => C_reg_n_102,
      P(2) => C_reg_n_103,
      P(1) => C_reg_n_104,
      P(0) => C_reg_n_105,
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
\C_reg_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_4\,
      I1 => Dout(3),
      I2 => WaveID,
      O => \C_reg_i_10__0_n_0\
    );
\C_reg_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_5\,
      I1 => Dout(2),
      I2 => WaveID,
      O => \C_reg_i_11__0_n_0\
    );
\C_reg_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_6\,
      I1 => Dout(1),
      I2 => WaveID,
      O => \C_reg_i_12__0_n_0\
    );
\C_reg_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_7\,
      I1 => Dout(0),
      I2 => WaveID,
      O => \C_reg_i_13__0_n_0\
    );
\C_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA8"
    )
        port map (
      I0 => State(2),
      I1 => State(1),
      I2 => State(3),
      I3 => State(0),
      O => \C_reg_i_1__0_n_0\
    );
\C_reg_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_0\,
      I1 => Dout(7),
      I2 => WaveID,
      O => \C_reg_i_6__0_n_0\
    );
\C_reg_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_1\,
      I1 => Dout(6),
      I2 => WaveID,
      O => \C_reg_i_7__0_n_0\
    );
\C_reg_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_2\,
      I1 => Dout(5),
      I2 => WaveID,
      O => \C_reg_i_8__0_n_0\
    );
\C_reg_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \MemArray[1].MemoryX_n_3\,
      I1 => Dout(4),
      I2 => WaveID,
      O => \C_reg_i_9__0_n_0\
    );
\Dout[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"017F"
    )
        port map (
      I0 => State(0),
      I1 => State(3),
      I2 => State(1),
      I3 => State(2),
      O => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_105,
      Q => \Dout_reg_n_0_[0]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_95,
      Q => \Dout_reg_n_0_[10]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_94,
      Q => \Dout_reg_n_0_[11]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_93,
      Q => \Dout_reg_n_0_[12]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_92,
      Q => \Dout_reg_n_0_[13]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_91,
      Q => \Dout_reg_n_0_[14]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_90,
      Q => \Dout_reg_n_0_[15]\,
      S => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_104,
      Q => \Dout_reg_n_0_[1]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_103,
      Q => \Dout_reg_n_0_[2]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_102,
      Q => \Dout_reg_n_0_[3]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_101,
      Q => \Dout_reg_n_0_[4]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_100,
      Q => \Dout_reg_n_0_[5]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_99,
      Q => \Dout_reg_n_0_[6]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_98,
      Q => \Dout_reg_n_0_[7]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_97,
      Q => \Dout_reg_n_0_[8]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\Dout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => C_reg_n_96,
      Q => \Dout_reg_n_0_[9]\,
      R => \Dout[15]_i_1__0_n_0\
    );
\FolState1_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FolState1_inferred__2/i__carry_n_0\,
      CO(2) => \FolState1_inferred__2/i__carry_n_1\,
      CO(1) => \FolState1_inferred__2/i__carry_n_2\,
      CO(0) => \FolState1_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_FolState1_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
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
      CO(0) => FolState23_in,
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
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CO(0) => FolState23_in,
      ChanAddressReg => ChanAddressReg,
      D(3 downto 0) => FolState(3 downto 0),
      EnWrite_IBUF => EnWrite_IBUF,
      \FSM_onehot_spitxstate_reg[0]_0\(3 downto 0) => State(3 downto 0),
      Nullflag => Nullflag,
      Q(15) => \Dout_reg_n_0_[15]\,
      Q(14) => \Dout_reg_n_0_[14]\,
      Q(13) => \Dout_reg_n_0_[13]\,
      Q(12) => \Dout_reg_n_0_[12]\,
      Q(11) => \Dout_reg_n_0_[11]\,
      Q(10) => \Dout_reg_n_0_[10]\,
      Q(9) => \Dout_reg_n_0_[9]\,
      Q(8) => \Dout_reg_n_0_[8]\,
      Q(7) => \Dout_reg_n_0_[7]\,
      Q(6) => \Dout_reg_n_0_[6]\,
      Q(5) => \Dout_reg_n_0_[5]\,
      Q(4) => \Dout_reg_n_0_[4]\,
      Q(3) => \Dout_reg_n_0_[3]\,
      Q(2) => \Dout_reg_n_0_[2]\,
      Q(1) => \Dout_reg_n_0_[1]\,
      Q(0) => \Dout_reg_n_0_[0]\,
      SS_OBUF(0) => SS_OBUF(0),
      \State_reg[0]\ => \State[0]_i_3__0_n_0\,
      \State_reg[1]\ => \State[1]_i_3__0_n_0\,
      \State_reg[2]\ => \State[2]_i_2__0_n_0\,
      \State_reg[3]\ => \MemArray[1].MemoryX_n_20\,
      WaveID => WaveID,
      mux4_out(0) => mux4_out(1),
      spiclk_reg_0 => SCLK_OBUF(0),
      \tx_reg_reg[15]_0\(0) => \tx_reg_reg[15]\(0),
      \u_ila_0_tx_reg2[0]\ => \u_ila_0_tx_reg2[0]\,
      \u_ila_0_tx_reg2[10]\ => \u_ila_0_tx_reg2[10]\,
      \u_ila_0_tx_reg2[11]\ => \u_ila_0_tx_reg2[11]\,
      \u_ila_0_tx_reg2[12]\ => \u_ila_0_tx_reg2[12]\,
      \u_ila_0_tx_reg2[13]\ => \u_ila_0_tx_reg2[13]\,
      \u_ila_0_tx_reg2[14]\ => \u_ila_0_tx_reg2[14]\,
      \u_ila_0_tx_reg2[15]\ => \u_ila_0_tx_reg2[15]\,
      \u_ila_0_tx_reg2[1]\ => \u_ila_0_tx_reg2[1]\,
      \u_ila_0_tx_reg2[2]\ => \u_ila_0_tx_reg2[2]\,
      \u_ila_0_tx_reg2[3]\ => \u_ila_0_tx_reg2[3]\,
      \u_ila_0_tx_reg2[4]\ => \u_ila_0_tx_reg2[4]\,
      \u_ila_0_tx_reg2[5]\ => \u_ila_0_tx_reg2[5]\,
      \u_ila_0_tx_reg2[6]\ => \u_ila_0_tx_reg2[6]\,
      \u_ila_0_tx_reg2[7]\ => \u_ila_0_tx_reg2[7]\,
      \u_ila_0_tx_reg2[8]\ => \u_ila_0_tx_reg2[8]\,
      \u_ila_0_tx_reg2[9]\ => \u_ila_0_tx_reg2[9]\
    );
\MemArray[0].MemoryX\: entity work.\Memory__2\
     port map (
      Addr0 => Addr0,
      CLK => CLK_IBUF_BUFG,
      Din(7) => \MemArray[0].MemoryX_i_2_n_0\,
      Din(6) => \MemArray[0].MemoryX_i_3_n_0\,
      Din(5) => \MemArray[0].MemoryX_i_4_n_0\,
      Din(4) => \MemArray[0].MemoryX_i_5_n_0\,
      Din(3) => \MemArray[0].MemoryX_i_6_n_0\,
      Din(2) => \MemArray[0].MemoryX_i_7_n_0\,
      Din(1) => \MemArray[0].MemoryX_i_8_n_0\,
      Din(0) => \MemArray[0].MemoryX_i_9_n_0\,
      Dout(7 downto 0) => Dout(7 downto 0),
      Empty => \NLW_MemArray[0].MemoryX_Empty_UNCONNECTED\,
      Full => \NLW_MemArray[0].MemoryX_Full_UNCONNECTED\,
      Nullflag => Nullflag,
      RESET => \MemArray[0].MemoryX_i_1__0_n_0\,
      Read => \MemArray[0].MemoryX_i_11__0_n_0\,
      WRCNT(9 downto 0) => \NLW_MemArray[0].MemoryX_WRCNT_UNCONNECTED\(9 downto 0),
      Write => \MemArray[0].MemoryX_i_10_n_0\,
      \u_ila_0_WRCNT_loc[0]\ => \u_ila_0_WRCNT_loc[0]_1\,
      \u_ila_0_WRCNT_loc[1]\ => \u_ila_0_WRCNT_loc[1]_1\,
      \u_ila_0_WRCNT_loc[2]\ => \u_ila_0_WRCNT_loc[2]_1\,
      \u_ila_0_WRCNT_loc[3]\ => \u_ila_0_WRCNT_loc[3]_1\,
      \u_ila_0_WRCNT_loc[4]\ => \u_ila_0_WRCNT_loc[4]_1\,
      \u_ila_0_WRCNT_loc[5]\ => \u_ila_0_WRCNT_loc[5]_1\,
      \u_ila_0_WRCNT_loc[6]\ => \u_ila_0_WRCNT_loc[6]_1\,
      \u_ila_0_WRCNT_loc[7]\ => \u_ila_0_WRCNT_loc[7]_1\,
      \u_ila_0_WRCNT_loc[8]\ => \u_ila_0_WRCNT_loc[8]_1\,
      \u_ila_0_WRCNT_loc[9]\ => \u_ila_0_WRCNT_loc[9]_1\
    );
\MemArray[0].MemoryX_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \MemArray[0].MemoryX_i_12_n_0\,
      I1 => ChanAddressReg,
      I2 => DecodeWrite,
      I3 => State(2),
      I4 => State(3),
      I5 => WaveID,
      O => \MemArray[0].MemoryX_i_10_n_0\
    );
\MemArray[0].MemoryX_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088E2"
    )
        port map (
      I0 => State(2),
      I1 => State(1),
      I2 => State(3),
      I3 => State(0),
      I4 => WaveID,
      O => \MemArray[0].MemoryX_i_11__0_n_0\
    );
\MemArray[0].MemoryX_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => State(0),
      I1 => State(1),
      O => \MemArray[0].MemoryX_i_12_n_0\
    );
\MemArray[0].MemoryX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => State(1),
      I1 => State(3),
      I2 => State(2),
      O => \MemArray[0].MemoryX_i_1__0_n_0\
    );
\MemArray[0].MemoryX_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(7),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_2_n_0\
    );
\MemArray[0].MemoryX_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(6),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_3_n_0\
    );
\MemArray[0].MemoryX_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(5),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_4_n_0\
    );
\MemArray[0].MemoryX_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(4),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_5_n_0\
    );
\MemArray[0].MemoryX_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(3),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_6_n_0\
    );
\MemArray[0].MemoryX_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(2),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_7_n_0\
    );
\MemArray[0].MemoryX_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(1),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_8_n_0\
    );
\MemArray[0].MemoryX_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => State(3),
      I1 => State(2),
      I2 => Din_IBUF(0),
      I3 => State(0),
      I4 => State(1),
      O => \MemArray[0].MemoryX_i_9_n_0\
    );
\MemArray[1].MemoryX\: entity work.Memory
     port map (
      Addr0 => Addr0,
      CLK => CLK_IBUF_BUFG,
      Din(7) => \MemArray[0].MemoryX_i_2_n_0\,
      Din(6) => \MemArray[0].MemoryX_i_3_n_0\,
      Din(5) => \MemArray[0].MemoryX_i_4_n_0\,
      Din(4) => \MemArray[0].MemoryX_i_5_n_0\,
      Din(3) => \MemArray[0].MemoryX_i_6_n_0\,
      Din(2) => \MemArray[0].MemoryX_i_7_n_0\,
      Din(1) => \MemArray[0].MemoryX_i_8_n_0\,
      Din(0) => \MemArray[0].MemoryX_i_9_n_0\,
      Dout(7) => \MemArray[1].MemoryX_n_0\,
      Dout(6) => \MemArray[1].MemoryX_n_1\,
      Dout(5) => \MemArray[1].MemoryX_n_2\,
      Dout(4) => \MemArray[1].MemoryX_n_3\,
      Dout(3) => \MemArray[1].MemoryX_n_4\,
      Dout(2) => \MemArray[1].MemoryX_n_5\,
      Dout(1) => \MemArray[1].MemoryX_n_6\,
      Dout(0) => \MemArray[1].MemoryX_n_7\,
      Empty => \NLW_MemArray[1].MemoryX_Empty_UNCONNECTED\,
      Full => \NLW_MemArray[1].MemoryX_Full_UNCONNECTED\,
      Nullflag => \MemArray[1].MemoryX_n_20\,
      RESET => \MemArray[0].MemoryX_i_1__0_n_0\,
      Read => Read,
      WRCNT(9 downto 0) => \NLW_MemArray[1].MemoryX_WRCNT_UNCONNECTED\(9 downto 0),
      Write => mux3_out(1),
      \u_ila_0_WRCNT_loc[0]\ => \u_ila_0_WRCNT_loc[0]\,
      \u_ila_0_WRCNT_loc[1]\ => \u_ila_0_WRCNT_loc[1]\,
      \u_ila_0_WRCNT_loc[2]\ => \u_ila_0_WRCNT_loc[2]\,
      \u_ila_0_WRCNT_loc[3]\ => \u_ila_0_WRCNT_loc[3]\,
      \u_ila_0_WRCNT_loc[4]\ => \u_ila_0_WRCNT_loc[4]\,
      \u_ila_0_WRCNT_loc[5]\ => \u_ila_0_WRCNT_loc[5]\,
      \u_ila_0_WRCNT_loc[6]\ => \u_ila_0_WRCNT_loc[6]\,
      \u_ila_0_WRCNT_loc[7]\ => \u_ila_0_WRCNT_loc[7]\,
      \u_ila_0_WRCNT_loc[8]\ => \u_ila_0_WRCNT_loc[8]\,
      \u_ila_0_WRCNT_loc[9]\ => \u_ila_0_WRCNT_loc[9]\
    );
\MemArray[1].MemoryX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \MemArray[0].MemoryX_i_12_n_0\,
      I1 => ChanAddressReg,
      I2 => DecodeWrite,
      I3 => State(2),
      I4 => State(3),
      I5 => WaveID,
      O => mux3_out(1)
    );
\MemArray[1].MemoryX_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88E20000"
    )
        port map (
      I0 => State(2),
      I1 => State(1),
      I2 => State(3),
      I3 => State(0),
      I4 => WaveID,
      O => Read
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
      O => \p_0_in__0\(0)
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => \p_0_in__0\(2)
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
      O => \p_0_in__0\(3)
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
      O => \p_0_in__0\(4)
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
      O => \p_0_in__0\(5)
    );
\counter[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter[8]_i_3__0_n_0\,
      I1 => \counter_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\counter[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter[8]_i_3__0_n_0\,
      I1 => \counter_reg__0\(6),
      I2 => \counter_reg__0\(7),
      O => \p_0_in__0\(7)
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
      O => clear
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
      O => \p_0_in__0\(8)
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
      D => \p_0_in__0\(0),
      Q => \counter_reg__0\(0),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \counter_reg__0\(1),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \counter_reg__0\(2),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \counter_reg__0\(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \counter_reg__0\(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \counter_reg__0\(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \counter_reg__0\(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \counter_reg__0\(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => \counter_reg__0\(8),
      R => clear
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(8),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => Q(6),
      I2 => Q(7),
      I3 => \counter_reg__0\(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => Q(4),
      I2 => Q(5),
      I3 => \counter_reg__0\(5),
      O => \i__carry_i_2__0_n_0\
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
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => Q(6),
      I2 => \counter_reg__0\(7),
      I3 => Q(7),
      O => \i__carry_i_5__0_n_0\
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
    Write : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
  attribute Adresswidth of Stimulator : entity is 10;
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
  component dbg_hub_CV is
  port (
    clk : in STD_LOGIC;
    sl_iport0_o : out STD_LOGIC_VECTOR ( 0 to 36 );
    sl_oport0_i : in STD_LOGIC_VECTOR ( 0 to 16 )
  );
  end component dbg_hub_CV;
  component u_ila_0_CV is
  port (
    clk : in STD_LOGIC;
    SL_IPORT_I : in STD_LOGIC_VECTOR ( 0 to 36 );
    SL_OPORT_O : out STD_LOGIC_VECTOR ( 0 to 16 );
    probe0 : in STD_LOGIC_VECTOR ( 0 to 15 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 9 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 15 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 9 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 9 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 9 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component u_ila_0_CV;
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
  signal DecodeWrite : STD_LOGIC;
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
  signal Write_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sl_iport0_o_0 : STD_LOGIC_VECTOR ( 0 to 36 );
  signal sl_oport0_i_0 : STD_LOGIC_VECTOR ( 0 to 16 );
  signal \u_ila_0_WRCNT_loc[0]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[0]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[0]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[0]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[1]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[1]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[1]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[1]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[2]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[2]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[2]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[2]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[3]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[3]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[3]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[3]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[4]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[4]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[4]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[4]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[5]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[5]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[5]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[5]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[6]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[6]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[6]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[6]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[7]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[7]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[7]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[7]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[8]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[8]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[8]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[8]_3\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[9]\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[9]_1\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[9]_2\ : STD_LOGIC;
  signal \u_ila_0_WRCNT_loc[9]_3\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[0]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[0]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[10]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[10]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[11]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[11]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[12]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[12]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[13]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[13]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[14]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[14]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[15]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[15]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[1]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[1]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[2]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[2]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[3]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[3]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[4]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[4]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[5]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[5]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[6]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[6]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[7]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[7]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[8]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[8]_1\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[9]\ : STD_LOGIC;
  signal \u_ila_0_tx_reg2[9]_1\ : STD_LOGIC;
  attribute DEBUG_PORT_clk : string;
  attribute DEBUG_PORT_clk of dbg_hub : label is "";
  attribute IS_DEBUG_CORE : boolean;
  attribute IS_DEBUG_CORE of dbg_hub : label is std.standard.true;
  attribute DEBUG_PORT_clk of u_ila_0 : label is "n:CLK_IBUF_BUFG";
  attribute DEBUG_PORT_probe0 : string;
  attribute DEBUG_PORT_probe0 of u_ila_0 : label is "n:ChannelArray[0].ChannelX/Interface/tx_reg2[15],n:ChannelArray[0].ChannelX/Interface/tx_reg2[14],n:ChannelArray[0].ChannelX/Interface/tx_reg2[13],n:ChannelArray[0].ChannelX/Interface/tx_reg2[12],n:ChannelArray[0].ChannelX/Interface/tx_reg2[11],n:ChannelArray[0].ChannelX/Interface/tx_reg2[10],n:ChannelArray[0].ChannelX/Interface/tx_reg2[9],n:ChannelArray[0].ChannelX/Interface/tx_reg2[8],n:ChannelArray[0].ChannelX/Interface/tx_reg2[7],n:ChannelArray[0].ChannelX/Interface/tx_reg2[6],n:ChannelArray[0].ChannelX/Interface/tx_reg2[5],n:ChannelArray[0].ChannelX/Interface/tx_reg2[4],n:ChannelArray[0].ChannelX/Interface/tx_reg2[3],n:ChannelArray[0].ChannelX/Interface/tx_reg2[2],n:ChannelArray[0].ChannelX/Interface/tx_reg2[1],n:ChannelArray[0].ChannelX/Interface/tx_reg2[0]";
  attribute DEBUG_PORT_probe1 : string;
  attribute DEBUG_PORT_probe1 of u_ila_0 : label is "n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[9],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[8],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[7],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[6],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[5],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[4],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[3],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[2],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[1],n:ChannelArray[1].ChannelX/MemArray[1].MemoryX/WRCNT_loc[0]";
  attribute DEBUG_PORT_probe2 : string;
  attribute DEBUG_PORT_probe2 of u_ila_0 : label is "n:ChannelArray[1].ChannelX/Interface/tx_reg2[15],n:ChannelArray[1].ChannelX/Interface/tx_reg2[14],n:ChannelArray[1].ChannelX/Interface/tx_reg2[13],n:ChannelArray[1].ChannelX/Interface/tx_reg2[12],n:ChannelArray[1].ChannelX/Interface/tx_reg2[11],n:ChannelArray[1].ChannelX/Interface/tx_reg2[10],n:ChannelArray[1].ChannelX/Interface/tx_reg2[9],n:ChannelArray[1].ChannelX/Interface/tx_reg2[8],n:ChannelArray[1].ChannelX/Interface/tx_reg2[7],n:ChannelArray[1].ChannelX/Interface/tx_reg2[6],n:ChannelArray[1].ChannelX/Interface/tx_reg2[5],n:ChannelArray[1].ChannelX/Interface/tx_reg2[4],n:ChannelArray[1].ChannelX/Interface/tx_reg2[3],n:ChannelArray[1].ChannelX/Interface/tx_reg2[2],n:ChannelArray[1].ChannelX/Interface/tx_reg2[1],n:ChannelArray[1].ChannelX/Interface/tx_reg2[0]";
  attribute DEBUG_PORT_probe3 : string;
  attribute DEBUG_PORT_probe3 of u_ila_0 : label is "n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[9],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[8],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[7],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[6],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[5],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[4],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[3],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[2],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[1],n:ChannelArray[1].ChannelX/MemArray[0].MemoryX/WRCNT_loc[0]";
  attribute DEBUG_PORT_probe4 : string;
  attribute DEBUG_PORT_probe4 of u_ila_0 : label is "n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[9],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[8],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[7],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[6],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[5],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[4],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[3],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[2],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[1],n:ChannelArray[0].ChannelX/MemArray[0].MemoryX/WRCNT_loc[0]";
  attribute DEBUG_PORT_probe5 : string;
  attribute DEBUG_PORT_probe5 of u_ila_0 : label is "n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[9],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[8],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[7],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[6],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[5],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[4],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[3],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[2],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[1],n:ChannelArray[0].ChannelX/MemArray[1].MemoryX/WRCNT_loc[0]";
  attribute DEBUG_PORT_probe6 : string;
  attribute DEBUG_PORT_probe6 of u_ila_0 : label is "n:ChannelArray[0].ChannelX/DecodeWrite";
  attribute IS_DEBUG_CORE of u_ila_0 : label is std.standard.true;
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
      B(4) => \ChannelArray[0].ChannelREG_n_1\,
      B(3) => \ChannelArray[0].ChannelREG_n_2\,
      B(2) => \ChannelArray[0].ChannelREG_n_3\,
      B(1) => \ChannelArray[0].ChannelREG_n_4\,
      B(0) => OUT_Amplitude(0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      D(3 downto 0) => Amplitude_IBUF(3 downto 0),
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
      B(4) => \ChannelArray[0].ChannelREG_n_1\,
      B(3) => \ChannelArray[0].ChannelREG_n_2\,
      B(2) => \ChannelArray[0].ChannelREG_n_3\,
      B(1) => \ChannelArray[0].ChannelREG_n_4\,
      B(0) => OUT_Amplitude(0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      DecodeWrite => DecodeWrite,
      Din_IBUF(7 downto 0) => Din_IBUF(7 downto 0),
      EnWrite_IBUF => EnWrite_IBUF,
      FolState2_carry_0(7 downto 0) => OUT_InterPeriods(7 downto 0),
      Q(7 downto 0) => OUT_InterInterval(7 downto 0),
      RESET_CH_IBUF => RESET_CH_IBUF,
      RESET_IBUF => RESET_IBUF,
      SCLK_OBUF(0) => SCLK_OBUF(0),
      SS_OBUF(0) => SS_OBUF(0),
      \WaveAdressA[0]\ => \WaveAdressA[0]\,
      Write_IBUF(2 downto 0) => Write_IBUF(2 downto 0),
      \tx_reg_reg[15]\(0) => MOSI_OBUF(0),
      \u_ila_0_WRCNT_loc[0]\ => \u_ila_0_WRCNT_loc[0]\,
      \u_ila_0_WRCNT_loc[0]_1\ => \u_ila_0_WRCNT_loc[0]_1\,
      \u_ila_0_WRCNT_loc[1]\ => \u_ila_0_WRCNT_loc[1]\,
      \u_ila_0_WRCNT_loc[1]_1\ => \u_ila_0_WRCNT_loc[1]_1\,
      \u_ila_0_WRCNT_loc[2]\ => \u_ila_0_WRCNT_loc[2]\,
      \u_ila_0_WRCNT_loc[2]_1\ => \u_ila_0_WRCNT_loc[2]_1\,
      \u_ila_0_WRCNT_loc[3]\ => \u_ila_0_WRCNT_loc[3]\,
      \u_ila_0_WRCNT_loc[3]_1\ => \u_ila_0_WRCNT_loc[3]_1\,
      \u_ila_0_WRCNT_loc[4]\ => \u_ila_0_WRCNT_loc[4]\,
      \u_ila_0_WRCNT_loc[4]_1\ => \u_ila_0_WRCNT_loc[4]_1\,
      \u_ila_0_WRCNT_loc[5]\ => \u_ila_0_WRCNT_loc[5]\,
      \u_ila_0_WRCNT_loc[5]_1\ => \u_ila_0_WRCNT_loc[5]_1\,
      \u_ila_0_WRCNT_loc[6]\ => \u_ila_0_WRCNT_loc[6]\,
      \u_ila_0_WRCNT_loc[6]_1\ => \u_ila_0_WRCNT_loc[6]_1\,
      \u_ila_0_WRCNT_loc[7]\ => \u_ila_0_WRCNT_loc[7]\,
      \u_ila_0_WRCNT_loc[7]_1\ => \u_ila_0_WRCNT_loc[7]_1\,
      \u_ila_0_WRCNT_loc[8]\ => \u_ila_0_WRCNT_loc[8]\,
      \u_ila_0_WRCNT_loc[8]_1\ => \u_ila_0_WRCNT_loc[8]_1\,
      \u_ila_0_WRCNT_loc[9]\ => \u_ila_0_WRCNT_loc[9]\,
      \u_ila_0_WRCNT_loc[9]_1\ => \u_ila_0_WRCNT_loc[9]_1\,
      \u_ila_0_tx_reg2[0]\ => \u_ila_0_tx_reg2[0]\,
      \u_ila_0_tx_reg2[10]\ => \u_ila_0_tx_reg2[10]\,
      \u_ila_0_tx_reg2[11]\ => \u_ila_0_tx_reg2[11]\,
      \u_ila_0_tx_reg2[12]\ => \u_ila_0_tx_reg2[12]\,
      \u_ila_0_tx_reg2[13]\ => \u_ila_0_tx_reg2[13]\,
      \u_ila_0_tx_reg2[14]\ => \u_ila_0_tx_reg2[14]\,
      \u_ila_0_tx_reg2[15]\ => \u_ila_0_tx_reg2[15]\,
      \u_ila_0_tx_reg2[1]\ => \u_ila_0_tx_reg2[1]\,
      \u_ila_0_tx_reg2[2]\ => \u_ila_0_tx_reg2[2]\,
      \u_ila_0_tx_reg2[3]\ => \u_ila_0_tx_reg2[3]\,
      \u_ila_0_tx_reg2[4]\ => \u_ila_0_tx_reg2[4]\,
      \u_ila_0_tx_reg2[5]\ => \u_ila_0_tx_reg2[5]\,
      \u_ila_0_tx_reg2[6]\ => \u_ila_0_tx_reg2[6]\,
      \u_ila_0_tx_reg2[7]\ => \u_ila_0_tx_reg2[7]\,
      \u_ila_0_tx_reg2[8]\ => \u_ila_0_tx_reg2[8]\,
      \u_ila_0_tx_reg2[9]\ => \u_ila_0_tx_reg2[9]\
    );
\ChannelArray[1].ChannelREG\: entity work.ChannelConfigReg_0
     port map (
      B(4) => \ChannelArray[1].ChannelREG_n_1\,
      B(3) => \ChannelArray[1].ChannelREG_n_2\,
      B(2) => \ChannelArray[1].ChannelREG_n_3\,
      B(1) => \ChannelArray[1].ChannelREG_n_4\,
      B(0) => \ChannelArray[1].ChannelREG_n_5\,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      D(3 downto 0) => Amplitude_IBUF(3 downto 0),
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
      B(4) => \ChannelArray[1].ChannelREG_n_1\,
      B(3) => \ChannelArray[1].ChannelREG_n_2\,
      B(2) => \ChannelArray[1].ChannelREG_n_3\,
      B(1) => \ChannelArray[1].ChannelREG_n_4\,
      B(0) => \ChannelArray[1].ChannelREG_n_5\,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      ChanAddressReg => ChanAddressReg,
      DecodeWrite => DecodeWrite,
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
      SCLK_OBUF(0) => SCLK_OBUF(1),
      SS_OBUF(0) => SS_OBUF(1),
      \WaveAdressA[1]\ => \WaveAdressA[1]\,
      \tx_reg_reg[15]\(0) => MOSI_OBUF(1),
      \u_ila_0_WRCNT_loc[0]\ => \u_ila_0_WRCNT_loc[0]_2\,
      \u_ila_0_WRCNT_loc[0]_1\ => \u_ila_0_WRCNT_loc[0]_3\,
      \u_ila_0_WRCNT_loc[1]\ => \u_ila_0_WRCNT_loc[1]_2\,
      \u_ila_0_WRCNT_loc[1]_1\ => \u_ila_0_WRCNT_loc[1]_3\,
      \u_ila_0_WRCNT_loc[2]\ => \u_ila_0_WRCNT_loc[2]_2\,
      \u_ila_0_WRCNT_loc[2]_1\ => \u_ila_0_WRCNT_loc[2]_3\,
      \u_ila_0_WRCNT_loc[3]\ => \u_ila_0_WRCNT_loc[3]_2\,
      \u_ila_0_WRCNT_loc[3]_1\ => \u_ila_0_WRCNT_loc[3]_3\,
      \u_ila_0_WRCNT_loc[4]\ => \u_ila_0_WRCNT_loc[4]_2\,
      \u_ila_0_WRCNT_loc[4]_1\ => \u_ila_0_WRCNT_loc[4]_3\,
      \u_ila_0_WRCNT_loc[5]\ => \u_ila_0_WRCNT_loc[5]_2\,
      \u_ila_0_WRCNT_loc[5]_1\ => \u_ila_0_WRCNT_loc[5]_3\,
      \u_ila_0_WRCNT_loc[6]\ => \u_ila_0_WRCNT_loc[6]_2\,
      \u_ila_0_WRCNT_loc[6]_1\ => \u_ila_0_WRCNT_loc[6]_3\,
      \u_ila_0_WRCNT_loc[7]\ => \u_ila_0_WRCNT_loc[7]_2\,
      \u_ila_0_WRCNT_loc[7]_1\ => \u_ila_0_WRCNT_loc[7]_3\,
      \u_ila_0_WRCNT_loc[8]\ => \u_ila_0_WRCNT_loc[8]_2\,
      \u_ila_0_WRCNT_loc[8]_1\ => \u_ila_0_WRCNT_loc[8]_3\,
      \u_ila_0_WRCNT_loc[9]\ => \u_ila_0_WRCNT_loc[9]_2\,
      \u_ila_0_WRCNT_loc[9]_1\ => \u_ila_0_WRCNT_loc[9]_3\,
      \u_ila_0_tx_reg2[0]\ => \u_ila_0_tx_reg2[0]_1\,
      \u_ila_0_tx_reg2[10]\ => \u_ila_0_tx_reg2[10]_1\,
      \u_ila_0_tx_reg2[11]\ => \u_ila_0_tx_reg2[11]_1\,
      \u_ila_0_tx_reg2[12]\ => \u_ila_0_tx_reg2[12]_1\,
      \u_ila_0_tx_reg2[13]\ => \u_ila_0_tx_reg2[13]_1\,
      \u_ila_0_tx_reg2[14]\ => \u_ila_0_tx_reg2[14]_1\,
      \u_ila_0_tx_reg2[15]\ => \u_ila_0_tx_reg2[15]_1\,
      \u_ila_0_tx_reg2[1]\ => \u_ila_0_tx_reg2[1]_1\,
      \u_ila_0_tx_reg2[2]\ => \u_ila_0_tx_reg2[2]_1\,
      \u_ila_0_tx_reg2[3]\ => \u_ila_0_tx_reg2[3]_1\,
      \u_ila_0_tx_reg2[4]\ => \u_ila_0_tx_reg2[4]_1\,
      \u_ila_0_tx_reg2[5]\ => \u_ila_0_tx_reg2[5]_1\,
      \u_ila_0_tx_reg2[6]\ => \u_ila_0_tx_reg2[6]_1\,
      \u_ila_0_tx_reg2[7]\ => \u_ila_0_tx_reg2[7]_1\,
      \u_ila_0_tx_reg2[8]\ => \u_ila_0_tx_reg2[8]_1\,
      \u_ila_0_tx_reg2[9]\ => \u_ila_0_tx_reg2[9]_1\
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
\Write_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Write(0),
      O => Write_IBUF(0)
    );
\Write_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Write(1),
      O => Write_IBUF(1)
    );
\Write_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Write(2),
      O => Write_IBUF(2)
    );
dbg_hub: component dbg_hub_CV
     port map (
      clk => CLK_IBUF_BUFG,
      sl_iport0_o(0 to 36) => sl_iport0_o_0(0 to 36),
      sl_oport0_i(0 to 16) => sl_oport0_i_0(0 to 16)
    );
u_ila_0: component u_ila_0_CV
     port map (
      SL_IPORT_I(0 to 36) => sl_iport0_o_0(0 to 36),
      SL_OPORT_O(0 to 16) => sl_oport0_i_0(0 to 16),
      clk => CLK_IBUF_BUFG,
      probe0(0) => \u_ila_0_tx_reg2[0]\,
      probe0(1) => \u_ila_0_tx_reg2[1]\,
      probe0(2) => \u_ila_0_tx_reg2[2]\,
      probe0(3) => \u_ila_0_tx_reg2[3]\,
      probe0(4) => \u_ila_0_tx_reg2[4]\,
      probe0(5) => \u_ila_0_tx_reg2[5]\,
      probe0(6) => \u_ila_0_tx_reg2[6]\,
      probe0(7) => \u_ila_0_tx_reg2[7]\,
      probe0(8) => \u_ila_0_tx_reg2[8]\,
      probe0(9) => \u_ila_0_tx_reg2[9]\,
      probe0(10) => \u_ila_0_tx_reg2[10]\,
      probe0(11) => \u_ila_0_tx_reg2[11]\,
      probe0(12) => \u_ila_0_tx_reg2[12]\,
      probe0(13) => \u_ila_0_tx_reg2[13]\,
      probe0(14) => \u_ila_0_tx_reg2[14]\,
      probe0(15) => \u_ila_0_tx_reg2[15]\,
      probe1(0) => \u_ila_0_WRCNT_loc[0]_2\,
      probe1(1) => \u_ila_0_WRCNT_loc[1]_2\,
      probe1(2) => \u_ila_0_WRCNT_loc[2]_2\,
      probe1(3) => \u_ila_0_WRCNT_loc[3]_2\,
      probe1(4) => \u_ila_0_WRCNT_loc[4]_2\,
      probe1(5) => \u_ila_0_WRCNT_loc[5]_2\,
      probe1(6) => \u_ila_0_WRCNT_loc[6]_2\,
      probe1(7) => \u_ila_0_WRCNT_loc[7]_2\,
      probe1(8) => \u_ila_0_WRCNT_loc[8]_2\,
      probe1(9) => \u_ila_0_WRCNT_loc[9]_2\,
      probe2(0) => \u_ila_0_tx_reg2[0]_1\,
      probe2(1) => \u_ila_0_tx_reg2[1]_1\,
      probe2(2) => \u_ila_0_tx_reg2[2]_1\,
      probe2(3) => \u_ila_0_tx_reg2[3]_1\,
      probe2(4) => \u_ila_0_tx_reg2[4]_1\,
      probe2(5) => \u_ila_0_tx_reg2[5]_1\,
      probe2(6) => \u_ila_0_tx_reg2[6]_1\,
      probe2(7) => \u_ila_0_tx_reg2[7]_1\,
      probe2(8) => \u_ila_0_tx_reg2[8]_1\,
      probe2(9) => \u_ila_0_tx_reg2[9]_1\,
      probe2(10) => \u_ila_0_tx_reg2[10]_1\,
      probe2(11) => \u_ila_0_tx_reg2[11]_1\,
      probe2(12) => \u_ila_0_tx_reg2[12]_1\,
      probe2(13) => \u_ila_0_tx_reg2[13]_1\,
      probe2(14) => \u_ila_0_tx_reg2[14]_1\,
      probe2(15) => \u_ila_0_tx_reg2[15]_1\,
      probe3(0) => \u_ila_0_WRCNT_loc[0]_3\,
      probe3(1) => \u_ila_0_WRCNT_loc[1]_3\,
      probe3(2) => \u_ila_0_WRCNT_loc[2]_3\,
      probe3(3) => \u_ila_0_WRCNT_loc[3]_3\,
      probe3(4) => \u_ila_0_WRCNT_loc[4]_3\,
      probe3(5) => \u_ila_0_WRCNT_loc[5]_3\,
      probe3(6) => \u_ila_0_WRCNT_loc[6]_3\,
      probe3(7) => \u_ila_0_WRCNT_loc[7]_3\,
      probe3(8) => \u_ila_0_WRCNT_loc[8]_3\,
      probe3(9) => \u_ila_0_WRCNT_loc[9]_3\,
      probe4(0) => \u_ila_0_WRCNT_loc[0]\,
      probe4(1) => \u_ila_0_WRCNT_loc[1]\,
      probe4(2) => \u_ila_0_WRCNT_loc[2]\,
      probe4(3) => \u_ila_0_WRCNT_loc[3]\,
      probe4(4) => \u_ila_0_WRCNT_loc[4]\,
      probe4(5) => \u_ila_0_WRCNT_loc[5]\,
      probe4(6) => \u_ila_0_WRCNT_loc[6]\,
      probe4(7) => \u_ila_0_WRCNT_loc[7]\,
      probe4(8) => \u_ila_0_WRCNT_loc[8]\,
      probe4(9) => \u_ila_0_WRCNT_loc[9]\,
      probe5(0) => \u_ila_0_WRCNT_loc[0]_1\,
      probe5(1) => \u_ila_0_WRCNT_loc[1]_1\,
      probe5(2) => \u_ila_0_WRCNT_loc[2]_1\,
      probe5(3) => \u_ila_0_WRCNT_loc[3]_1\,
      probe5(4) => \u_ila_0_WRCNT_loc[4]_1\,
      probe5(5) => \u_ila_0_WRCNT_loc[5]_1\,
      probe5(6) => \u_ila_0_WRCNT_loc[6]_1\,
      probe5(7) => \u_ila_0_WRCNT_loc[7]_1\,
      probe5(8) => \u_ila_0_WRCNT_loc[8]_1\,
      probe5(9) => \u_ila_0_WRCNT_loc[9]_1\,
      probe6(0) => DecodeWrite
    );
end STRUCTURE;
