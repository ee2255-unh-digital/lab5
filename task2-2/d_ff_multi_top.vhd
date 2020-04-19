library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity d_ff_multi_top is
    port (
            D : in std_logic;
            clk : in std_logic;
            Qa : out std_logic;
            Qb : out std_logic;
            Qc : out std_logic
        );
end d_ff_multi_top;

architecture behavior of d_ff_multi_top is 
    begin
        
	process (clk, D) 
		begin
		if clk = '1' then
			Qa <= D;
		end if;
    end process;
    
    process (clk)
        begin
        if rising_edge(clk) then
            Qb <= D;
        end if;
    end process;

    process (clk)
        begin
        if falling_edge(clk) then
            Qc <= D;
        end if;
    end process;

end behavior;
