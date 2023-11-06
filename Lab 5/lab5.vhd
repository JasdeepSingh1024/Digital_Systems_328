library ieee;
use ieee.std_logic_1164.all;
entity lab5 is
    port
    (
        clk                : in std_logic;
        data_in            : in std_logic;
        reset                : in std_logic;
        student_id         : out std_logic_vector(3 downto 0);
        current_state    : out std_logic_vector(3 DOWNTO 0));
end entity;

architecture fsm of lab5 is

    type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
    
    signal yfsm : state_type;
begin 
    process (clk, reset,data_in)
    begin 
        if reset = '1' then
            yfsm <=s0;
        elsif (clk 'EVENT AND clk='1') then

    ----------------------------------------------implementing the FSM #1
            case yfsm is 
                when s0=>
                    if data_in= '1' then 
                        yfsm<=s8;
                    else 
                        yfsm<= s0;
                    end if;
						  
						  
                when s1=>
                    if data_in= '1' then 
                        yfsm<=s0;
                    else 
                        yfsm<= s1;
                    end if;
						  
						  
                when s2=>
                    if data_in= '1' then 
                        yfsm<=s7;
                    else 
                        yfsm<= s2;
                    end if;
						  
						  
                when s3=>
                    if data_in= '1' then 
                        yfsm<=s1;
                    else 
                        yfsm<= s3;
                    end if;
						  
						  
                when s4=>
                    if data_in= '1' then 
                        yfsm<=s2;
                    else 
                        yfsm<= s4;
                    end if;
						  
						  
                when s5=>
                    if data_in= '1' then 
                        yfsm<=s3;
                    else 
                        yfsm<= s5;
                    end if;
						  
						  
                when s6=>
                    if data_in= '1' then 
                        yfsm<=s4;
                    else 
                        yfsm<= s6;
                    end if;
						  
						  
                when s7=>
                    if data_in= '1' then 
                        yfsm<=s5;
                    else 
                        yfsm<= s7;
                    end if;
						  
						  
                when s8=>
                    if data_in= '1' then 
                        yfsm<=s6;
                    else 
                        yfsm<= s8;
                    end if;
				
            end case;
        end if;
    end process;
	 
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
		