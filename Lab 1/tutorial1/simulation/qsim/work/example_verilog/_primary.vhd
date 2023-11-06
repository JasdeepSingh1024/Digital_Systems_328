library verilog;
use verilog.vl_types.all;
entity example_verilog is
    port(
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic;
        f               : out    vl_logic
    );
end example_verilog;
