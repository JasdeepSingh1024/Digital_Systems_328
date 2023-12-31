library ieee;
use ieee.std_logic_1164.all;
entity fsm is
	port(	clk				: in std_logic;
			data_in			: in std_logic;
			reset				: in std_logic;
			student_id		: out std_logic_vector(3 downto 0);
			current_state 	: out std_logic_vector(3 downto 0));
end fsm;
architecture fsm of lab5 is 
type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
signal yfsm : state_type;
begin
	process (clk, reset)
	begin
		IF	reset = '1' THEN
			yfsm <= s0;
		elsif (clk'EVENT AND CLK = '1') THEN
			CASE yfsm IS
			when s0=>
				IF (data_in = '0') then
					yfsm <= s0;
				ELSE 
					yfsm <= s1;
				END IF;
			when s1=>
				IF (data_in = '0') THEN
					yfsm <= s1;
				ELSE 
					yfsm <= s2;
				END IF;
			when s2=>
				IF (data_in ='0') THEN
					yfsm <= s2;
				ELSE 
					yfsm <= s3;
				END IF;
			when s3=>
				IF (data_in = '0') THEN
					yfsm <= s3;
				ELSE
					yfsm <= s4;
				END IF;
			when s4=>
				IF (data_in = '0') THEN
					yfsm <= s4;
				ELSE 
					yfsm <= s5;
				END IF;
			when s5=>
				IF (data_in ='0') THEN
					yfsm <= s5;
				ELSE 
					yfsm <= s6;
				END IF;
			when s6=>
				IF (data_in ='0') THEN
					yfsm <= s6;
				ELSE 
					yfsm <= s7;
				END IF;
			when s7=>
				IF (data_in ='0') THEN
					yfsm <= s7;
				ELSE 
					yfsm <= s8;
			   END IF;
			when s8=>
				IF (data_in ='0') THEN
					yfsm <= s8;
				ELSE 
					yfsm <= s0;
				END IF;
			END CASE;
		END IF;
	END process;
--------------------------------- this is the moore machine implementation #501089933
    
   process(yfsm, data_in)
			begin
				case yfsm is 
					when s0 =>
						current_state <= "0000";
						student_id <= "0101"; --5
					
					when s1 =>
						current_state <= "0001";
						student_id <= "0000"; --0
					
					when s2 =>
						current_state <= "0010";
						student_id <= "0001"; --1
					
					when s3 =>
						current_state <= "0011";
						student_id <= "0000"; --0
					
					when s4 =>
						current_state <= "0100";
						student_id <= "1000"; --8
					
					when s5 =>
						current_state <= "0101";
						student_id <= "1001"; --9
					
					when s6 =>
						current_state <= "0110";
						student_id <= "1001"; --9
					
					when s7 =>
						current_state <= "0111";
						student_id <= "0011"; --3
					
					when s8 =>
						current_state <= "1000";
						student_id <= "0011"; --3
				end case;
			end process;
			end;
		
