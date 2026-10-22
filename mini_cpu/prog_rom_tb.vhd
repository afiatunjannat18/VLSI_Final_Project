library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prog_rom_tb is
end prog_rom_tb;
architecture Behavioral of prog_rom_tb is
    signal ADDR  : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal INSTR : STD_LOGIC_VECTOR(11 downto 0);
    type exp_type is array (0 to 15) of STD_LOGIC_VECTOR(11 downto 0);
    constant EXPECTED : exp_type := (
        0 => x"10F",
        1 => x"5A0",
        2 => x"700",
        3 => x"900",
        4 => x"2D8",
        5 => x"581",
        6 => x"900",
        others => x"000"
    );
begin
    uut : entity work.prog_rom
        port map (ADDR => ADDR, INSTR => INSTR);

    stim : process
    begin
        for i in 0 to 15 loop
            ADDR <= std_logic_vector(to_unsigned(i, 4));
            wait for 10 ns;
            assert INSTR = EXPECTED(i)
                report "ROM mismatch at address " & integer'image(i)
                severity error;
        end loop;
		  report "prog_rom_tb finished" severity note;
        wait;
    end process;
end Behavioral;