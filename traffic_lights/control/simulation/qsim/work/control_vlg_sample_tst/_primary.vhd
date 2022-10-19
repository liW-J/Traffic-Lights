library verilog;
use verilog.vl_types.all;
entity control_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DX              : in     vl_logic_vector(7 downto 0);
        EN              : in     vl_logic;
        NB              : in     vl_logic_vector(7 downto 0);
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end control_vlg_sample_tst;
