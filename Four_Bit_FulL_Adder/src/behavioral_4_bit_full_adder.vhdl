library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity behavioral_4_bit_full_adder is
    Port (
        A     : in  STD_LOGIC_VECTOR(3 downto 0);
        B     : in  STD_LOGIC_VECTOR(3 downto 0);
        Cin   : in  STD_LOGIC;
        Sum   : out STD_LOGIC_VECTOR(3 downto 0);
        Cout  : out STD_LOGIC
    );
end behavioral_4_bit_full_adder;

architecture Behavioral of behavioral_4_bit_full_adder is
    signal C: STD_LOGIC_VECTOR(4 downto 0); -- Intermediate carry signals
begin
    C(0) <= Cin;
    process(A, B, C)
    begin
        for i in 0 to 3 loop
            Sum(i) <= A(i) xor B(i) xor C(i);
            C(i+1) <= (A(i) and B(i)) or (C(i) and (A(i) xor B(i)));
        end loop;
        Cout <= C(4);
    end process;
end Behavioral;
