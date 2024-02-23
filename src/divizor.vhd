---------------------------------------------------------------------------------------------------
--
-- Title       : divizor
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : divizor.vhd
-- Generated   : Thu May 12 23:20:27 2022
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
--{entity {divizor} architecture {divizor}}

library IEEE;
use IEEE.STD_LOGiC_1164.all;
use IEEE.std_logic_unsigned.all;

entity divizor is
	port(clk_100:in std_logic;
	clk_25: out std_logic;
	reset:in std_logic);
end divizor;



--}} End of automatically maintained section

architecture divizor of divizor is	  
signal temporar :std_logic;
signal numarator : std_logic_vector (27 downto 0) :=(others=>'0');
begin
	
	divizor_de_frecventa: process (reset, clk_100) 
	begin
        if(rising_edge(clk_100)) then
			if(reset='1') then
				clk_25<=not (clk_100);
			else
				numarator<=numarator+1;
				if(numarator=60000000) then
					clk_25<=not(clk_100);
					numarator<=(others=>'0');
				end if;
			end if;
			end if;
    end process ;
	 -- enter your statements here --

end divizor;
