LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


ENTITY ASU IS


PORT ( Cin : IN STD_LOGIC;
      X, Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      Cout, negitive : OUT STD_LOGIC );
				
END ASU;


ARCHITECTURE Behavior OF ASU IS
SIGNAL Sum: STD_LOGIC_VECTOR(4 DOWNTO 0) ;

BEGIN
   PROCESS(Cin)
   BEGIN

 
   IF (Cin='1') THEN 
     Sum <= ("0"&X)-("0"&Y); 
     S <= Sum (3 DOWNTO 0);
     Cout <= Sum (4); 
     negitive <= ('1');

    ELSE
     Sum <= ("0"&X)+("0"&Y); 
     S <= Sum (3 DOWNTO 0);
     Cout <= Sum (4); 
     negitive <= ('0');

    END IF; 
    END PROCESS;
	 
	 
END Behavior;