---------------------------------------------------------------------------------------------------
--
-- Title       : big_registru
-- Design      : proiect
-- Author      : ioanabadea462@gmail.com
-- Company     : PERSONA
--
---------------------------------------------------------------------------------------------------
--
-- File        : big_registru.vhd
-- Generated   : Fri May 20 23:02:57 2022
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
--{entity {big_registru} architecture {big_registru}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity big_registru is
	port(		   
	reset : in std_logic;
		 clk : in STD_LOGIC;
		 intrare : in STD_LOGIC_VECTOR(7 downto 0);
		 iesire0,iesire1,iesire2,iesire3,iesire4,iesire5,iesire6,iesire7,iesire8,iesire9,iesire10,iesire11,iesire12,iesire13,iesire14,iesire15 : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end big_registru;

--}} End of automatically maintained section

architecture big_registru of big_registru is
signal temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11,temp12,temp13,temp14,temp15: std_logic_vector(7 downto 0);
begin
    process(clk)
	begin 
		if(reset = '1') then
			temp0 <= "00000000"; 
			temp1 <= "00000000";
			temp2 <= "00000000";
			temp3 <= "00000000";
			temp4 <= "00000000";
			temp5 <= "00000000";
			temp6 <= "00000000";
			temp7 <= "00000000";
			temp8 <= "00000000";
			temp9 <= "00000000";
			temp10 <= "00000000";
			temp11 <= "00000000";
			temp12 <= "00000000";
			temp13 <= "00000000";
			temp14 <= "00000000";
			temp15 <= "00000000";
		elsif(rising_edge(clk)) then
			temp15 <= temp14; 
			temp14 <= temp13;
			temp13 <= temp12;
			temp12 <= temp11;
			temp11 <= temp10;
			temp10 <= temp9;
			temp9 <= temp8;
			temp8 <= temp7;
			temp7 <= temp6;
			temp6 <= temp5;
			temp5 <= temp4;
			temp4 <= temp3;
			temp3 <= temp2;
			temp2 <= temp1;
			temp1 <= temp0;
			temp0 <= intrare;
		end if;	
		iesire0 <= temp0;  
		iesire1 <= temp1;
		iesire2 <= temp2;
		iesire3 <= temp3; 
		iesire4 <= temp4;
		iesire5 <= temp5;
		iesire6 <= temp6;
		iesire7 <= temp7;
		iesire8 <= temp8;
		iesire9 <= temp9;
		iesire10 <= temp10;
		iesire11 <= temp11;
		iesire12 <= temp12;
		iesire13 <= temp13;
		iesire14 <= temp14;
		iesire15 <= temp15;
	  end process;
end big_registru;
