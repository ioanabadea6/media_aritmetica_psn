library IEEE;

use IEEE.STD_LOGIC_1164.all;


entity X_or is

	port( A : in STD_LOGIC;
		
B : in STD_LOGIC;
	
Y : out STD_LOGIC);

end X_or;




architecture X_or of X_or is

	begin


Y<=A XOR B;

end X_or;