library ieee; use ieee.std_logic_1164.all;

entity NiFpgaDebuggingCLIP is
   generic(
      	ClockFrequency : Integer := 40000000;
      	InSingleCycle : boolean := true
   );
   	port(
            clk : in std_logic;
            TCK : in std_logic;
            TMS : in std_logic;
            TDI : in std_logic;
            TDO : out std_logic;
            trig0 : in std_logic;
            trig1 : in std_logic;
            trig2 : in std_logic;
            trig3 : in std_logic;
            trig4 : in std_logic;
            trig5 : in std_logic;
            trig6 : in std_logic;
            trig7 : in std_logic;
            trig8 : in std_logic;
            trig9 : in std_logic;
            trig10 : in std_logic;

            trig_out : out std_logic
   	); 
end NiFpgaDebuggingCLIP;

architecture implementation of NiFpgaDebuggingCLIP is

  -------------------------------------------------------------------
  --
  --  ILA core component declaration
  --
  -------------------------------------------------------------------
  component ila
    port
    (
      control     : inout    std_logic_vector(35 downto 0);
      clk         : in    std_logic;
            trig0 : in std_logic_vector(0 downto 0);
            trig1 : in std_logic_vector(0 downto 0);
            trig2 : in std_logic_vector(0 downto 0);
            trig3 : in std_logic_vector(0 downto 0);
            trig4 : in std_logic_vector(0 downto 0);
            trig5 : in std_logic_vector(0 downto 0);
            trig6 : in std_logic_vector(0 downto 0);
            trig7 : in std_logic_vector(0 downto 0);
            trig8 : in std_logic_vector(0 downto 0);
            trig9 : in std_logic_vector(0 downto 0);
            trig10 : in std_logic_vector(0 downto 0);

      trig_out    :   out std_logic
    );
  end component;

  -------------------------------------------------------------------
  --
  --  ICON core component declaration
  --
  -------------------------------------------------------------------
  component icon
    port
    (
      capture_in  : in    std_logic;
      tdi_in      : in    std_logic;
      reset_in    : in    std_logic;
      shift_in    : in    std_logic;
      update_in   : in    std_logic;
      sel_in      : in    std_logic;
      drck_in     : in    std_logic;
      tdo_out     :   out std_logic;
      control0    : inout std_logic_vector(35 downto 0)
    );
  end component;

  -------------------------------------------------------------------
  --
  --  ILA core signal declarations
  --
  -------------------------------------------------------------------
  signal control    : std_logic_vector(35 downto 0);

  -------------------------------------------------------------------
  --
  --  ICON core signal declarations
  --
  -------------------------------------------------------------------
  signal capture_in     : std_logic;
  signal tdi_in         : std_logic;
  signal reset_in       : std_logic;
  signal shift_in       : std_logic;
  signal update_in      : std_logic;
  signal sel_in         : std_logic;
  signal drck_in        : std_logic;
  signal tdo_out        : std_logic;

  signal cTrigOutBit : std_logic;

begin

  -------------------------------------------------------------------
  --
  --  ICON core instance
  --
  -------------------------------------------------------------------
  i_icon : icon
    port map
    (
      capture_in  => capture_in,
      tdi_in      => tdi_in,
      reset_in    => reset_in,
      shift_in    => shift_in,
      update_in   => update_in,
      sel_in      => sel_in,
      drck_in     => drck_in,
      tdo_out     => tdo_out,
      control0    => control
    );

  -------------------------------------------------------------------
  --
  --  ILA core instance
  --
  -------------------------------------------------------------------
  i_ila : ila
    port map
    (
      control   => control,
      clk       => Clk,
      trig0(0)     => trig0,
      trig1(0)     => trig1,
      trig2(0)     => trig2,
      trig3(0)     => trig3,
      trig4(0)     => trig4,
      trig5(0)     => trig5,
      trig6(0)     => trig6,
      trig7(0)     => trig7,
      trig8(0)     => trig8,
      trig9(0)     => trig9,
      trig10(0)     => trig10,

      trig_out  => cTrigOutBit
    );
  trig_out <= cTrigOutBit;

  NiFpgaBscanInterfacex : entity work.NiFpgaBscanInterface (rtl)
    port map (
      Clk => Clk, -- in std_logic;
      TCK => TCK, -- in std_logic;
      TMS => TMS, -- in std_logic;
      TDI => TDI, -- in std_logic;
      TDO => TDO, -- out std_logic;
      capture_in => capture_in, -- out std_logic;
      tdi_in => tdi_in, -- out std_logic;
      reset_in => reset_in, -- out std_logic;
      shift_in => shift_in, -- out std_logic;
      update_in => update_in, -- out std_logic;
      sel_in => sel_in, -- out std_logic;
      drck_in => drck_in, -- out std_logic;
      tdo_out => tdo_out -- in std_logic
    );
end implementation;