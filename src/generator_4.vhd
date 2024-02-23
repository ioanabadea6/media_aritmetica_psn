---------------------------------------------------------------------------------------------------
--
-- Title       : generator_4
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : generator_4.vhd
-- Generated   : Thu May 19 22:01:21 2022
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
--{entity {generator_4} architecture {generator_4}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity generator_4 is
	 port(
		 R : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 NR : inout STD_LOGIC_VECTOR(7 downto 0)
	     );
end generator_4;

architecture generator_4 of generator_4 is 
component registru_4 is
	 port(
	 sin : in STD_LOGIC;
	 clock: in std_logic;
	 reset: in std_logic;
		 load : in STD_LOGIC;
		 intrare : in STD_LOGIC_VECTOR(3 downto 0);
		 iesire : inout STD_LOGIC_VECTOR(3 downto 0)
	     );
end component;
signal temp : std_logic_vector(3 downto 0);	 
signal k: std_logic;
begin	
U1: registru_4 port map (sin => k,clock => clk, reset => '0',load => R,intrare => "0100",iesire => temp);
k <= temp(3) xor temp(2);
NR(3 downto 0) <= temp(3 downto 0);
NR(7 downto 4) <= "0000";
end generator_4;
