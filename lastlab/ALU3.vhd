library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU3 is
port(Clk:in std_logic;
A,B : in unsigned(7 downto 0);
student_id : in unsigned(3 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
R1: out unsigned(3 downto 0);
R2: out unsigned(3 downto 0));
end ALU3;
architecture calculation of ALU3 is
signal Reg1,Reg2,Result : unsigned(7 downto 0) :=(others=> '0');
signal modulus : unsigned (0 to 7); 
begin	
Reg1 <= A;
Reg2 <= B;
process(Clk,OP)
	begin	
	if(rising_edge(Clk)) THEN 
		case OP is
		   
			WHEN "0000000000000001" =>    --addition for reg 1 and reg 2
			
			Result <= Reg1 + Reg2;

			WHEN "0000000000000010" =>               --subtraction and ""Neg" bit if required
						
       Result <=(Reg1 - Reg2);
        if(Reg2 > Reg1)THEN
               Neg <= '1';
           else
               Neg <= '0';
				end if;	

			WHEN "0000000000000100" => Result <= NOT Reg1;        --inverse of reg 1
														
										

			WHEN "0000000000001000" => Result <= (Reg1 NAND Reg2);  --Nand reg 1 and 2 
															 
											

			WHEN "0000000000010000" => Result <= (Reg1 NOR Reg2); --Nor reg 1 and 2
														
												
	
			WHEN "0000000000100000" => Result <= (Reg1 AND Reg2); --and reg 1 and 2
															
											

			WHEN "0000000001000000" => Result <= (Reg1 OR Reg2); --or reg 1 and 2
															

			WHEN "0000000010000000" => Result <= Reg1 XOR Reg2; --xor reg 1 and 2
															
			
			WHEN "0000000100000000" => Result <= (Reg1 XNOR Reg2); --XNOR reg 1 and 2
														
				
			WHEN OTHERS => 
								Result<= "--------";
			
			
			end case;
			
			if(((to_integer(student_id))mod 2)=0)then   --need to double check
			modulus<= "00000000";
			else
			modulus<= "00000001";
			end if;
			
			
		end if;
	end process;
	
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;