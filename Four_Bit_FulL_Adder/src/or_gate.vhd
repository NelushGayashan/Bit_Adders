library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port (
        A   : in  STD_LOGIC;
        B   : in  STD_LOGIC;
        O   : out STD_LOGIC
    );
end or_gate;

architecture Behavioral of or_gate is
begin
    O <= A or B;
end Behavioral;
