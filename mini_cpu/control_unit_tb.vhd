library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit_tb is
end control_unit_tb;
architecture Behavioral of control_unit_tb is
    signal OPCODE  : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal ALU_SEL : STD_LOGIC_VECTOR(2 downto 0);
    signal ACC_WE  : STD_LOGIC;
    signal Z_WE    : STD_LOGIC;
begin
    uut : entity work.control_unit
        port map (OPCODE => OPCODE, ALU_SEL => ALU_SEL,
                  ACC_WE => ACC_WE, Z_WE => Z_WE);

    stim : process
    begin
        -- LDI
        OPCODE <= "0001"; wait for 10 ns;
        assert ALU_SEL = "000" and ACC_WE = '1' and Z_WE = '1'
            report "LDI decode failed" severity error;
		   -- ADD
        OPCODE <= "0010"; wait for 10 ns;
        assert ALU_SEL = "001" and ACC_WE = '1' and Z_WE = '1'
            report "ADD decode failed" severity error;
        -- OR
        OPCODE <= "0101"; wait for 10 ns;
        assert ALU_SEL = "010" and ACC_WE = '1' and Z_WE = '1'
            report "OR decode failed" severity error;
		  -- NOT
        OPCODE <= "0111"; wait for 10 ns;
        assert ALU_SEL = "011" and ACC_WE = '1' and Z_WE = '1'
            report "NOT decode failed" severity error;

        -- SHR
        OPCODE <= "1001"; wait for 10 ns;
        assert ALU_SEL = "100" and ACC_WE = '1' and Z_WE = '1'
            report "SHR decode failed" severity error;
		  -- NOP (0000)
        OPCODE <= "0000"; wait for 10 ns;
        assert ACC_WE = '0' and Z_WE = '0'
            report "NOP (0000) failed" severity error;
         -- opcodes not in Set 5 must be NOP: SUB, AND, XOR, SHL, STA, LDR, JZ
        OPCODE <= "0011"; wait for 10 ns;
        assert ACC_WE = '0' and Z_WE = '0' report "SUB should be NOP" severity error;
        OPCODE <= "0100"; wait for 10 ns;
        assert ACC_WE = '0' and Z_WE = '0' report "AND should be NOP" severity error;
        OPCODE <= "0110"; wait for 10 ns;
        assert ACC_WE = '0' and Z_WE = '0' report "XOR should be NOP" severity error;
        OPCODE <= "1000"; wait for 10 ns;
		   assert ACC_WE = '0' and Z_WE = '0' report "SHL should be NOP" severity error;
        OPCODE <= "1010"; wait for 10 ns;
        assert ACC_WE = '0' and Z_WE = '0' report "STA should be NOP" severity error;
        OPCODE <= "1011"; wait for 10 ns;
        assert ACC_WE = '0' and Z_WE = '0' report "LDR should be NOP" severity error;
        OPCODE <= "1100"; wait for 10 ns;
        assert ACC_WE = '0' and Z_WE = '0' report "JZ should be NOP" severity error;
         report "control_unit_tb finished" severity note;
        wait;
    end process;
end Behavioral;