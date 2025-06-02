library IEEE;
use IEEE.std_logic_1164.all;

entity comp_tb is 

end entity;

architecture jfk of comp_tb is 

component comp is 
   port( a : in std_logic_vector(1 downto 0);
             b : in std_logic_vector(1 downto 0);
              a_greater : out std_logic;
              equal : out std_logic;
              a_lesser : out std_logic
              );
    end component;
    
    signal grat,eq,less : std_logic; signal a_1,b_1 : std_logic_vector(1 downto 0);
    
    begin
    
    DUT : comp 
          port map( a => a_1,
                    b => b_1,
                    a_greater => grat,
                    equal => eq,
                    a_lesser => less
                    );
    stim_proc: process
    begin
    
       a_1 <= "00"; b_1 <= "01"; wait for 10 ns;
        a_1 <= "10"; b_1 <= "01"; wait for 10 ns;
        a_1 <= "10"; b_1 <= "10"; wait for 10 ns;
        a_1 <= "11"; b_1 <= "01"; wait for 10 ns;
        a_1 <= "10"; b_1 <= "11"; wait for 10 ns;
    
     assert false report "Simulation done." severity note;
        wait;
    end process;
end jfk; 