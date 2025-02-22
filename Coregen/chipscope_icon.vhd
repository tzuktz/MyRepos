-------------------------------------------------------------------------------
-- Copyright (c) 2016 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.4
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : chipscope_icon.vhd
-- /___/   /\     Timestamp  : Thu Feb 04 14:56:31 Jerusalem Standard Time 2016
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY chipscope_icon IS
  port (
    CONTROL0: inout std_logic_vector(35 downto 0);
    TDO_OUT: out std_logic;
    TDI_IN: in std_logic;
    RESET_IN: in std_logic;
    SHIFT_IN: in std_logic;
    UPDATE_IN: in std_logic;
    CAPTURE_IN: in std_logic;
    SEL_IN: in std_logic;
    DRCK_IN: in std_logic);
END chipscope_icon;

ARCHITECTURE chipscope_icon_a OF chipscope_icon IS
BEGIN

END chipscope_icon_a;
