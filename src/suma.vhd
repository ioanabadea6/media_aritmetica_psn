library IEEE;
use IEEE.STD_LOGIC_1164.all;   

use ieee.std_logic_arith.all;

use ieee.std_logic_unsigned.all;

entity suma is
 
	port(
    A, B : in std_logic_vector(7 downto 0);
   
SUM : out std_logic_vector(8 downto 0));
	

end suma;	



architecture suma of suma is


signal tmp: std_logic_vector(8 downto 0);	


  begin
  
	tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B)),9);
  
SUM <= tmp(8 downto 0);

end suma; 	