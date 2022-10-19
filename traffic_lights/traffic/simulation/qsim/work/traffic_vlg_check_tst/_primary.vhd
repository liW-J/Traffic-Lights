library verilog;
use verilog.vl_types.all;
entity traffic_vlg_check_tst is
    port(
        DX1             : in     vl_logic_vector(3 downto 0);
        DX2             : in     vl_logic_vector(3 downto 0);
        LIGHT           : in     vl_logic_vector(5 downto 0);
        LIGHTA          : in     vl_logic_vector(5 downto 0);
        NB1             : in     vl_logic_vector(3 downto 0);
        NB2             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end traffic_vlg_check_tst;
