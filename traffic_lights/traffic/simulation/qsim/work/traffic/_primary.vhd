library verilog;
use verilog.vl_types.all;
entity traffic is
    port(
        DX1             : out    vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        DX2             : out    vl_logic_vector(3 downto 0);
        LIGHT           : out    vl_logic_vector(5 downto 0);
        LIGHTA          : out    vl_logic_vector(5 downto 0);
        NB1             : out    vl_logic_vector(3 downto 0);
        NB2             : out    vl_logic_vector(3 downto 0)
    );
end traffic;
