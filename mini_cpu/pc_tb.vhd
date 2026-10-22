library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pc_tb is
end pc_tb;
architecture Behavioral of pc_tb is
    signal CLK    : STD_LOGIC := '0';
    signal RESET  : STD_LOGIC := '1';
    signal PC_OUT : STD_LOGIC_VECTOR(3 downto 0);
    signal done   : boolean := false;
    constant T    : time := 10 ns;
begin
    uut : entity work.pc
        port map (CLK => CLK, RESET => RESET, PC_OUT => PC_OUT);

    clk_proc : process
    begin
        while not done loop
            CLK <= '0'; wait for T/2;
            CLK <= '1'; wait for T/2;
        end loop;
        wait;
    end process;
	 stim : process
    begin
        -- reset for one rising edge
        RESET <= '1';
        wait until rising_edge(CLK);
        wait for 1 ns;
        assert PC_OUT = "0000" report "PC not 0 after RESET" severity error;
        -- count 1..17 (checks wrap-around at 16)
        RESET <= '0';
        for i in 1 to 17 loop
            wait until rising_edge(CLK);
            wait for 1 ns;
            assert unsigned(PC_OUT) = (i mod 16)
                report "PC wrong at step " & integer'image(i) severity error;
        end loop;
		  -- reset in the middle of counting
        RESET <= '1';
        wait until rising_edge(CLK);
        wait for 1 ns;
        assert PC_OUT = "0000" report "PC not 0 after second RESET" severity error;

        report "pc_tb finished" severity note;
        done <= true;
        wait;
    end process;
end Behavioral;