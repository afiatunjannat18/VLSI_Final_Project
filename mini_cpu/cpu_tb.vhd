library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu_tb is
end cpu_tb;
architecture Behavioral of cpu_tb is
    signal CLK    : STD_LOGIC := '0';
    signal RESET  : STD_LOGIC := '1';
    signal Q      : STD_LOGIC_VECTOR(7 downto 0);
    signal Z      : STD_LOGIC;
    signal PC_OUT : STD_LOGIC_VECTOR(3 downto 0);
    signal done   : boolean := false;
    constant T    : time := 10 ns;
begin
    uut : entity work.cpu_top
        port map (CLK => CLK, RESET => RESET, Q => Q, Z => Z, PC_OUT => PC_OUT);

    -- clock: rising edges at 5, 15, 25 ... ns
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
        RESET <= '1';
        wait for T;            -- covers exactly one rising edge (at 5 ns)
        RESET <= '0';
        wait for 7 * T;        -- 7 instructions (edges at 15 ... 75 ns)
        wait for T;            -- small margin
        done <= true;          -- stops the clock
        wait;
    end process;
end Behavioral;