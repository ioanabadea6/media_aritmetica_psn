library ieee;

use ieee.std_logic_1164.all;

use ieee.std_logic_arith.all;

use ieee.std_logic_unsigned.all;



entity suma16 is
  
	port(
    A, B : in std_logic_vector(10 downto 0);
 
SUMA: out std_logic_vector(11 downto 0));


end suma16;		


architecture suma8 of suma16 is 


signal tmp: std_logic_vector(11 downto 0);


  begin
  
	tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B)),12);
  
	SUMA <= tmp(11 downto 0);

end suma8;