library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU2 is
port(Clk:in std_logic;
A,B : in unsigned(7 downto 0);
student_id : in unsigned(3 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
R1: out unsigned(3 downto 0);
R2: out unsigned(3 downto 0));
end ALU2;
architecture calculation of ALU2 is
signal Reg1,Reg2,Result : unsigned(7 downto 0) :=(others=> '0');
signal Reg4 : unsigned (0 to 7); 
begin	
Reg1 <= A;
Reg2 <= B;
process(Clk,OP)
	begin	
	if(rising_edge(Clk)) THEN 
		case OP is
		   
			WHEN "0000000000000001" =>    --replace odd bits of A wth odd bits of B  --NEED TO DOUBLE CHECK
			
 result <= (A and "01010101") or (B and "10101010");

			WHEN "0000000000000010" =>        --Nand the A and B       
						
       Result <= (Reg1 NAND Reg2);	

			WHEN "0000000000000100" => Result <= ((Reg1+Reg2)-"00000101");        
														
										

			WHEN "0000000000001000" => Result <= (NOT(Reg2)+"00000001" );  
															 
											

			WHEN "0000000000010000" => Result <= (NOT Reg2); 
														
												
	
			WHEN "0000000000100000" => Result <= shift_left(Reg1,2); 
															
											

			WHEN "0000000001000000" => Result <= NULL; 
															

			WHEN "0000000010000000" => Result <= (NOT(Reg1)+"00000001" );  
															
			
			WHEN "0000000100000000" => Result <= (Reg2 ROR 2); 
														
				
			WHEN OTHERS => 
								Result<= "--------";
			
			
			end case;
		end if;
	end process;
	
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;