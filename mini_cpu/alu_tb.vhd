library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_tb is
end alu_tb;
architecture Behavioral of alu_tb is
    signal ACC     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal IMM     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal ALU_SEL : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal RESULT  : STD_LOGIC_VECTOR(7 downto 0);
begin
    uut : entity work.alu
        port map (ACC => ACC, IMM => IMM, ALU_SEL => ALU_SEL, RESULT => RESULT);

    stim : process
	  begin
        -- LDI: result = IMM
        ACC <= x"00"; IMM <= x"0F"; ALU_SEL <= "000"; wait for 10 ns;
        assert RESULT = x"0F" report "LDI failed" severity error;

        -- ADD: normal
        ACC <= x"0F"; IMM <= x"01"; ALU_SEL <= "001"; wait for 10 ns;
        assert RESULT = x"10" report "ADD failed" severity error;
		   -- ADD: overflow, carry discarded
        ACC <= x"28"; IMM <= x"D8"; ALU_SEL <= "001"; wait for 10 ns;
        assert RESULT = x"00" report "ADD overflow failed" severity error;

        -- OR
        ACC <= x"0F"; IMM <= x"A0"; ALU_SEL <= "010"; wait for 10 ns;
        assert RESULT = x"AF" report "OR failed" severity error;

        -- NOT (operand ignored)
        ACC <= x"AF"; IMM <= x"00"; ALU_SEL <= "011"; wait for 10 ns;
        assert RESULT = x"50" report "NOT failed" severity error;
		    -- SHR: 0 enters MSB
        ACC <= x"50"; IMM <= x"00"; ALU_SEL <= "100"; wait for 10 ns;
        assert RESULT = x"28" report "SHR failed" severity error;

        -- SHR: LSB is lost
        ACC <= x"81"; IMM <= x"00"; ALU_SEL <= "100"; wait for 10 ns;
        assert RESULT = x"40" report "SHR (0x81) failed" severity error;
         -- SHR: 0x01 becomes 0x00
        ACC <= x"01"; IMM <= x"00"; ALU_SEL <= "100"; wait for 10 ns;
        assert RESULT = x"00" report "SHR (0x01) failed" severity error;

        report "alu_tb finished" severity note;
		   wait;
    end process;
end Behavioral;