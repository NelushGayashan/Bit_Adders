library IEEE;
  use IEEE.STD_LOGIC_1164.all;

entity behavioral_1_bit_full_adder is
  port (
    A    : in  STD_LOGIC;
    B    : in  STD_LOGIC;
    Cin  : in  STD_LOGIC;
    Sum  : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
end entity;

architecture Behavioral of behavioral_1_bit_full_adder is
begin
  process (A, B, Cin)
  begin
    Sum <= A xor B xor Cin;
    Cout <= (A and B) or (B and Cin) or (Cin and A);
  end process;
end architecture;
