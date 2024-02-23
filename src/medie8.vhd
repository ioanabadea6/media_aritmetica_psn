---------------------------------------------------------------------------------------------------
--
-- Title       : medie8
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : medie8.vhd
-- Generated   : Mon May 16 16:52:24 2022
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
--{entity {medie8} architecture {medie8}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity medie8 is 
	port(X,Y,Q,Z,M,N,B,V: in std_logic_vector(7 downto 0);
	medie: out std_logic_vector(7downto 0));
end medie8;

--}} End of automatically maintained section

architecture medie8 of medie8 is 
signal sum: std_logic_vector(8 downto 0); 
signal sum1, sum2, sum3: std_logic_vector(8 downto 0); 
signal sum4, sum5: std_logic_vector(9 downto 0);   
signal sum6: std_logic_vector(10 downto 0); 
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

component suma8 
	port(
    A, B : in std_logic_vector(9 downto 0);
	SUMA: out std_logic_vector(10 downto 0));
end component;	

begin
	U1: suma port map(X, Y,sum); 
	U2: suma port map(Q, Z,sum1);  
	U3: suma port map(M, N,sum2);
	U4: suma port map(B, V, sum3);
	U5: suma4 port map(sum, sum1, sum4);	
	U6: suma4 port map(sum2, sum3, sum5);
	U7: suma8 port map(sum4, sum5,sum6);
	medie<= sum6(10 downto 3);
	 -- enter your statements here --

end medie8;