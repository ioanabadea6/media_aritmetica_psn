---------------------------------------------------------------------------------------------------
--
-- Title       : sumator_medie
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : sumator_medie.vhd
-- Generated   : Fri May 20 23:16:55 2022
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
--{entity {sumator_medie} architecture {sumator_medie}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity sumator_medie is	
	port( 
	length : in std_logic_vector(2 downto 0);
	rst : in std_logic;	 
	clock : in std_logic;
	numar : in std_logic_vector(7 downto 0);
	medie : out std_logic_vector(7 downto 0)
	);
end sumator_medie;


architecture sumator_medie of sumator_medie is	
component big_registru is
	port(		   
	reset : in std_logic;
		 clk : in STD_LOGIC;
		 intrare : in STD_LOGIC_VECTOR(7 downto 0);
		 iesire0,iesire1,iesire2,iesire3,iesire4,iesire5,iesire6,iesire7,iesire8,iesire9,iesire10,iesire11,iesire12,iesire13,iesire14,iesire15 : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end component; 
component medie2 is 
	port(X,Y: in std_logic_vector(7 downto 0);
	medie: out std_logic_vector(7downto 0));
end component;
component medie4 is 
	port(X,Y,Q,Z: in std_logic_vector(7 downto 0);
	medie: out std_logic_vector(7downto 0));
end component;	 
component medie8 is 
	port(X,Y,Q,Z,M,N,B,V: in std_logic_vector(7 downto 0);
	medie: out std_logic_vector(7downto 0));
end component;
component medie16 is 
	port(X,Y,Q,Z,M,N,B,V,L,K,J,H,G,F,D,S: in std_logic_vector(7 downto 0);
	medie: out std_logic_vector(7downto 0));
end component;
component mux8_1 is
	 port(
		 nr2,nr4,nr8,nr16 : in STD_LOGIC_VECTOR(7 downto 0);
		 sel : in STD_LOGIC_VECTOR(2 downto 0);
		 outnr : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end component;
signal nr0,nr1,nr2,nr3,nr4,nr5,nr6,nr7,nr8,nr9,nr10,nr11,nr12,nr13,nr14,nr15 : STD_LOGIC_VECTOR(7 downto 0);
signal med2,med4,med8,med16: STD_LOGIC_VECTOR(7 downto 0);
begin				   
   U0 : big_registru port map(rst,clock,numar,nr0,nr1,nr2,nr3,nr4,nr5,nr6,nr7,nr8,nr9,nr10,nr11,nr12,nr13,nr14,nr15);
   U1 : medie2 port map(nr0,nr1,med2);
   U2 : medie4 port map(nr0,nr1,nr2,nr3,med4);
   U3 : medie8 port map(nr0,nr1,nr2,nr3,nr4,nr5,nr6,nr7,med8);
   U4 : medie16 port map(nr0,nr1,nr2,nr3,nr4,nr5,nr6,nr7,nr8,nr9,nr10,nr11,nr12,nr13,nr14,nr15,med16);
   U5 : mux8_1 port map(med2,med4,med8,med16,length,medie);
end sumator_medie;
