library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pc is
    Port ( CLK    : in  STD_LOGIC;
           RESET  : in  STD_LOGIC;
           PC_OUT : out STD_LOGIC_VECTOR(3 downto 0));
end pc;
architecture Behavioral of pc is
    signal cnt : unsigned(3 downto 0) := (others => '0');
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                cnt <= (others => '0');
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;

    PC_OUT <= std_logic_vector(cnt);
end Behavioral;