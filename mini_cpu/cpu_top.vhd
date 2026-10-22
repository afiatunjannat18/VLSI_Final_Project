library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu_top is
    Port ( CLK    : in  STD_LOGIC;
           RESET  : in  STD_LOGIC;
           Q      : out STD_LOGIC_VECTOR(7 downto 0);
           Z      : out STD_LOGIC;
           PC_OUT : out STD_LOGIC_VECTOR(3 downto 0));
end cpu_top;
architecture Structural of cpu_top is
    signal pc_s    : STD_LOGIC_VECTOR(3 downto 0);
    signal instr   : STD_LOGIC_VECTOR(11 downto 0);
    signal alu_sel : STD_LOGIC_VECTOR(2 downto 0);
    signal acc_we  : STD_LOGIC;
    signal z_we    : STD_LOGIC;
    signal acc_s   : STD_LOGIC_VECTOR(7 downto 0);
    signal result  : STD_LOGIC_VECTOR(7 downto 0);
    signal z_s     : STD_LOGIC;
begin
    u_pc  : entity work.pc
        port map (CLK => CLK, RESET => RESET, PC_OUT => pc_s);

    u_rom : entity work.prog_rom
        port map (ADDR => pc_s, INSTR => instr);
    u_ctrl: entity work.control_unit
        port map (OPCODE => instr(11 downto 8), ALU_SEL => alu_sel,
                  ACC_WE => acc_we, Z_WE => z_we);

    u_alu : entity work.alu
        port map (ACC => acc_s, IMM => instr(7 downto 0),
                  ALU_SEL => alu_sel, RESULT => result);
	 u_reg : entity work.acc_z
        port map (CLK => CLK, RESET => RESET, ACC_WE => acc_we, Z_WE => z_we,
                  RESULT => result, ACC_OUT => acc_s, Z_OUT => z_s);
	 Q      <= acc_s;
    Z      <= z_s;
    PC_OUT <= pc_s;
end Structural;