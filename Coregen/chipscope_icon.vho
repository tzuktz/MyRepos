-------------------------------------------------------------------------------
-- Copyright (c) 2016 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.4
--  \   \         Application: Xilinx CORE Generator
--  /   /         Filename   : chipscope_icon.vho
-- /___/   /\     Timestamp  : Thu Feb 04 14:56:31 Jerusalem Standard Time 2016
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: ISE Instantiation template
-- Component Identifier: xilinx.com:ip:chipscope_icon:1.06.a
-------------------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component chipscope_icon
  PORT (
    CONTROL0 : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    TDO_OUT : OUT STD_LOGIC;
    TDI_IN : IN STD_LOGIC;
    RESET_IN : IN STD_LOGIC;
    SHIFT_IN : IN STD_LOGIC;
    UPDATE_IN : IN STD_LOGIC;
    CAPTURE_IN : IN STD_LOGIC;
    SEL_IN : IN STD_LOGIC;
    DRCK_IN : IN STD_LOGIC);

end component;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------
-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG

your_instance_name : chipscope_icon
  port map (
    CONTROL0 => CONTROL0,
    TDO_OUT => TDO_OUT,
    TDI_IN => TDI_IN,
    RESET_IN => RESET_IN,
    SHIFT_IN => SHIFT_IN,
    UPDATE_IN => UPDATE_IN,
    CAPTURE_IN => CAPTURE_IN,
    SEL_IN => SEL_IN,
    DRCK_IN => DRCK_IN);

-- INST_TAG_END ------ End INSTANTIATION Template ------------
