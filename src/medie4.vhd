---------------------------------------------------------------------------------------------------
--
-- Title       : medie2
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : medie2.vhd
-- Generated   : Thu May 12 20:57:21 2022
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
--{entity {medie2} architecture {medie2}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity medie4 is 
	port(X,Y,Q,Z: in std_logic_vector(7 downto 0);
	medie: out std_logic_vector(7downto 0));
end medie4;

--}} End of automatically maintained section

architecture medie4 of medie4 is 
signal sum: std_logic_vector(8 downto 0); 
signal sum1: std_logic_vector(8 downto 0); 
signal sum2: std_logic_vector(9 downto 0); 
component suma 
	port(
    A, B : in std_logic_vector(7 downto 0);
   
SUM : out std_logic_vector(8 downto 0));

  end component;


component suma4  
	port(
    A, B : in std_logic_vector(8 downto 0);
 
SUMA: out std_logic_vector(9 downto 0));


end component;		
begin
	U1: suma port map(X, Y,sum); 
	U2: suma port map(Q, Z,sum1);
	U3: suma4 port map(sum, sum1,sum2);
	medie<= sum2(9 downto 2);
	 -- enter your statements here --

end medie4;
