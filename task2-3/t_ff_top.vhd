library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity t_ff_top is
    port (
            T : in std_logic;
            enable : in std_logic;
            clk : in std_logic;
            Q : out std_logic
        );
end t_ff_top;

architecture behavior of t_ff_top is 

	begin
	
    process (clk) 
        variable  Q_int: std_logic := '0';
        
        begin
		if falling_edge(clk) then
			if (enable = '1') and (T = '1') then
				Q_int := (Q_int xor T);
			end if;
        end if;
        
        Q <= Q_int;
    end process;
    
   
end behavior;
