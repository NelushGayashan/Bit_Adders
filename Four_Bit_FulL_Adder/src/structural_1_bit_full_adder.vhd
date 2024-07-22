library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity structural_1_bit_full_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        Cin   : in  STD_LOGIC;
        Sum   : out STD_LOGIC;
        Cout  : out STD_LOGIC
    );
end structural_1_bit_full_adder;

architecture Structural of structural_1_bit_full_adder is
    component xor_gate
        Port (
            A   : in  STD_LOGIC;
            B   : in  STD_LOGIC;
            O   : out STD_LOGIC
        );
    end component;

    component and_gate
        Port (
            A   : in  STD_LOGIC;
            B   : in  STD_LOGIC;
            O   : out STD_LOGIC
        );
    end component;

    component or_gate
        Port (
            A   : in  STD_LOGIC;
            B   : in  STD_LOGIC;
            O   : out STD_LOGIC
        );
    end component;

    signal AxorB : STD_LOGIC;
    signal AandB : STD_LOGIC;
    signal AxorBandCin : STD_LOGIC;

begin
    U1: xor_gate port map (A, B, AxorB);
    U2: xor_gate port map (AxorB, Cin, Sum);
    U3: and_gate port map (A, B, AandB);
    U4: and_gate port map (AxorB, Cin, AxorBandCin);
    U5: or_gate port map (AandB, AxorBandCin, Cout);
end Structural;
