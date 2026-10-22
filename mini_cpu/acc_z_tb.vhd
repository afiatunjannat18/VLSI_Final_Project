library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity acc_z_tb is
end acc_z_tb;
architecture Behavioral of acc_z_tb is
    signal CLK     : STD_LOGIC := '0';
    signal RESET   : STD_LOGIC := '1';
    signal ACC_WE  : STD_LOGIC := '0';
    signal Z_WE    : STD_LOGIC := '0';
    signal RESULT  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal ACC_OUT : STD_LOGIC_VECTOR(7 downto 0);
    signal Z_OUT   : STD_LOGIC;
    signal done    : boolean := false;
    constant T     : time := 10 ns;
begin
    uut : entity work.acc_z
        port map (CLK => CLK, RESET => RESET, ACC_WE => ACC_WE, Z_WE => Z_WE,
                  RESULT => RESULT, ACC_OUT => ACC_OUT, Z_OUT => Z_OUT);
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
        -- 1) reset: ACC = 0x00, Z = 1
        RESET <= '1';
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC_OUT = x"00" and Z_OUT = '1'
            report "Reset values wrong" severity error;
		  -- 2) write 0x0F -> ACC = 0F, Z = 0
        RESET <= '0'; ACC_WE <= '1'; Z_WE <= '1'; RESULT <= x"0F";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC_OUT = x"0F" and Z_OUT = '0'
            report "Write 0x0F failed" severity error;
		  -- 3) write 0x00 -> ACC = 00, Z = 1
        RESULT <= x"00";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC_OUT = x"00" and Z_OUT = '1'
            report "Write 0x00 (Z flag) failed" severity error;
		  -- 4) enables off: values must hold even though RESULT changes
        ACC_WE <= '0'; Z_WE <= '0'; RESULT <= x"55";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC_OUT = x"00" and Z_OUT = '1'
            report "Hold (enables=0) failed" severity error;
		   -- 5) write 0x81 -> ACC = 81, Z = 0
        ACC_WE <= '1'; Z_WE <= '1'; RESULT <= x"81";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC_OUT = x"81" and Z_OUT = '0'
            report "Write 0x81 failed" severity error;
		  -- 6) reset has priority over write
        RESET <= '1'; RESULT <= x"FF";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC_OUT = x"00" and Z_OUT = '1'
            report "Reset priority failed" severity error;
		  report "acc_z_tb finished" severity note;
        done <= true;
        wait;
    end process;
end Behavioral;