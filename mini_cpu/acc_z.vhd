library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity acc_z is
    Port ( CLK     : in  STD_LOGIC;
           RESET   : in  STD_LOGIC;
           ACC_WE  : in  STD_LOGIC;
           Z_WE    : in  STD_LOGIC;
           RESULT  : in  STD_LOGIC_VECTOR(7 downto 0);
           ACC_OUT : out STD_LOGIC_VECTOR(7 downto 0);
           Z_OUT   : out STD_LOGIC);
end acc_z;
architecture Behavioral of acc_z is
    signal acc_reg : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal z_reg   : STD_LOGIC := '1';
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                acc_reg <= (others => '0');
                z_reg   <= '1';
				else
                if ACC_WE = '1' then
                    acc_reg <= RESULT;
                end if;
                if Z_WE = '1' then
                    if RESULT = "00000000" then
                        z_reg <= '1';
						   else
                        z_reg <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;
	 ACC_OUT <= acc_reg;
    Z_OUT   <= z_reg;
end Behavioral;