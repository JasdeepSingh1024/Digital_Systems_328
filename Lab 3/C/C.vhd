LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


ENTITY C IS


PORT ( 

      S : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      L : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
     
				
END C;


ARCHITECTURE Behavior OF C IS
SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0) ;

BEGIN
PROCESS(S)
BEGIN

 
L(0) <= (NOT S(1) AND  NOT S(2)) OR (S(0) AND S(1) AND NOT S(3)) OR ( S(1) AND S(2) AND NOT S(3));

L(1) <= (NOT S(1) AND NOT S(2) AND S(3));

L(2) <= (S(0) AND NOT S(1) AND NOT S(2) AND NOT S(3));

L(3) <=(S(1) AND S(2) AND NOT S(3)) OR (S(0) AND S(2) AND NOT S(3));
 

 
END PROCESS;
END Behavior;