---------------------------------------------------------------------------------------------------
--
-- Title       : mux_gen
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux_gen.vhd
-- Generated   : Fri May 20 23:53:04 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {mux_gen} architecture {mux_gen}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux_gen is
	 port(
		 number1,number2 : in STD_LOGIC_VECTOR(7 downto 0);
		 ctr : in STD_LOGIC_VECTOR(2 downto 0);
		 outnumber : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end mux_gen; 

--}} End of automatically maintained section

architecture mux_gen of mux_gen is
begin

	 process(ctr)
begin
	case (ctr) is
		when "000" => outnumber <= "00000000";
		when "001" => outnumber <= "00000000";
		when "010" => outnumber <= "00000000";
		when "011" => outnumber <= "00000000";
		when "100" => outnumber <= "00000000";
		when "101" => outnumber <= "00000000";
		when "110" => outnumber <= number1;
		when others => outnumber <= number2;
	end case;
	end process;

end mux_gen;
