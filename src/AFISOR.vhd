---------------------------------------------------------------------------------------------------
--
-- Title       : AFISOR
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : AFISOR.vhd
-- Generated   : Wed May 11 22:47:11 2022
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
--{entity {AFISOR} architecture {AFISOR}}

library IEEE;
use IEEE.STD_LOGiC_1164.all;
use IEEE.std_logic_unsigned.all;

entity AFISOR is	
	port ( numere_intrare: in std_logic_vector(3 downto 0);	
	segment: out std_logic_vector(7 downto 0));
end AFISOR;


library IEEE;
use IEEE.STD_LOGiC_1164.all;
use IEEE.std_logic_unsigned.all; 
entity ssd is
	port( clk: in std_logic_vector;
	s:in std_logic;
	anod: out std_logic_vector (3 downto 0);
	ss: out std_logic_vector (3 downto 0));
end ssd;
--}} End of automatically maintained section

architecture AFISOR of AFISOR is 
signal clkdiv: std_logic_vector (24 downto 0);
signal cntr, anod:std_logic_vector(3 downto 0);
signal cclk,s,clk:std_logic;
signal numere_iesire: std_logic_vector(7 downto 0) := (others=> '0');
begin
	process (numere_intrare)
	begin
		case numere_intrare is
			when "0000" => numere_iesire <= "11111100";	--0
			when "0001" => numere_iesire <= "01100000";	--1
			when "0010" => numere_iesire <= "11011010";	--2
			when "0011" => numere_iesire <= "11110010"; --3
			when "0100" => numere_iesire <= "01100110"; --4
			when "0101" => numere_iesire <= "10110110";	 --5
			when "0110" => numere_iesire <= "10111110";--6
			when "0111" => numere_iesire <= "11100000";	--7
			when "1000" => numere_iesire <= "11111110"; --8
			when "1001" => numere_iesire <= "11110110"; --9
			when "1010" => numere_iesire <= "11101110";	--A
			when "1011" => numere_iesire <= "00111110"; --B
			when "1100" => numere_iesire <= "10011110"; --C
			when "1101" => numere_iesire <= "01111010"; --D
			when "1110" => numere_iesire <= "10001110"; --E
			when "1111" => numere_iesire <= "10001110";	--F	 
			when others => numere_iesire <= "11111110" ;
	 -- enter your statements here --
	end case;
	segment <= not (numere_iesire);
	end process;	
	
	process (s)	
	begin
		if (s='1') then
			anod <= "0000";
		else
			anod <= "1111";
		end if;
	end process;
	
	process(clk) 
	begin
		if clk='1' and clk'event then
			clkdiv<=clkdiv+1;
		end if;
	end process;
	cclk<=clkdiv(24);
	
	process (cclk)	   
	begin 
		if cclk='1' and cclk'event then
			if cntr="1001" then
				cntr<="0000";
			else		 
				cntr<=cntr+1;
			end if;
		end if;
	end process;		
		
end AFISOR;
