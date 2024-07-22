library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dataflow_1_bit_full_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        Cin   : in  STD_LOGIC;
        Sum   : out STD_LOGIC;
        Cout  : out STD_LOGIC
    );
end dataflow_1_bit_full_adder;

architecture DataFlow of dataflow_1_bit_full_adder is
begin
    Sum  <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));
end DataFlow;
