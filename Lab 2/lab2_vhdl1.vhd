LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab2_vhdl1 IS
PORT(x1,x2,x3,x4 : IN STD_LOGIC ;
f : OUT STD_LOGIC );
end lab2_vhdl1;

ARCHITECTURE Behavior OF lab2_vhdl1 IS
BEGIN
f <= ((x1) AND (x2) AND (NOT x3) AND (NOT x4)) OR ((x1) AND (NOT x2) AND (x4)) OR ((x1) AND (x3) AND (x4)) OR ((NOT x2) AND (x3) AND (x4));
END Behavior;