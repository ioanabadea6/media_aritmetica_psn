---------------------------------------------------------------------------------------------------
--
-- Title       : registru_4
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : registru_4.vhd
-- Generated   : Thu May 19 22:16:49 2022
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
--{entity {registru_4} architecture {registru_4}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity registru_4 is
	 port(
	 sin : in STD_LOGIC;
	 clock: in std_logic;
	 reset: in std_logic;
		 load : in STD_LOGIC;
		 intrare : in STD_LOGIC_VECTOR(3 downto 0);
		 iesire : inout STD_LOGIC_VECTOR(3 downto 0)
	     );
end registru_4;

--}} End of automatically maintained section

architecture registru_4 of registru_4 is
begin 
	process(clock)
	begin  
		if(reset='1') then 
		iesire<="0000";
		elsif(rising_edge(clock)) then
			if(load='1')  then 
				iesire<=intrare; 
			else
				iesire(0)<=iesire(1); 
				iesire(1)<=iesire(2);
				iesire(2)<=iesire(3);
				iesire(3)<=sin;
			end if;	
			end if;
	end process;
	

	 -- enter your statements here --

end registru_4;
