library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
    Port ( OPCODE  : in  STD_LOGIC_VECTOR(3 downto 0);
           ALU_SEL : out STD_LOGIC_VECTOR(2 downto 0);
           ACC_WE  : out STD_LOGIC;
           Z_WE    : out STD_LOGIC);
end control_unit;
architecture Behavioral of control_unit is
begin
    process(OPCODE)
    begin
        -- defaults = NOP
        ALU_SEL <= "000";
        ACC_WE  <= '0';
        Z_WE    <= '0';
		   case OPCODE is
            when "0001" => ALU_SEL <= "000"; ACC_WE <= '1'; Z_WE <= '1'; -- LDI
            when "0010" => ALU_SEL <= "001"; ACC_WE <= '1'; Z_WE <= '1'; -- ADD
            when "0101" => ALU_SEL <= "010"; ACC_WE <= '1'; Z_WE <= '1'; -- OR
            when "0111" => ALU_SEL <= "011"; ACC_WE <= '1'; Z_WE <= '1'; -- NOT
				 when "1001" => ALU_SEL <= "100"; ACC_WE <= '1'; Z_WE <= '1'; -- SHR
            when others => null;                                         -- NOP
        end case;
    end process;
end Behavioral;