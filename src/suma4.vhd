library ieee;

use ieee.std_logic_1164.all;

use ieee.std_logic_arith.all;

use ieee.std_logic_unsigned.all;



entity suma4 is
  
	port(
    A, B : in std_logic_vector(8 downto 0);
 
SUMA: out std_logic_vector(9 downto 0));


end suma4;		


architecture suma of suma4 is 


signal tmp: std_logic_vector(9 downto 0);


  begin
  
	tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B)),10);
  
	SUMA <= tmp(9 downto 0);

end suma;