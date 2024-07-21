library IEEE;
  use IEEE.STD_LOGIC_1164.all;

entity xor_gate is
  port (
    A : in  STD_LOGIC;
    B : in  STD_LOGIC;
    Y : out STD_LOGIC
  );
end entity;

architecture Behavioral of xor_gate is
begin
  Y <= A xor B;
end architecture;
