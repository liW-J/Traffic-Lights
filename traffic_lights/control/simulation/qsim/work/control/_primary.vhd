library verilog;
use verilog.vl_types.all;
entity control is
    port(
        CLK             : in     vl_logic;
        EN              : in     vl_logic;
        RST             : in     vl_logic;
        DX              : in     vl_logic_vector(7 downto 0);
        NB              : in     vl_logic_vector(7 downto 0);
        Q               : out    vl_logic_vector(1 downto 0)
    );
end control;
