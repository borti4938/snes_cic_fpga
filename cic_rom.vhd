library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity cic_rom is
  PORT (
	clka : IN STD_LOGIC;
	ena : IN STD_LOGIC;
	addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
end cic_rom;

architecture behaviour of cic_rom is

type rom_t is array (0 to 511) of std_logic_vector(7 downto 0);
constant cic_rom : rom_t :=  (X"00", X"80", X"78", X"cb", X"21", X"00", X"46", X"27", X"00", X"35", X"00", X"d3", X"75", X"31", X"7c", X"4a", 
							X"21", X"00", X"a1", X"30", X"c1", X"00", X"01", X"70", X"00", X"d4", X"21", X"41", X"46", X"00", X"34", X"70", 
							X"20", X"30", X"00", X"34", X"9b", X"fa", X"48", X"30", X"c1", X"93", X"00", X"00", X"00", X"5d", X"79", X"21", 
							X"e1", X"00", X"67", X"00", X"01", X"46", X"3d", X"2e", X"30", X"00", X"46", X"21", X"fd", X"62", X"31", X"46", 
							X"7c", X"33", X"e4", X"3c", X"00", X"4c", X"21", X"46", X"46", X"73", X"7d", X"20", X"00", X"2b", X"4c", X"43", 
							X"46", X"4a", X"42", X"5d", X"33", X"00", X"00", X"46", X"00", X"00", X"b4", X"38", X"42", X"46", X"32", X"55", 
							X"27", X"01", X"00", X"74", X"00", X"55", X"00", X"55", X"75", X"30", X"20", X"00", X"ae", X"42", X"b8", X"67", 
							X"30", X"2b", X"00", X"66", X"21", X"30", X"31", X"f6", X"23", X"de", X"30", X"75", X"46", X"21", X"20", X"80", 
							X"00", X"80", X"80", X"bd", X"bf", X"00", X"d7", X"61", X"55", X"10", X"00", X"00", X"23", X"60", X"d9", X"a1", 
							X"df", X"00", X"5d", X"55", X"5d", X"00", X"00", X"46", X"7d", X"4a", X"d9", X"23", X"46", X"7c", X"01", X"7c", 
							X"d9", X"5d", X"00", X"20", X"6c", X"46", X"5c", X"00", X"f5", X"68", X"00", X"74", X"7d", X"00", X"41", X"dd", 
							X"7c", X"74", X"47", X"4c", X"4c", X"7c", X"40", X"7d", X"f0", X"41", X"b0", X"d7", X"d7", X"5d", X"cb", X"5c", 
							X"30", X"7c", X"fe", X"d7", X"21", X"00", X"55", X"7c", X"20", X"41", X"41", X"00", X"fa", X"41", X"00", X"b1", 
							X"60", X"64", X"64", X"47", X"61", X"4c", X"fa", X"78", X"d9", X"75", X"20", X"f0", X"7d", X"30", X"65", X"74", 
							X"21", X"bd", X"4c", X"4a", X"4a", X"55", X"75", X"55", X"fa", X"21", X"c1", X"4b", X"61", X"27", X"f0", X"7d", 
							X"46", X"7d", X"30", X"64", X"d7", X"60", X"fa", X"cb", X"80", X"de", X"00", X"75", X"fc", X"7d", X"31", X"80", 
							X"00", X"80", X"78", X"74", X"42", X"fe", X"00", X"00", X"31", X"39", X"78", X"42", X"00", X"6a", X"c8", X"42", 
							X"75", X"36", X"42", X"3d", X"31", X"41", X"3f", X"00", X"3b", X"68", X"65", X"3f", X"42", X"7c", X"3f", X"60", 
							X"3b", X"41", X"42", X"da", X"36", X"3e", X"3a", X"42", X"69", X"3c", X"3c", X"3e", X"3d", X"37", X"6b", X"7c", 
							X"21", X"42", X"65", X"30", X"35", X"da", X"42", X"42", X"3b", X"3a", X"30", X"da", X"61", X"42", X"31", X"21", 
							X"78", X"21", X"38", X"83", X"42", X"31", X"7c", X"34", X"22", X"42", X"42", X"7c", X"31", X"42", X"31", X"30", 
							X"42", X"65", X"42", X"38", X"00", X"42", X"42", X"c8", X"3f", X"42", X"42", X"38", X"42", X"65", X"30", X"31", 
							X"80", X"75", X"3e", X"42", X"39", X"da", X"42", X"7c", X"31", X"42", X"7c", X"31", X"41", X"37", X"35", X"63", 
							X"7d", X"36", X"42", X"c8", X"42", X"62", X"7c", X"30", X"fa", X"31", X"34", X"7c", X"e1", X"c8", X"75", X"80", 
							X"00", X"80", X"78", X"69", X"00", X"00", X"d0", X"42", X"00", X"00", X"00", X"00", X"20", X"64", X"72", X"f4", 
							X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"ef", X"00", X"40", X"20", X"00", X"00", X"08", X"67", X"52", 
							X"4c", X"00", X"00", X"37", X"00", X"00", X"00", X"00", X"30", X"00", X"00", X"00", X"00", X"00", X"4c", X"4a", 
							X"72", X"00", X"57", X"00", X"00", X"55", X"00", X"00", X"00", X"00", X"42", X"5d", X"42", X"55", X"4a", X"2f", 
							X"78", X"00", X"00", X"01", X"00", X"00", X"4a", X"4d", X"00", X"00", X"00", X"5d", X"00", X"00", X"00", X"72", 
							X"68", X"60", X"00", X"00", X"4a", X"00", X"00", X"52", X"4a", X"00", X"00", X"00", X"00", X"0f", X"70", X"40", 
							X"80", X"00", X"00", X"00", X"00", X"5c", X"00", X"54", X"6a", X"00", X"23", X"49", X"52", X"00", X"00", X"5c", 
							X"74", X"00", X"00", X"42", X"4c", X"72", X"c3", X"48", X"7d", X"73", X"20", X"21", X"bf", X"72", X"75", X"80");

begin

	read_proc : process(clka)
		begin
			if rising_edge(clka) then
				if ena = '1' then
					douta <= cic_rom(to_integer(unsigned(addra)));
				end if;
			end if;
		end process;

end behaviour;
