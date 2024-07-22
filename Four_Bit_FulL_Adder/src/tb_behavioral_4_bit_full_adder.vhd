library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_behavioral_4_bit_full_adder is
end tb_behavioral_4_bit_full_adder;

architecture Behavioral of tb_behavioral_4_bit_full_adder is
    signal A     : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal B     : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Cin   : STD_LOGIC := '0';
    signal Sum   : STD_LOGIC_VECTOR(3 downto 0);
    signal Cout  : STD_LOGIC;

    component behavioral_4_bit_full_adder
        Port (
            A     : in  STD_LOGIC_VECTOR(3 downto 0);
            B     : in  STD_LOGIC_VECTOR(3 downto 0);
            Cin   : in  STD_LOGIC;
            Sum   : out STD_LOGIC_VECTOR(3 downto 0);
            Cout  : out STD_LOGIC
        );
    end component;

begin
    uut: behavioral_4_bit_full_adder
        Port map (
            A     => A,
            B     => B,
            Cin   => Cin,
            Sum   => Sum,
            Cout  => Cout
        );

    process
    begin
        -- Test cases
        A     <= "0000"; B <= "0000"; Cin <= '0'; wait for 10 ns;
        A     <= "0001"; B <= "0001"; Cin <= '0'; wait for 10 ns;
        A     <= "0010"; B <= "0010"; Cin <= '1'; wait for 10 ns;
        A     <= "0100"; B <= "0100"; Cin <= '0'; wait for 10 ns;
        A     <= "1000"; B <= "1000"; Cin <= '1'; wait for 10 ns;
        A     <= "1111"; B <= "1111"; Cin <= '0'; wait for 10 ns;
        wait;
    end process;
end Behavioral;
