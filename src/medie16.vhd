---------------------------------------------------------------------------------------------------
--
-- Title       : medie16
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : medie16.vhd
-- Generated   : Mon May 16 17:03:57 2022
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
--{entity {medie16} architecture {medie16}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity medie16 is 
	port(X,Y,Q,Z,M,N,B,V,L,K,J,H,G,F,D,S: in std_logic_vector(7 downto 0);
	medie: out std_logic_vector(7downto 0));
end medie16;

--}} End of automatically maintained section

architecture medie16 of medie16 is 
signal sum: std_logic_vector(8 downto 0); 
signal sum1, sum2, sum3, sum5, sum4, sum6, sum7: std_logic_vector(8 downto 0); 
signal sum8, sum9, sum10, sum11: std_logic_vector(9 downto 0);   
signal sum12, sum13: std_logic_vector(10 downto 0);   
signal sum14: std_logic_vector(11 downto 0); 
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

COMPONENT suma16 
  	port(
    A, B : in std_logic_vector(10 downto 0);
 	SUMA: out std_logic_vector(11 downto 0));
end COMPONENT;	

begin
	U1: suma port map(X, Y,sum); 
	U2: suma port map(Q, Z,sum1);  
	U3: suma port map(M, N,sum2);
	U4: suma port map(B, V, sum3);	
	U5: suma port map(L, K,sum4); 
	U6: suma port map(J, H,sum5);  
	U7: suma port map(G, F,sum6);
	U8: suma port map(D, S, sum7);
	U9: suma4 port map(sum, sum1, sum8);	
	U10: suma4 port map(sum2, sum3, sum9); 
	U11: suma4 port map(sum4, sum5, sum10);	
	U12: suma4 port map(sum6, sum7, sum11);
	U13: suma8 port map(sum8, sum9,sum12);  
	U14: suma8 port map(sum10, sum11,sum13);	  
	U15: suma16 port map(sum12, sum13,sum14);
	medie<= sum14(11 downto 4);
	 -- enter your statements here --

end medie16;
