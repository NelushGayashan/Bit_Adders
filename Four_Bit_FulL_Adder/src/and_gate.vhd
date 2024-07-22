library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port (
        A   : in  STD_LOGIC;
        B   : in  STD_LOGIC;
        O   : out STD_LOGIC
    );
end and_gate;

architecture Behavioral of and_gate is
begin
    O <= A and B;
end Behavioral;
