library IEEE;
  use IEEE.STD_LOGIC_1164.all;

entity structural_1_bit_full_adder is
  port (
    A    : in  STD_LOGIC;
    B    : in  STD_LOGIC;
    Cin  : in  STD_LOGIC;
    Sum  : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
end entity;

architecture Structural of structural_1_bit_full_adder is
  signal s1, s2, s3 : STD_LOGIC;

  component xor_gate
    port (
      A : in  STD_LOGIC;
      B : in  STD_LOGIC;
      Y : out STD_LOGIC
    );
  end component;

  component and_gate
    port (
      A : in  STD_LOGIC;
      B : in  STD_LOGIC;
      Y : out STD_LOGIC
    );
  end component;

  component or_gate
    port (
      A : in  STD_LOGIC;
      B : in  STD_LOGIC;
      Y : out STD_LOGIC
    );
  end component;

begin
  xor1: xor_gate port map (A, B, s1);
  xor2: xor_gate port map (s1, Cin, Sum);

  and1: and_gate port map (A, B, s2);
  and2: and_gate port map (s1, Cin, s3);
  or1: or_gate port map (s2, s3, Cout);

end architecture;
