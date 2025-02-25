library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Multiplier_1 is
port(A0,A1,A2,A3,B0,B1,B2:IN std_logic;
     M0,M1,M2,M3,M4,M5,M6:OUT std_logic);
	  end entity;
	  
	  architecture struct of Multiplier_1 is
	  signal sig1,sig2,sig3,sig4,sig5,sig6,sig7,sig8,sig9,sig10,sig11,sig12,sig13,sig14,sig15,sig16,sig17,sig18,sig19,sig20,sig21:std_logic;
	   `
	  begin
	  inst1:AND_2 port map(A=>a0,B=>B0,Y=>M0);
	  
	  inst2:AND_2 port map(A=>A1,B=>b0,Y=>sig1);
	  inst3:AND_2 port map (A=>A0,B=>B1,Y=>sig2);
	  inst4:HALF_ADDER port map(A=>sig1,B=>sig2,S=>M1,C=>sig3);
	  
	  inst5:AND_2 port map(A=>A2,B=>b0,Y=>sig4);
	  inst6:AND_2 port map (A=>A1,B=>B1,Y=>sig5);
	  inst7:FULL_ADDER port map(A=>sig4,B=>sig5,cin=>sig3,S=>sig6,C=>sig7);
	  inst8:AND_2 port map(A=>A0,B=>B2,Y=>sig8);
	  inst9:HALF_ADDER port map(A=>sig6,B=>sig8,S=>M2,C=>sig9);
		
		
	  inst10:AND_2 port map(A=>A3,B=>b0,Y=>sig10);
	  inst11:AND_2 port map (A=>A2,B=>B1,Y=>sig11);
	  inst12:FULL_ADDER port map(A=>sig10,B=>sig11,cin=>sig7,S=>sig12,C=>sig13);
	  inst13:AND_2 port map(A=>A1,B=>B2,Y=>sig14);
	  inst14:FULL_ADDER port map(A=>sig12,B=>sig14,cin=>sig9,S=>M3,C=>sig15);
	  
	  inst15:AND_2 port map(A=>A3,B=>b1,Y=>sig16);
	
	  inst17:HALF_ADDER port map(A=>sig16,B=>sig13,S=>sig20,C=>sig18);
	    inst16:AND_2 port map (A=>A2,B=>B2,Y=>sig17);
	  inst18:FULL_ADDER port map(A=>sig17,B=>sig20,cin=>sig15,S=>M4,C=>sig21);
	  
	  inst19:AND_2 port map(A=>A3,B=>B2,Y=>sig19);
	  inst20:Full_ADDER port map(A=>sig19,B=>sig18,cin=>sig21,S=>M5,C=>M6);
	  end architecture;
	  
		
		
	  