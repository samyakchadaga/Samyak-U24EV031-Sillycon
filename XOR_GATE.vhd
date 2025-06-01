library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is 
    port (
        a : in std_logic;
        b : in std_logic;
        c : out std_logic
    );
end xor_gate;

architecture behavioral of xor_gate is 
begin 
    process(a, b)
    begin 
        c <= a xor b;
    end process;
end behavioral;
