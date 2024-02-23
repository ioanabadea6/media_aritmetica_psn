---------------------------------------------------------------------------------------------------
--
-- Title       : proiect
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : proiect.vhd
-- Generated   : Mon May 16 17:13:30 2022
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
--{entity {proiect} architecture {proiect}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity proiect is
	port( length: in std_logic_vector(2 downto 0);
	control: in std_logic_vector(2 downto 0);
	clk, reset: in std_logic;
	numar: inout std_logic_vector (7 downto 0);
	medie: out std_logic_vector(7 downto 0));
end proiect;

--}} End of automatically maintained section

architecture proiect of proiect is 

component divizor is
	port(clk_100:in std_logic;
	clk_25: out std_logic;
	reset:in std_logic);
end component;

component generator_8 is	
	port(RST : in STD_LOGIC;  
		CLK : in STD_LOGIC;
		Dout: inout std_logic_vector(7 downto 0));
end component;

component generator_4 is
	 port(
		 R : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 NR : inout STD_LOGIC_VECTOR(7 downto 0)
	     );
end component;

component AFISOR is	
	port ( numere_intrare: in std_logic_vector(3 downto 0);	
	
	segment: out std_logic_vector(7 downto 0));
end component;
signal clock_nou : STD_LOGIC;
component mux_gen is
	 port(
		 number1,number2 : in STD_LOGIC_VECTOR(7 downto 0);
		 ctr : in STD_LOGIC_VECTOR(2 downto 0);
		 outnumber : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end component; 
component sumator_medie is	
	port( 
	length : in std_logic_vector(2 downto 0);
	rst : in std_logic;	 
	clock : in std_logic;
	numar : in std_logic_vector(7 downto 0);
	medie : out std_logic_vector(7 downto 0)
	);
end component;
signal n1,n2,n3:std_logic_vector(7 downto 0);
begin
--U1: divizor port map (clk,clock_nou,reset);	  
U2: generator_8 port map (reset,clk,n1);
U3 : generator_4 port map (reset,clk,n2);
U4 : mux_gen port map (n1,n2,control,n3);
U5 : sumator_medie port map (length,reset,clk,n3,medie);
--U6 : AFISOR port map ();
end proiect;
