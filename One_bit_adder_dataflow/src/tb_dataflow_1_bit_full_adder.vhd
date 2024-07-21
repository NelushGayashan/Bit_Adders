												   library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_dataflow_1_bit_full_adder is
end tb_dataflow_1_bit_full_adder;

architecture Behavioral of tb_dataflow_1_bit_full_adder is
    signal A     : STD_LOGIC := '0';
    signal B     : STD_LOGIC := '0';
    signal Cin   : STD_LOGIC := '0';
    signal Sum   : STD_LOGIC;
    signal Cout  : STD_LOGIC;

    component dataflow_1_bit_full_adder
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            Cin   : in  STD_LOGIC;
            Sum   : out STD_LOGIC;
            Cout  : out STD_LOGIC
        );
    end component;

begin
    uut: dataflow_1_bit_full_adder
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
        A     <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A     <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A     <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A     <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A     <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A     <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        A     <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A     <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
        wait;
    end process;
end Behavioral;
