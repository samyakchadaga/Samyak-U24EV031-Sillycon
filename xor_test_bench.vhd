library IEEE;
use IEEE.std_logic_1164.all;

entity xor_tb is
end xor_tb;

architecture tb of xor_tb is

    component xor_gate
        port (
            a : in std_logic;
            b : in std_logic;
            c : out std_logic
        );
    end component;

    signal a_in, b_in, c_out : std_logic;

begin

    DUT: xor_gate
        port map (
            a => a_in,
            b => b_in,
            c => c_out
        );

    stim_proc: process
    begin
        a_in <= '0'; b_in <= '0'; wait for 10 ns;
        a_in <= '0'; b_in <= '1'; wait for 10 ns;
        a_in <= '1'; b_in <= '0'; wait for 10 ns;
        a_in <= '1'; b_in <= '1'; wait for 10 ns;

        assert false report "Simulation done." severity note;
        wait;
    end process;

end tb;
