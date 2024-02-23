library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity generator_8 is	
	port(RST : in STD_LOGIC;  
		CLK : in STD_LOGIC;
		Dout: inout std_logic_vector(7 downto 0));
end generator_8;


--}} End of automatically maintained section


architecture generator_nr_pseudoaleatoare of generator_nr_pseudoaleatoare is 


component X_OR is

port( A : in STD_LOGIC;
		 
B : in STD_LOGIC;
		
Y : out STD_LOGIC);

end component;



component REGISTRU is

port(
		 CLK : in STD_LOGIC;
	
	RST : in STD_LOGIC;
		
	SI : in STD_LOGIC;
	
	LOAD : in STD_LOGIC;

	ShR : in STD_LOGIC;
	
	ShL : in STD_LOGIC;
	
	Din: in std_logic_vector(7 downto 0);
		
	Dout: inout std_logic_vector(7 downto 0)
  );

end component;


signal X: std_logic;
signal Y:STD_LOGIC;
signal W: std_logic_vector(7 downto 0);

begin

U1: REGISTRU port map (CLK => CLK ,RST => '0' ,SI=> X,LOAD => RST , ShR=> '1',ShL =>'0',Din=>"01000000",Dout =>W );	
--U2: X_or port map(W(7),W(6),X);
X<=W(6) xor W(2) xor W(1) xor W(7);
Dout <= W(7 downto 0);
end generator_nr_pseudoaleatoare;