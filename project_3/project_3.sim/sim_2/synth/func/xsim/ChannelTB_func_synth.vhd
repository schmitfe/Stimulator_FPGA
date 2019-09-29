-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 29 14:18:25 2019
-- Host        : DESKTOP-A11CNTB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/felix/Desktop/VHDL/Stimulator_FPGA/project_3/project_3.sim/sim_2/synth/func/xsim/ChannelTB_func_synth.vhd
-- Design      : Channel
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory is
  port (
    memory_reg_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    NullflagA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Write_IBUF : in STD_LOGIC;
    \FSM_onehot_State_reg[4]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \WaveAddr_IBUF[0]\ : in STD_LOGIC;
    Addr0 : in STD_LOGIC;
    EnWrite_IBUF : in STD_LOGIC;
    \FSM_onehot_State_reg[4]_0\ : in STD_LOGIC;
    \FSM_onehot_State_reg[12]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_State_reg[12]_0\ : in STD_LOGIC;
    \FSM_onehot_State_reg[12]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Memory;

architecture STRUCTURE of Memory is
  signal \FSM_onehot_State[12]_i_2_n_0\ : STD_LOGIC;
  signal \^nullflaga\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Nullflag_i_1_n_0 : STD_LOGIC;
  signal Nullflag_i_2_n_0 : STD_LOGIC;
  signal Read_Z1 : STD_LOGIC;
  signal \WRCNT_loc[6]_i_3_n_0\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[5]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[6]\ : STD_LOGIC;
  signal Write_Z1 : STD_LOGIC;
  signal \Write_Z1_i_1__0_n_0\ : STD_LOGIC;
  signal empty_loc_i_1_n_0 : STD_LOGIC;
  signal empty_loc_reg_n_0 : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal memory_reg_i_1_n_0 : STD_LOGIC;
  signal \memory_reg_i_2__0_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rdcnt : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rdcnt0 : STD_LOGIC;
  signal rdcnt00_in : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \rdcnt[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdcnt[6]_i_4_n_0\ : STD_LOGIC;
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdcnt0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Nullflag_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \WRCNT_loc[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \WRCNT_loc[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \WRCNT_loc[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \WRCNT_loc[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \WRCNT_loc[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \WRCNT_loc[6]_i_3\ : label is "soft_lutpair11";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d16";
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
  attribute bram_slice_end of memory_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg : label is 15;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_4\ : label is "soft_lutpair10";
begin
  NullflagA(0) <= \^nullflaga\(0);
\FSM_onehot_State[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_State_reg[4]\(4),
      I1 => \FSM_onehot_State_reg[12]\(2),
      I2 => \FSM_onehot_State_reg[12]\(3),
      I3 => \FSM_onehot_State_reg[12]\(4),
      I4 => \FSM_onehot_State_reg[4]\(5),
      I5 => \FSM_onehot_State[12]_i_2_n_0\,
      O => D(1)
    );
\FSM_onehot_State[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"151515FFFFFF15FF"
    )
        port map (
      I0 => \FSM_onehot_State_reg[12]_0\,
      I1 => \FSM_onehot_State_reg[12]\(0),
      I2 => \FSM_onehot_State_reg[12]\(1),
      I3 => \^nullflaga\(0),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \FSM_onehot_State_reg[12]_1\(0),
      O => \FSM_onehot_State[12]_i_2_n_0\
    );
\FSM_onehot_State[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_State[12]_i_2_n_0\,
      I1 => \FSM_onehot_State_reg[4]\(5),
      I2 => \FSM_onehot_State_reg[4]\(2),
      I3 => EnWrite_IBUF,
      I4 => \FSM_onehot_State_reg[4]\(3),
      I5 => \FSM_onehot_State_reg[4]_0\,
      O => D(0)
    );
Nullflag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rdcnt(6),
      I1 => rdcnt(2),
      I2 => rdcnt(3),
      I3 => Nullflag_i_2_n_0,
      O => Nullflag_i_1_n_0
    );
Nullflag_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rdcnt(1),
      I1 => rdcnt(0),
      I2 => rdcnt(5),
      I3 => rdcnt(4),
      O => Nullflag_i_2_n_0
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
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q(0),
      Q => Read_Z1,
      R => '0'
    );
\WRCNT_loc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\WRCNT_loc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      O => \p_0_in__0\(1)
    );
\WRCNT_loc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\WRCNT_loc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      O => \p_0_in__0\(3)
    );
\WRCNT_loc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[4]\,
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      I4 => \WRCNT_loc_reg_n_0_[3]\,
      O => \p_0_in__0\(4)
    );
\WRCNT_loc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[5]\,
      I1 => \WRCNT_loc_reg_n_0_[3]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      I4 => \WRCNT_loc_reg_n_0_[2]\,
      I5 => \WRCNT_loc_reg_n_0_[4]\,
      O => \p_0_in__0\(5)
    );
\WRCNT_loc[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[6]\,
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => \WRCNT_loc[6]_i_3_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      I4 => \WRCNT_loc_reg_n_0_[5]\,
      O => \p_0_in__0\(6)
    );
\WRCNT_loc[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      O => \WRCNT_loc[6]_i_3_n_0\
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
      R => SR(0)
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
      R => SR(0)
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
      R => SR(0)
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
      R => SR(0)
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
      R => SR(0)
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
      R => SR(0)
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
      R => SR(0)
    );
\Write_Z1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \WaveAddr_IBUF[0]\,
      I1 => \FSM_onehot_State_reg[4]\(2),
      I2 => Write_IBUF,
      O => \Write_Z1_i_1__0_n_0\
    );
Write_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Write_Z1_i_1__0_n_0\,
      Q => Write_Z1,
      R => '0'
    );
empty_loc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => memory_reg_i_1_n_0,
      I1 => empty_loc_reg_n_0,
      I2 => \FSM_onehot_State_reg[4]\(1),
      I3 => \FSM_onehot_State_reg[4]\(0),
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
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rdcnt(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[5]\,
      I1 => rdcnt(5),
      I2 => rdcnt(4),
      I3 => \WRCNT_loc_reg_n_0_[4]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => rdcnt(3),
      I2 => rdcnt(2),
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => rdcnt(1),
      I2 => rdcnt(0),
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[6]\,
      I1 => rdcnt(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(5),
      I1 => \WRCNT_loc_reg_n_0_[5]\,
      I2 => rdcnt(4),
      I3 => \WRCNT_loc_reg_n_0_[4]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(3),
      I1 => \WRCNT_loc_reg_n_0_[3]\,
      I2 => rdcnt(2),
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(1),
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => rdcnt(0),
      I3 => \WRCNT_loc_reg_n_0_[0]\,
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
      ADDRARDADDR(13 downto 11) => B"000",
      ADDRARDADDR(10) => \WRCNT_loc_reg_n_0_[6]\,
      ADDRARDADDR(9) => \WRCNT_loc_reg_n_0_[5]\,
      ADDRARDADDR(8) => \WRCNT_loc_reg_n_0_[4]\,
      ADDRARDADDR(7) => \WRCNT_loc_reg_n_0_[3]\,
      ADDRARDADDR(6) => \WRCNT_loc_reg_n_0_[2]\,
      ADDRARDADDR(5) => \WRCNT_loc_reg_n_0_[1]\,
      ADDRARDADDR(4) => \WRCNT_loc_reg_n_0_[0]\,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 11) => B"000",
      ADDRBWRADDR(10 downto 4) => rdcnt(6 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => CLK_IBUF_BUFG,
      DIADI(15 downto 0) => DIADI(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 0) => memory_reg_0(15 downto 0),
      DOPADOP(1 downto 0) => NLW_memory_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_memory_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => memory_reg_i_1_n_0,
      ENBWREN => \memory_reg_i_2__0_n_0\,
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
memory_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => Write_IBUF,
      I1 => \FSM_onehot_State_reg[4]\(2),
      I2 => \WaveAddr_IBUF[0]\,
      I3 => Addr0,
      I4 => Write_Z1,
      O => memory_reg_i_1_n_0
    );
\memory_reg_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => empty_loc_reg_n_0,
      I1 => Q(0),
      I2 => Read_Z1,
      I3 => \FSM_onehot_State_reg[4]\(0),
      I4 => \FSM_onehot_State_reg[4]\(1),
      O => \memory_reg_i_2__0_n_0\
    );
\rdcnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rdcnt00_in,
      CO(2) => \rdcnt0_inferred__0/i__carry_n_1\,
      CO(1) => \rdcnt0_inferred__0/i__carry_n_2\,
      CO(0) => \rdcnt0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_rdcnt0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
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
      INIT => X"6AAA"
    )
        port map (
      I0 => rdcnt(3),
      I1 => rdcnt(0),
      I2 => rdcnt(1),
      I3 => rdcnt(2),
      O => plusOp(3)
    );
\rdcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rdcnt(4),
      I1 => rdcnt(2),
      I2 => rdcnt(1),
      I3 => rdcnt(0),
      I4 => rdcnt(3),
      O => plusOp(4)
    );
\rdcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rdcnt(5),
      I1 => rdcnt(3),
      I2 => rdcnt(0),
      I3 => rdcnt(1),
      I4 => rdcnt(2),
      I5 => rdcnt(4),
      O => plusOp(5)
    );
\rdcnt[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE2"
    )
        port map (
      I0 => Addr0,
      I1 => rdcnt0,
      I2 => rdcnt00_in,
      I3 => \FSM_onehot_State_reg[4]\(0),
      I4 => \FSM_onehot_State_reg[4]\(1),
      O => \rdcnt[6]_i_1__0_n_0\
    );
\rdcnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Read_Z1,
      I1 => Q(0),
      I2 => empty_loc_reg_n_0,
      O => rdcnt0
    );
\rdcnt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rdcnt(6),
      I1 => rdcnt(4),
      I2 => \rdcnt[6]_i_4_n_0\,
      I3 => rdcnt(3),
      I4 => rdcnt(5),
      O => plusOp(6)
    );
\rdcnt[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rdcnt(2),
      I1 => rdcnt(1),
      I2 => rdcnt(0),
      O => \rdcnt[6]_i_4_n_0\
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(0),
      Q => rdcnt(0),
      R => \rdcnt[6]_i_1__0_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(1),
      Q => rdcnt(1),
      R => \rdcnt[6]_i_1__0_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(2),
      Q => rdcnt(2),
      R => \rdcnt[6]_i_1__0_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(3),
      Q => rdcnt(3),
      R => \rdcnt[6]_i_1__0_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(4),
      Q => rdcnt(4),
      R => \rdcnt[6]_i_1__0_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(5),
      Q => rdcnt(5),
      R => \rdcnt[6]_i_1__0_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(6),
      Q => rdcnt(6),
      R => \rdcnt[6]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memory_0 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DIADI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    Nullflag_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Write_IBUF : in STD_LOGIC;
    \FSM_onehot_State_reg[5]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \WaveAddr_IBUF[0]\ : in STD_LOGIC;
    Addr0 : in STD_LOGIC;
    Din_IBUF : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_State_reg[5]_0\ : in STD_LOGIC;
    \FSM_onehot_State_reg[5]_1\ : in STD_LOGIC;
    NullflagA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Memory_0 : entity is "Memory";
end Memory_0;

architecture STRUCTURE of Memory_0 is
  signal \^diadi\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \FSM_onehot_State[5]_i_3_n_0\ : STD_LOGIC;
  signal \Nullflag_i_1__0_n_0\ : STD_LOGIC;
  signal \Nullflag_i_2__0_n_0\ : STD_LOGIC;
  signal \^nullflag_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Read_Z1_reg_n_0 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \WRCNT_loc[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[5]\ : STD_LOGIC;
  signal \WRCNT_loc_reg_n_0_[6]\ : STD_LOGIC;
  signal Write_Z1_reg_n_0 : STD_LOGIC;
  signal \empty_loc_i_1__0_n_0\ : STD_LOGIC;
  signal empty_loc_reg_n_0 : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \memory_reg_i_1__0_n_0\ : STD_LOGIC;
  signal memory_reg_i_2_n_0 : STD_LOGIC;
  signal mux3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rdcnt : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rdcnt0 : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \rdcnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \rdcnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdcnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal NLW_memory_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdcnt0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_State[5]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Nullflag_i_2__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \WRCNT_loc[0]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \WRCNT_loc[1]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \WRCNT_loc[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \WRCNT_loc[3]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \WRCNT_loc[4]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \WRCNT_loc[6]_i_2__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of Write_Z1_i_1 : label is "soft_lutpair18";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d16";
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
  attribute bram_slice_end of memory_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg : label is 15;
  attribute SOFT_HLUTNM of \rdcnt[1]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rdcnt[2]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rdcnt[3]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rdcnt[4]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rdcnt[6]_i_4__0\ : label is "soft_lutpair16";
begin
  DIADI(15 downto 0) <= \^diadi\(15 downto 0);
  Nullflag_reg_0(0) <= \^nullflag_reg_0\(0);
  SR(0) <= \^sr\(0);
  WEA(0) <= \^wea\(0);
\FSM_onehot_State[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]_0\,
      I1 => \FSM_onehot_State_reg[5]\(3),
      I2 => \FSM_onehot_State[5]_i_3_n_0\,
      I3 => \FSM_onehot_State_reg[5]\(4),
      I4 => \FSM_onehot_State_reg[5]_1\,
      O => D(0)
    );
\FSM_onehot_State[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^nullflag_reg_0\(0),
      I1 => \WaveAddr_IBUF[0]\,
      I2 => NullflagA(0),
      O => \FSM_onehot_State[5]_i_3_n_0\
    );
\Nullflag_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rdcnt(6),
      I1 => rdcnt(2),
      I2 => rdcnt(3),
      I3 => \Nullflag_i_2__0_n_0\,
      O => \Nullflag_i_1__0_n_0\
    );
\Nullflag_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rdcnt(1),
      I1 => rdcnt(0),
      I2 => rdcnt(5),
      I3 => rdcnt(4),
      O => \Nullflag_i_2__0_n_0\
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
Read_Z1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q(0),
      Q => Read_Z1_reg_n_0,
      R => '0'
    );
\WRCNT_loc[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[0]\,
      O => \p_0_in__1\(0)
    );
\WRCNT_loc[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      O => \p_0_in__1\(1)
    );
\WRCNT_loc[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[2]\,
      O => \p_0_in__1\(2)
    );
\WRCNT_loc[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      O => \p_0_in__1\(3)
    );
\WRCNT_loc[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[4]\,
      I1 => \WRCNT_loc_reg_n_0_[2]\,
      I2 => \WRCNT_loc_reg_n_0_[0]\,
      I3 => \WRCNT_loc_reg_n_0_[1]\,
      I4 => \WRCNT_loc_reg_n_0_[3]\,
      O => \p_0_in__1\(4)
    );
\WRCNT_loc[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[5]\,
      I1 => \WRCNT_loc_reg_n_0_[3]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      I4 => \WRCNT_loc_reg_n_0_[2]\,
      I5 => \WRCNT_loc_reg_n_0_[4]\,
      O => \p_0_in__1\(5)
    );
\WRCNT_loc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(0),
      I1 => \FSM_onehot_State_reg[5]\(1),
      O => \^sr\(0)
    );
\WRCNT_loc[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[6]\,
      I1 => \WRCNT_loc_reg_n_0_[4]\,
      I2 => \WRCNT_loc[6]_i_2__0_n_0\,
      I3 => \WRCNT_loc_reg_n_0_[3]\,
      I4 => \WRCNT_loc_reg_n_0_[5]\,
      O => \p_0_in__1\(6)
    );
\WRCNT_loc[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[2]\,
      I1 => \WRCNT_loc_reg_n_0_[0]\,
      I2 => \WRCNT_loc_reg_n_0_[1]\,
      O => \WRCNT_loc[6]_i_2__0_n_0\
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
      R => \^sr\(0)
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
      R => \^sr\(0)
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
      R => \^sr\(0)
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
      R => \^sr\(0)
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
      R => \^sr\(0)
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
      R => \^sr\(0)
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
      R => \^sr\(0)
    );
Write_Z1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \WaveAddr_IBUF[0]\,
      I1 => \FSM_onehot_State_reg[5]\(2),
      I2 => Write_IBUF,
      O => mux3_out(1)
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
\empty_loc_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \memory_reg_i_1__0_n_0\,
      I1 => empty_loc_reg_n_0,
      I2 => \FSM_onehot_State_reg[5]\(1),
      I3 => \FSM_onehot_State_reg[5]\(0),
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
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rdcnt(6),
      I1 => \WRCNT_loc_reg_n_0_[6]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[5]\,
      I1 => rdcnt(5),
      I2 => rdcnt(4),
      I3 => \WRCNT_loc_reg_n_0_[4]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[3]\,
      I1 => rdcnt(3),
      I2 => rdcnt(2),
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[1]\,
      I1 => rdcnt(1),
      I2 => rdcnt(0),
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \WRCNT_loc_reg_n_0_[6]\,
      I1 => rdcnt(6),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(5),
      I1 => \WRCNT_loc_reg_n_0_[5]\,
      I2 => rdcnt(4),
      I3 => \WRCNT_loc_reg_n_0_[4]\,
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(3),
      I1 => \WRCNT_loc_reg_n_0_[3]\,
      I2 => rdcnt(2),
      I3 => \WRCNT_loc_reg_n_0_[2]\,
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rdcnt(1),
      I1 => \WRCNT_loc_reg_n_0_[1]\,
      I2 => rdcnt(0),
      I3 => \WRCNT_loc_reg_n_0_[0]\,
      O => \i__carry_i_8__0_n_0\
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
      ADDRARDADDR(13 downto 11) => B"000",
      ADDRARDADDR(10) => \WRCNT_loc_reg_n_0_[6]\,
      ADDRARDADDR(9) => \WRCNT_loc_reg_n_0_[5]\,
      ADDRARDADDR(8) => \WRCNT_loc_reg_n_0_[4]\,
      ADDRARDADDR(7) => \WRCNT_loc_reg_n_0_[3]\,
      ADDRARDADDR(6) => \WRCNT_loc_reg_n_0_[2]\,
      ADDRARDADDR(5) => \WRCNT_loc_reg_n_0_[1]\,
      ADDRARDADDR(4) => \WRCNT_loc_reg_n_0_[0]\,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 11) => B"000",
      ADDRBWRADDR(10 downto 4) => rdcnt(6 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => CLK_IBUF_BUFG,
      DIADI(15 downto 0) => \^diadi\(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_memory_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 0) => DOBDO(15 downto 0),
      DOPADOP(1 downto 0) => NLW_memory_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_memory_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \memory_reg_i_1__0_n_0\,
      ENBWREN => memory_reg_i_2_n_0,
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
memory_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(8),
      O => \^diadi\(8)
    );
memory_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(7),
      O => \^diadi\(7)
    );
memory_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(6),
      O => \^diadi\(6)
    );
memory_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(5),
      O => \^diadi\(5)
    );
memory_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(4),
      O => \^diadi\(4)
    );
memory_reg_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(3),
      O => \^diadi\(3)
    );
memory_reg_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(2),
      O => \^diadi\(2)
    );
memory_reg_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(1),
      O => \^diadi\(1)
    );
memory_reg_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(0),
      O => \^diadi\(0)
    );
memory_reg_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(1),
      I1 => \FSM_onehot_State_reg[5]\(0),
      O => \^wea\(0)
    );
\memory_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => Write_IBUF,
      I1 => \FSM_onehot_State_reg[5]\(2),
      I2 => \WaveAddr_IBUF[0]\,
      I3 => Addr0,
      I4 => Write_Z1_reg_n_0,
      O => \memory_reg_i_1__0_n_0\
    );
memory_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(0),
      I1 => \FSM_onehot_State_reg[5]\(1),
      I2 => Read_Z1_reg_n_0,
      I3 => Q(0),
      I4 => empty_loc_reg_n_0,
      O => memory_reg_i_2_n_0
    );
memory_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(15),
      O => \^diadi\(15)
    );
memory_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(14),
      O => \^diadi\(14)
    );
memory_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(13),
      O => \^diadi\(13)
    );
memory_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(12),
      O => \^diadi\(12)
    );
memory_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(11),
      O => \^diadi\(11)
    );
memory_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(10),
      O => \^diadi\(10)
    );
memory_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg[5]\(2),
      I1 => Din_IBUF(9),
      O => \^diadi\(9)
    );
\rdcnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rdcnt0_inferred__0/i__carry_n_0\,
      CO(2) => \rdcnt0_inferred__0/i__carry_n_1\,
      CO(1) => \rdcnt0_inferred__0/i__carry_n_2\,
      CO(0) => \rdcnt0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_rdcnt0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\rdcnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdcnt(0),
      O => plusOp(0)
    );
\rdcnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      O => plusOp(1)
    );
\rdcnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rdcnt(0),
      I1 => rdcnt(1),
      I2 => rdcnt(2),
      O => plusOp(2)
    );
\rdcnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rdcnt(3),
      I1 => rdcnt(0),
      I2 => rdcnt(1),
      I3 => rdcnt(2),
      O => plusOp(3)
    );
\rdcnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rdcnt(4),
      I1 => rdcnt(2),
      I2 => rdcnt(1),
      I3 => rdcnt(0),
      I4 => rdcnt(3),
      O => plusOp(4)
    );
\rdcnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rdcnt(5),
      I1 => rdcnt(3),
      I2 => rdcnt(0),
      I3 => rdcnt(1),
      I4 => rdcnt(2),
      I5 => rdcnt(4),
      O => plusOp(5)
    );
\rdcnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0020FFFFFFFF"
    )
        port map (
      I0 => \rdcnt0_inferred__0/i__carry_n_0\,
      I1 => Read_Z1_reg_n_0,
      I2 => Q(0),
      I3 => empty_loc_reg_n_0,
      I4 => Addr0,
      I5 => \^wea\(0),
      O => \rdcnt[6]_i_1_n_0\
    );
\rdcnt[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Read_Z1_reg_n_0,
      I1 => Q(0),
      I2 => empty_loc_reg_n_0,
      O => rdcnt0
    );
\rdcnt[6]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rdcnt(6),
      I1 => rdcnt(4),
      I2 => \rdcnt[6]_i_4__0_n_0\,
      I3 => rdcnt(3),
      I4 => rdcnt(5),
      O => plusOp(6)
    );
\rdcnt[6]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rdcnt(2),
      I1 => rdcnt(1),
      I2 => rdcnt(0),
      O => \rdcnt[6]_i_4__0_n_0\
    );
\rdcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(0),
      Q => rdcnt(0),
      R => \rdcnt[6]_i_1_n_0\
    );
\rdcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(1),
      Q => rdcnt(1),
      R => \rdcnt[6]_i_1_n_0\
    );
\rdcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(2),
      Q => rdcnt(2),
      R => \rdcnt[6]_i_1_n_0\
    );
\rdcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(3),
      Q => rdcnt(3),
      R => \rdcnt[6]_i_1_n_0\
    );
\rdcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(4),
      Q => rdcnt(4),
      R => \rdcnt[6]_i_1_n_0\
    );
\rdcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(5),
      Q => rdcnt(5),
      R => \rdcnt[6]_i_1_n_0\
    );
\rdcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => rdcnt0,
      D => plusOp(6),
      Q => rdcnt(6),
      R => \rdcnt[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_Master is
  port (
    SCLK_OBUF : out STD_LOGIC;
    SS_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \tx_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \WaveAddr_IBUF[0]\ : in STD_LOGIC;
    \tx_reg_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    EnWrite_IBUF : in STD_LOGIC;
    \FSM_onehot_State_reg[8]\ : in STD_LOGIC;
    \FSM_onehot_State_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end SPI_Master;

architecture STRUCTURE of SPI_Master is
  signal \FSM_onehot_spitxstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_spitxstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \^sclk_obuf\ : STD_LOGIC;
  signal SS_i_1_n_0 : STD_LOGIC;
  signal SS_i_2_n_0 : STD_LOGIC;
  signal SS_i_3_n_0 : STD_LOGIC;
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
  signal delay : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \delay[2]_i_2_n_0\ : STD_LOGIC;
  signal \delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \delay[4]_i_3_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal spiclk_i_1_n_0 : STD_LOGIC;
  signal spiclklast : STD_LOGIC;
  signal tx_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \tx_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_State[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[0]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_spitxstate[2]_i_3\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[0]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[1]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spitxstate_reg[2]\ : label is "spi_txactive:0010,spi_etx:0100,spi_stx:0001,iSTATE:1000";
  attribute SOFT_HLUTNM of SS_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of SS_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bitcounter[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bitcounter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bitcounter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitcounter[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitcounter[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \delay[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \delay[4]_i_2\ : label is "soft_lutpair0";
begin
  SCLK_OBUF <= \^sclk_obuf\;
\FSM_onehot_State[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(1),
      I1 => TX_Done,
      I2 => Q(2),
      O => D(0)
    );
\FSM_onehot_State[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000400040004"
    )
        port map (
      I0 => EnWrite_IBUF,
      I1 => Q(3),
      I2 => \FSM_onehot_State_reg[8]\,
      I3 => \FSM_onehot_State_reg[8]_0\(0),
      I4 => Q(2),
      I5 => TX_Done,
      O => D(1)
    );
\FSM_onehot_spitxstate[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C8C8C8C8C8C8C8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate[0]_i_2_n_0\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I4 => \FSM_onehot_spitxstate[0]_i_3_n_0\,
      I5 => \FSM_onehot_spitxstate[0]_i_4_n_0\,
      O => \FSM_onehot_spitxstate[0]_i_1_n_0\
    );
\FSM_onehot_spitxstate[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => SS_i_3_n_0,
      I1 => Q(5),
      I2 => Q(7),
      I3 => Q(6),
      O => \FSM_onehot_spitxstate[0]_i_2_n_0\
    );
\FSM_onehot_spitxstate[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(7),
      I3 => sel0(8),
      I4 => sel0(9),
      O => \FSM_onehot_spitxstate[0]_i_3_n_0\
    );
\FSM_onehot_spitxstate[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \FSM_onehot_spitxstate[0]_i_4_n_0\
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
\FSM_onehot_spitxstate[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8FFFFABA8ABA8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_spitxstate[2]_i_3_n_0\,
      I2 => SS_i_3_n_0,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I4 => \FSM_onehot_spitxstate[2]_i_4_n_0\,
      I5 => \FSM_onehot_spitxstate[0]_i_4_n_0\,
      O => \FSM_onehot_spitxstate[2]_i_2_n_0\
    );
\FSM_onehot_spitxstate[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(5),
      O => \FSM_onehot_spitxstate[2]_i_3_n_0\
    );
\FSM_onehot_spitxstate[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I1 => sel0(9),
      I2 => sel0(8),
      I3 => sel0(7),
      I4 => sel0(6),
      I5 => sel0(5),
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
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => SS_i_1_n_0
    );
SS_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => Q(6),
      I2 => Q(7),
      I3 => Q(5),
      I4 => SS_i_3_n_0,
      O => SS_i_2_n_0
    );
SS_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(4),
      I3 => Q(0),
      O => SS_i_3_n_0
    );
SS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => SS_i_1_n_0,
      D => SS_i_2_n_0,
      Q => SS_OBUF,
      R => '0'
    );
TX_Done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
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
      INIT => X"A9"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => \bitcounter[2]_i_1_n_0\
    );
\bitcounter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      O => \bitcounter[3]_i_1_n_0\
    );
\bitcounter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I1 => \FSM_onehot_spitxstate[0]_i_3_n_0\,
      I2 => \^sclk_obuf\,
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
      INIT => X"FFFFFF7FFF00FF80"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I1 => \FSM_onehot_spitxstate[0]_i_3_n_0\,
      I2 => \^sclk_obuf\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I4 => \bitcounter[4]_i_2_n_0\,
      I5 => sel0(4),
      O => \bitcounter[4]_i_1_n_0\
    );
\bitcounter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
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
\delay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate[0]_i_2_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I4 => \FSM_onehot_spitxstate[0]_i_3_n_0\,
      I5 => sel0(5),
      O => delay(0)
    );
\delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F80000F8"
    )
        port map (
      I0 => SS_i_2_n_0,
      I1 => SS_i_1_n_0,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I3 => sel0(5),
      I4 => sel0(6),
      I5 => \FSM_onehot_spitxstate[0]_i_3_n_0\,
      O => delay(1)
    );
\delay[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => \delay[2]_i_2_n_0\,
      I1 => \FSM_onehot_spitxstate[0]_i_2_n_0\,
      I2 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      O => delay(2)
    );
\delay[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0000E"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(8),
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => sel0(7),
      O => \delay[2]_i_2_n_0\
    );
\delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBEBEBEBEBEBEBAA"
    )
        port map (
      I0 => \delay[4]_i_2_n_0\,
      I1 => sel0(8),
      I2 => \delay[4]_i_3_n_0\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I4 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I5 => \FSM_onehot_spitxstate_reg_n_0_[2]\,
      O => delay(3)
    );
\delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEBEEEBEEEBAAAA"
    )
        port map (
      I0 => \delay[4]_i_2_n_0\,
      I1 => sel0(9),
      I2 => \delay[4]_i_3_n_0\,
      I3 => sel0(8),
      I4 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I5 => SS_i_1_n_0,
      O => delay(4)
    );
\delay[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => Q(6),
      I2 => Q(7),
      I3 => Q(5),
      I4 => SS_i_3_n_0,
      O => \delay[4]_i_2_n_0\
    );
\delay[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(6),
      I2 => sel0(5),
      O => \delay[4]_i_3_n_0\
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
\delay_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => delay(2),
      Q => sel0(7),
      R => '0'
    );
\delay_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => delay(3),
      Q => sel0(8),
      R => '0'
    );
\delay_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => delay(4),
      Q => sel0(9),
      R => '0'
    );
spiclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03335400"
    )
        port map (
      I0 => \FSM_onehot_spitxstate[0]_i_4_n_0\,
      I1 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I2 => \FSM_onehot_spitxstate[0]_i_3_n_0\,
      I3 => \FSM_onehot_spitxstate_reg_n_0_[1]\,
      I4 => \^sclk_obuf\,
      O => spiclk_i_1_n_0
    );
spiclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => spiclk_i_1_n_0,
      Q => \^sclk_obuf\,
      R => '0'
    );
spiclklast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \^sclk_obuf\,
      Q => spiclklast,
      R => '0'
    );
\tx_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => DOBDO(0),
      I1 => \WaveAddr_IBUF[0]\,
      I2 => \tx_reg_reg[15]_1\(0),
      I3 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I4 => \tx_reg[0]_i_2_n_0\,
      I5 => tx_reg(0),
      O => \tx_reg[0]_i_1_n_0\
    );
\tx_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => spiclklast,
      I1 => \^sclk_obuf\,
      O => \tx_reg[0]_i_2_n_0\
    );
\tx_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(9),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(10),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(10),
      O => \tx_reg[10]_i_1_n_0\
    );
\tx_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(10),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(11),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(11),
      O => \tx_reg[11]_i_1_n_0\
    );
\tx_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(11),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(12),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(12),
      O => \tx_reg[12]_i_1_n_0\
    );
\tx_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(12),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(13),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(13),
      O => \tx_reg[13]_i_1_n_0\
    );
\tx_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(13),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(14),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(14),
      O => \tx_reg[14]_i_1_n_0\
    );
\tx_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_spitxstate_reg_n_0_[0]\,
      I1 => \^sclk_obuf\,
      I2 => spiclklast,
      O => \tx_reg[15]_i_1_n_0\
    );
\tx_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(14),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(15),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(15),
      O => \tx_reg[15]_i_2_n_0\
    );
\tx_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(0),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(1),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(1),
      O => \tx_reg[1]_i_1_n_0\
    );
\tx_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(1),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(2),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(2),
      O => \tx_reg[2]_i_1_n_0\
    );
\tx_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(2),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(3),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(3),
      O => \tx_reg[3]_i_1_n_0\
    );
\tx_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(3),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(4),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(4),
      O => \tx_reg[4]_i_1_n_0\
    );
\tx_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(4),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(5),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(5),
      O => \tx_reg[5]_i_1_n_0\
    );
\tx_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(5),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(6),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(6),
      O => \tx_reg[6]_i_1_n_0\
    );
\tx_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(6),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(7),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(7),
      O => \tx_reg[7]_i_1_n_0\
    );
\tx_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(7),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(8),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(8),
      O => \tx_reg[8]_i_1_n_0\
    );
\tx_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => tx_reg(8),
      I1 => spiclklast,
      I2 => \^sclk_obuf\,
      I3 => DOBDO(9),
      I4 => \WaveAddr_IBUF[0]\,
      I5 => \tx_reg_reg[15]_1\(9),
      O => \tx_reg[9]_i_1_n_0\
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
      D => \tx_reg[10]_i_1_n_0\,
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
      D => \tx_reg[11]_i_1_n_0\,
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
      D => \tx_reg[12]_i_1_n_0\,
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
      D => \tx_reg[13]_i_1_n_0\,
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
      D => \tx_reg[14]_i_1_n_0\,
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
      D => \tx_reg[15]_i_2_n_0\,
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
      D => \tx_reg[1]_i_1_n_0\,
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
      D => \tx_reg[2]_i_1_n_0\,
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
      D => \tx_reg[3]_i_1_n_0\,
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
      D => \tx_reg[4]_i_1_n_0\,
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
      D => \tx_reg[5]_i_1_n_0\,
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
      D => \tx_reg[6]_i_1_n_0\,
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
      D => \tx_reg[7]_i_1_n_0\,
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
      D => \tx_reg[8]_i_1_n_0\,
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
      D => \tx_reg[9]_i_1_n_0\,
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
    WaveAddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Write : in STD_LOGIC;
    EnWrite : in STD_LOGIC;
    contStim : in STD_LOGIC;
    trig : in STD_LOGIC;
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SS : out STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Channel : entity is true;
  attribute Adresswidth : integer;
  attribute Adresswidth of Channel : entity is 7;
  attribute Clock : integer;
  attribute Clock of Channel : entity is 50000000;
  attribute NWave : integer;
  attribute NWave of Channel : entity is 2;
  attribute SPI_Clock : integer;
  attribute SPI_Clock of Channel : entity is 1000000;
  attribute Wordwidth : integer;
  attribute Wordwidth of Channel : entity is 16;
end Channel;

architecture STRUCTURE of Channel is
  signal Addr0 : STD_LOGIC;
  signal Addr0_i_1_n_0 : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DinMem : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Din_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \DoutMemA[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal EnWrite_IBUF : STD_LOGIC;
  signal \FSM_onehot_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[9]\ : STD_LOGIC;
  signal Interface_n_2 : STD_LOGIC;
  signal Interface_n_3 : STD_LOGIC;
  signal MOSI_OBUF : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_17\ : STD_LOGIC;
  signal \MemArray[0].MemoryX_n_18\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_32\ : STD_LOGIC;
  signal \MemArray[1].MemoryX_n_35\ : STD_LOGIC;
  signal NullflagA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RESET_IBUF : STD_LOGIC;
  signal Read : STD_LOGIC;
  signal \ReadA_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ReadA_reg_n_0_[0]\ : STD_LOGIC;
  signal SCLK_OBUF : STD_LOGIC;
  signal SS_OBUF : STD_LOGIC;
  signal WaveAddrZ1 : STD_LOGIC;
  signal \WaveAddr_IBUF[0]\ : STD_LOGIC;
  signal \WaveAddr_IBUF_BUFG[0]\ : STD_LOGIC;
  signal Write_IBUF : STD_LOGIC;
  signal contStim_IBUF : STD_LOGIC;
  signal counter0 : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal empty_loc0 : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sel : STD_LOGIC;
  signal trigLoc : STD_LOGIC;
  signal trig_IBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_State[8]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_State[9]_i_1\ : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[0]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[10]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[11]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[12]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[1]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[2]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[3]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[4]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[5]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[6]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[7]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[8]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[9]\ : label is "twait:0000000010000,w2:0000000001000,w1t:0000000000100,t5:0100000000000,t5t:1000000000000,t4:0010000000000,w1:0000000000010,init:0000000000001,t2:0000010000000,t3:0001000000000,t1t:0000001000000,t2t:0000100000000,t1:0000000100000";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \ReadA_reg[0]\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ReadA_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ReadA_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[4]_i_3\ : label is "soft_lutpair22";
begin
Addr0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WaveAddr_IBUF[0]\,
      I1 => WaveAddrZ1,
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
\Din_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(0),
      O => Din_IBUF(0)
    );
\Din_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(10),
      O => Din_IBUF(10)
    );
\Din_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(11),
      O => Din_IBUF(11)
    );
\Din_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(12),
      O => Din_IBUF(12)
    );
\Din_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(13),
      O => Din_IBUF(13)
    );
\Din_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(14),
      O => Din_IBUF(14)
    );
\Din_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(15),
      O => Din_IBUF(15)
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
\Din_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(8),
      O => Din_IBUF(8)
    );
\Din_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(9),
      O => Din_IBUF(9)
    );
EnWrite_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => EnWrite,
      O => EnWrite_IBUF
    );
\FSM_onehot_State[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[0]\,
      I1 => EnWrite_IBUF,
      O => \FSM_onehot_State[0]_i_1_n_0\
    );
\FSM_onehot_State[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0008"
    )
        port map (
      I0 => EnWrite_IBUF,
      I1 => \FSM_onehot_State_reg_n_0_[8]\,
      I2 => \FSM_onehot_State[8]_i_2_n_0\,
      I3 => \counter_reg__0\(1),
      I4 => \FSM_onehot_State_reg_n_0_[0]\,
      O => \FSM_onehot_State[1]_i_1_n_0\
    );
\FSM_onehot_State[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAAAA"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[1]\,
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \FSM_onehot_State[8]_i_2_n_0\,
      I4 => \FSM_onehot_State_reg_n_0_[2]\,
      O => \FSM_onehot_State[2]_i_1_n_0\
    );
\FSM_onehot_State[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF88888888888"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[3]\,
      I1 => EnWrite_IBUF,
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => \FSM_onehot_State[8]_i_2_n_0\,
      I5 => \FSM_onehot_State_reg_n_0_[2]\,
      O => \FSM_onehot_State[3]_i_1_n_0\
    );
\FSM_onehot_State[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => contStim_IBUF,
      I1 => trigLoc,
      I2 => trig_IBUF,
      O => \FSM_onehot_State[5]_i_2_n_0\
    );
\FSM_onehot_State[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(2),
      O => \FSM_onehot_State[8]_i_2_n_0\
    );
\FSM_onehot_State[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[8]\,
      I1 => \counter_reg__0\(4),
      I2 => \counter_reg__0\(3),
      I3 => \counter_reg__0\(2),
      I4 => \counter_reg__0\(1),
      O => \FSM_onehot_State[9]_i_1_n_0\
    );
\FSM_onehot_State_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_State[0]_i_1_n_0\,
      Q => \FSM_onehot_State_reg_n_0_[0]\,
      S => RESET_IBUF
    );
\FSM_onehot_State_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_State_reg_n_0_[9]\,
      Q => \FSM_onehot_State_reg_n_0_[10]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_State_reg_n_0_[10]\,
      Q => \FSM_onehot_State_reg_n_0_[11]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \MemArray[0].MemoryX_n_17\,
      Q => \FSM_onehot_State_reg_n_0_[12]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_State[1]_i_1_n_0\,
      Q => \FSM_onehot_State_reg_n_0_[1]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_State[2]_i_1_n_0\,
      Q => \FSM_onehot_State_reg_n_0_[2]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_State[3]_i_1_n_0\,
      Q => \FSM_onehot_State_reg_n_0_[3]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \MemArray[0].MemoryX_n_18\,
      Q => \FSM_onehot_State_reg_n_0_[4]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \MemArray[1].MemoryX_n_35\,
      Q => \FSM_onehot_State_reg_n_0_[5]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_State_reg_n_0_[5]\,
      Q => \FSM_onehot_State_reg_n_0_[6]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Interface_n_3,
      Q => \FSM_onehot_State_reg_n_0_[7]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Interface_n_2,
      Q => \FSM_onehot_State_reg_n_0_[8]\,
      R => RESET_IBUF
    );
\FSM_onehot_State_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_State[9]_i_1_n_0\,
      Q => \FSM_onehot_State_reg_n_0_[9]\,
      R => RESET_IBUF
    );
Interface: entity work.SPI_Master
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(1) => Interface_n_2,
      D(0) => Interface_n_3,
      DOBDO(15 downto 0) => \DoutMemA[1]\(15 downto 0),
      EnWrite_IBUF => EnWrite_IBUF,
      \FSM_onehot_State_reg[8]\ => \FSM_onehot_State[8]_i_2_n_0\,
      \FSM_onehot_State_reg[8]_0\(0) => \counter_reg__0\(1),
      Q(7) => \FSM_onehot_State_reg_n_0_[12]\,
      Q(6) => \FSM_onehot_State_reg_n_0_[11]\,
      Q(5) => \FSM_onehot_State_reg_n_0_[10]\,
      Q(4) => \FSM_onehot_State_reg_n_0_[9]\,
      Q(3) => \FSM_onehot_State_reg_n_0_[8]\,
      Q(2) => \FSM_onehot_State_reg_n_0_[7]\,
      Q(1) => \FSM_onehot_State_reg_n_0_[6]\,
      Q(0) => \FSM_onehot_State_reg_n_0_[5]\,
      SCLK_OBUF => SCLK_OBUF,
      SS_OBUF => SS_OBUF,
      \WaveAddr_IBUF[0]\ => \WaveAddr_IBUF[0]\,
      \tx_reg_reg[15]_0\(0) => MOSI_OBUF,
      \tx_reg_reg[15]_1\(15 downto 0) => Dout(15 downto 0)
    );
MOSI_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MOSI_OBUF,
      O => MOSI
    );
\MemArray[0].MemoryX\: entity work.Memory
     port map (
      Addr0 => Addr0,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(1) => \MemArray[0].MemoryX_n_17\,
      D(0) => \MemArray[0].MemoryX_n_18\,
      DIADI(15 downto 0) => DinMem(15 downto 0),
      EnWrite_IBUF => EnWrite_IBUF,
      \FSM_onehot_State_reg[12]\(4 downto 0) => \counter_reg__0\(4 downto 0),
      \FSM_onehot_State_reg[12]_0\ => \FSM_onehot_State[8]_i_2_n_0\,
      \FSM_onehot_State_reg[12]_1\(0) => NullflagA(1),
      \FSM_onehot_State_reg[4]\(5) => \FSM_onehot_State_reg_n_0_[12]\,
      \FSM_onehot_State_reg[4]\(4) => \FSM_onehot_State_reg_n_0_[11]\,
      \FSM_onehot_State_reg[4]\(3) => \FSM_onehot_State_reg_n_0_[4]\,
      \FSM_onehot_State_reg[4]\(2) => \FSM_onehot_State_reg_n_0_[3]\,
      \FSM_onehot_State_reg[4]\(1) => \FSM_onehot_State_reg_n_0_[2]\,
      \FSM_onehot_State_reg[4]\(0) => \FSM_onehot_State_reg_n_0_[1]\,
      \FSM_onehot_State_reg[4]_0\ => \FSM_onehot_State[5]_i_2_n_0\,
      NullflagA(0) => NullflagA(0),
      Q(0) => \ReadA_reg_n_0_[0]\,
      SR(0) => empty_loc0,
      WEA(0) => \MemArray[1].MemoryX_n_32\,
      \WaveAddr_IBUF[0]\ => \WaveAddr_IBUF[0]\,
      Write_IBUF => Write_IBUF,
      memory_reg_0(15 downto 0) => Dout(15 downto 0)
    );
\MemArray[1].MemoryX\: entity work.Memory_0
     port map (
      Addr0 => Addr0,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(0) => \MemArray[1].MemoryX_n_35\,
      DIADI(15 downto 0) => DinMem(15 downto 0),
      DOBDO(15 downto 0) => \DoutMemA[1]\(15 downto 0),
      Din_IBUF(15 downto 0) => Din_IBUF(15 downto 0),
      \FSM_onehot_State_reg[5]\(4) => \FSM_onehot_State_reg_n_0_[12]\,
      \FSM_onehot_State_reg[5]\(3) => \FSM_onehot_State_reg_n_0_[4]\,
      \FSM_onehot_State_reg[5]\(2) => \FSM_onehot_State_reg_n_0_[3]\,
      \FSM_onehot_State_reg[5]\(1) => \FSM_onehot_State_reg_n_0_[2]\,
      \FSM_onehot_State_reg[5]\(0) => \FSM_onehot_State_reg_n_0_[1]\,
      \FSM_onehot_State_reg[5]_0\ => \FSM_onehot_State[5]_i_2_n_0\,
      \FSM_onehot_State_reg[5]_1\ => \FSM_onehot_State[8]_i_2_n_0\,
      NullflagA(0) => NullflagA(0),
      Nullflag_reg_0(0) => NullflagA(1),
      Q(0) => Read,
      SR(0) => empty_loc0,
      WEA(0) => \MemArray[1].MemoryX_n_32\,
      \WaveAddr_IBUF[0]\ => \WaveAddr_IBUF[0]\,
      Write_IBUF => Write_IBUF
    );
RESET_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RESET,
      O => RESET_IBUF
    );
\ReadA_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => \ReadA_reg[1]_i_1_n_0\,
      G => \WaveAddr_IBUF_BUFG[0]\,
      GE => '1',
      Q => \ReadA_reg_n_0_[0]\
    );
\ReadA_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ReadA_reg[1]_i_1_n_0\,
      G => \WaveAddr_IBUF_BUFG[0]\,
      GE => '1',
      Q => Read
    );
\ReadA_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[5]\,
      I1 => \FSM_onehot_State_reg_n_0_[9]\,
      I2 => \FSM_onehot_State_reg_n_0_[6]\,
      I3 => \FSM_onehot_State_reg_n_0_[7]\,
      I4 => \FSM_onehot_State_reg_n_0_[8]\,
      I5 => \FSM_onehot_State_reg_n_0_[4]\,
      O => \ReadA_reg[1]_i_1_n_0\
    );
SCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SCLK_OBUF,
      O => SCLK
    );
SS_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SS_OBUF,
      O => SS
    );
\WaveAddrZ1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \WaveAddr_IBUF_BUFG[0]\,
      Q => WaveAddrZ1,
      R => '0'
    );
\WaveAddr_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WaveAddr(0),
      O => \WaveAddr_IBUF[0]\
    );
\WaveAddr_IBUF_BUFG[0]_inst\: unisim.vcomponents.BUFG
     port map (
      I => \WaveAddr_IBUF[0]\,
      O => \WaveAddr_IBUF_BUFG[0]\
    );
Write_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Write,
      O => Write_IBUF
    );
contStim_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => contStim,
      O => contStim_IBUF
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      O => \p_0_in__2\(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(2),
      O => \p_0_in__2\(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[7]\,
      I1 => \FSM_onehot_State_reg_n_0_[11]\,
      I2 => \FSM_onehot_State_reg_n_0_[1]\,
      O => counter0
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => \counter_reg__0\(2),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => \counter_reg__0\(3),
      O => sel
    );
\counter[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => \counter_reg__0\(2),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => \counter_reg__0\(3),
      O => \p_0_in__2\(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => sel,
      D => \p_0_in__2\(0),
      Q => \counter_reg__0\(0),
      R => counter0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => sel,
      D => \p_0_in__2\(1),
      Q => \counter_reg__0\(1),
      R => counter0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => sel,
      D => \p_0_in__2\(2),
      Q => \counter_reg__0\(2),
      R => counter0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => sel,
      D => \p_0_in__2\(3),
      Q => \counter_reg__0\(3),
      R => counter0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => sel,
      D => \p_0_in__2\(4),
      Q => \counter_reg__0\(4),
      R => counter0
    );
trigLoc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => trig_IBUF,
      Q => trigLoc,
      R => '0'
    );
trig_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => trig,
      O => trig_IBUF
    );
end STRUCTURE;
