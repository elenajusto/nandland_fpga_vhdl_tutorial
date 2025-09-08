library ieee;
use ieee.std_logic_1164.all;

entity nand_gate_test_bench is
    -- No ports in a test bench
end nand_gate_test_bench;

architecture test of nand_gate_test_bench is 
    component nand_gate_def
         port (
            input_A : in std_logic;
            input_B : in std_logic;
            input_C : in std_logic;
            output_F : out std_logic
        );
    end component nand_gate_def;

    signal input_A, input_B, input_C, output_F : std_logic;
begin

    nand_gate : nand_gate_def
    port map (
        input_A => input_A,
        input_B => input_B,
        input_C => input_C,
        output_F => output_F
    );
    
    process begin
        -- Test case X
        -- No Value
        input_A <= 'X';
        input_B <= 'X';
        input_C <= 'X';
        wait for 1 ns;

        -- Test case 0
        -- ( 0 * 0 * 0 )'
        input_A <= '0';
        input_B <= '0';
        input_C <= '0';
        wait for 1 ns;

        -- Test case 1
        -- ( 0 * 0 * 1 )'
        input_A <= '1';
        input_B <= '0';
        input_C <= '0';
        wait for 1 ns;

        -- Test case 2
        -- ( 0 * 1 * 0 )'
        input_A <= '0';
        input_B <= '1';
        input_C <= '0';
        wait for 1 ns;

        -- Test case 3
        -- ( 0 * 1 * 1 )'
        input_A <= '1';
        input_B <= '1';
        input_C <= '0';
        wait for 1 ns;

        -- Test case 4
        -- ( 1 * 0 * 0 )'
        input_A <= '0';
        input_B <= '0';
        input_C <= '1';
        wait for 1 ns;

        -- Test case 5
        -- ( 1 * 0 * 1 )'
        input_A <= '1';
        input_B <= '0';
        input_C <= '1';
        wait for 1 ns;

        -- Test case 6
        -- ( 1 * 1 * 0 )'
        input_A <= '0';
        input_B <= '1';
        input_C <= '1';
        wait for 1 ns;

        -- Test case 7
        -- ( 1 * 1 * 1 )'
        input_A <= '1';
        input_B <= '1';
        input_C <= '1';
        wait for 1 ns;

        -- End simulation
        wait;

        -- Log
        assert false report "Executed Testbench";

        -- End simulation
        wait;
    end process;
end test;