														  library IEEE;
  use IEEE.STD_LOGIC_1164.all;

entity or_gate is
  port (
    A : in  STD_LOGIC;
    B : in  STD_LOGIC;
    Y : out STD_LOGIC
  );
end entity;

architecture Behavioral of or_gate is
begin
  Y <= A or B;
end architecture;
