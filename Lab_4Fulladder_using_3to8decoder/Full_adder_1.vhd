library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity full_adder_1 is 
PORT (A,B,cin: in std_logic; S,cout:out std_logic);

end entity;

architecture struct of full_adder_1 is 

component decoder_3to8 is 
PORT (a2,a1,a0,E: in std_logic;  y7,y6,y5,y4,y3,y2,y1,y0:out std_logic);

end component;
signal sig1,sig2,sig3,sig4,sig5,sig6,sig7,sig8,sig9,sig10,sig11,sig12:std_logic;
begin 
     
	  
inst1: decoder_3to8 port map(a2 =>A,a1 => B,a0=>cin, E=>'1',y0=>sig1, y1=>sig2, y2=>sig3, y3=>sig4 ,y4=>sig5 ,y5=>sig6 ,y6=>sig7 ,y7=>sig8);

inst2: OR_2 port map(A => sig2,B =>sig3,Y => sig9);

inst3: OR_2 port map(A => sig5,B =>sig8,Y => sig10);

inst4: OR_2 port map(A => sig4,B =>sig6,Y=>sig11);

inst5: OR_2 port map(A => sig7,B =>sig8,y=>sig12);

inst6: OR_2 port map(A => sig9,B =>sig10,Y=>S);

inst7: OR_2 port map(A => sig11,B =>sig12,y=>cout);

end architecture ;