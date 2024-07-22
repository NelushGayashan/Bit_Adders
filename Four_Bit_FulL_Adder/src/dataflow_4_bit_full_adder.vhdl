library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dataflow_4_bit_full_adder is
    Port (
        A     : in  STD_LOGIC_VECTOR(3 downto 0);
        B     : in  STD_LOGIC_VECTOR(3 downto 0);
        Cin   : in  STD_LOGIC;
        Sum   : out STD_LOGIC_VECTOR(3 downto 0);
        Cout  : out STD_LOGIC
    );
end dataflow_4_bit_full_adder;

architecture DataFlow of dataflow_4_bit_full_adder is
    signal C: STD_LOGIC_VECTOR(3 downto 0); -- Intermediate carry signals
begin
    -- Instantiate 4 1-bit full adders
    FA0: entity work.dataflow_1_bit_full_adder port map (A(0), B(0), Cin, Sum(0), C(0));
    FA1: entity work.dataflow_1_bit_full_adder port map (A(1), B(1), C(0), Sum(1), C(1));
    FA2: entity work.dataflow_1_bit_full_adder port map (A(2), B(2), C(1), Sum(2), C(2));
    FA3: entity work.dataflow_1_bit_full_adder port map (A(3), B(3), C(2), Sum(3), Cout);
end DataFlow;
