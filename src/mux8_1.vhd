---------------------------------------------------------------------------------------------------
--
-- Title       : mux8_1
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux8_1.vhd
-- Generated   : Fri May 20 23:24:48 2022
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
--{entity {mux8_1} architecture {mux8_1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux8_1 is
	 port(
		 nr2,nr4,nr8,nr16 : in STD_LOGIC_VECTOR(7 downto 0);
		 sel : in STD_LOGIC_VECTOR(2 downto 0);
		 outnr : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end mux8_1;

--}} End of automatically maintained section

architecture mux8_1 of mux8_1 is
begin

process(sel)
begin
	case (sel) is
		when "000" => outnr <= "00000000";
		when "001" => outnr <= "00000000";
		when "010" => outnr <= "00000000";
		when "011" => outnr <= "00000000";
		when "100" => outnr <= nr2;
		when "101" => outnr <= nr4;
		when "110" => outnr <= nr8;
		when others => outnr <= nr16;
	end case;
	end process;
end mux8_1;
