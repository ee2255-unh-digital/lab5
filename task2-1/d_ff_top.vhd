library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity d_ff_top is
    port (
            D : in std_logic;
            clear : in std_logic;
            clk : in std_logic;
            Q : out std_logic
        );
end d_ff_top;

architecture behavior of d_ff_top is 
	begin
	process (clk, clear) 
		begin
		if (clear = '1') then
			Q <= '0';
		elsif rising_edge(clk) then
			Q <= D;
		end if;
	end process;
end behavior;
