LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


ENTITY ASU IS


PORT ( Cin : IN STD_LOGIC;
      X,Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      Cout, Sign, Overflow : OUT STD_LOGIC );
				
END ASU;


ARCHITECTURE Behavior OF ASU IS
SIGNAL Sum: STD_LOGIC_VECTOR(4 DOWNTO 0) ;

BEGIN
   PROCESS(Cin, X, Y)
   BEGIN

 
   IF (Cin<='1') THEN
   IF(X>Y) THEN	
     Sum <= ("0"&X)-("0"&Y); 
     S <= Sum (3 DOWNTO 0);
     Cout <= '1'; 
     Sign <= '0';
else
S<='0' - sum(3 DownTO 0);
Sign<='1';
Cout<='1';
End if;
End if;

	  
IF (Cin<='0') THEN	  
     Sum <= ("0"&X)+("0"&Y); 
     S <= Sum (3 DOWNTO 0);
     Cout <= '0'; 
     Sign <= '0';

    END IF; 
    END PROCESS;	 
END Behavior;