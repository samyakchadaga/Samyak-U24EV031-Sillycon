library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp is 
    port( 
        a         : in  std_logic_vector(1 downto 0);
        b         : in  std_logic_vector(1 downto 0);
        a_greater : out std_logic;
        equal     : out std_logic;
        a_lesser  : out std_logic
    );
end entity comp;

architecture behave of comp is 
begin 
    a_greater <= '1' when (a > b) else '0';
    equal     <= '1' when (a = b) else '0';
    a_lesser  <= '1' when (a < b) else '0';
end architecture behave;
