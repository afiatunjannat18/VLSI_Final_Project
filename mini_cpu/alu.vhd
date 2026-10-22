library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    Port ( ACC     : in  STD_LOGIC_VECTOR(7 downto 0);
           IMM     : in  STD_LOGIC_VECTOR(7 downto 0);
           ALU_SEL : in  STD_LOGIC_VECTOR(2 downto 0);
           RESULT  : out STD_LOGIC_VECTOR(7 downto 0));
end alu;
architecture Behavioral of alu is
begin
    process(ACC, IMM, ALU_SEL)
    begin
        case ALU_SEL is
            when "000" => RESULT <= IMM;
				when "001" => RESULT <= std_logic_vector(unsigned(ACC) + unsigned(IMM)); -- ADD (carry dropped)
            when "010" => RESULT <= ACC or IMM;                               -- OR
            when "011" => RESULT <= not ACC;                                  -- NOT
            when "100" => RESULT <= '0' & ACC(7 downto 1);                    -- SHR (0 enters MSB)
            when others => RESULT <= ACC;
		  end case;
    end process;
end Behavioral;