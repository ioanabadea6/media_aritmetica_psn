library IEEE;

use IEEE.STD_LOGIC_1164.all;




entity REGISTRU is
	
port(
CLK : in STD_LOGIC;

RST : in STD_LOGIC;
		
SI : in STD_LOGIC;
		
LOAD : in STD_LOGIC;
	
ShR : in STD_LOGIC;
	
ShL : in STD_LOGIC;
		
Din: in std_logic_vector(7 downto 0);
	
Dout: inout std_logic_vector(7 downto 0) );

end REGISTRU;


--}} End of automatically maintained section


architecture REGISTRU of REGISTRU is

begin

process(CLK,LOAD,RST)

 begin

if(CLK'event and CLK='1') then

if(RST='1') then

Dout <= "00000000";
	
elsif(LOAD='1') then

Dout<= Din;
	
elsif(ShR='1') then	  
	
Dout(7) <= SI;
		
Dout(6) <= Dout(7);
	
Dout(5) <= Dout(6);
	
Dout(4) <= Dout(5);
	
Dout(3) <= Dout(4);
	
Dout(2) <= Dout(3);
	
Dout(1) <= Dout(2);
	
Dout(0) <= Dout(1);

	    elsif(ShL='1') then
	
	Dout(7) <= Dout(6);
		
	Dout(6) <= Dout(5);
	
	Dout(5) <= Dout(4);
	
	Dout(4) <= Dout(3);
	
	Dout(3) <= Dout(2);
	
	Dout(2) <= Dout(1);
	
    Dout(1) <= Dout(0);
		
Dout(0) <= SI;
		
end if;

end if;

end process;

end REGISTRU;