library ieee;
use ieee.std_logic_1164.all;

entity equation_f3_test_bench is
    -- No ports in a test bench
end equation_f3_test_bench;

architecture test of equation_f3_test_bench is 
    component equation_f3
        port (
            input_L : in std_logic;
            input_M : in std_logic;
            input_N : in std_logic;
            output_F3 : out std_logic
        );
    end component equation_f3;

    signal input_L, input_M, input_N, output_F3 : std_logic;
begin

    equationf3 : equation_f3
    port map (
        input_L => input_L,
        input_M => input_M,
        input_N => input_N,
        output_F3 => output_F3
    );
    
    process begin

        -- Test case X
        -- No Value
        input_L <= 'X';
        input_M <= 'X';
        input_N <= 'X';
        wait for 1 ns;

        -- Test case 0
        -- ( 0 * 0 * 0 )'
        input_L <= '0';
        input_M <= '0';
        input_N <= '0';
        wait for 1 ns;

        -- Test case 1
        -- ( 0 * 0 * 1 )'
        input_L <= '1';
        input_M <= '0';
        input_N <= '0';
        wait for 1 ns;

        -- Test case 2
        -- ( 0 * 1 * 0 )'
        input_L <= '0';
        input_M <= '1';
        input_N <= '0';
        wait for 1 ns;

        -- Test case 3
        -- ( 0 * 1 * 1 )'
        input_L <= '1';
        input_M <= '1';
        input_N <= '0';
        wait for 1 ns;

        -- Test case 4
        -- ( 1 * 0 * 0 )'
        input_L <= '0';
        input_M <= '0';
        input_N <= '1';
        wait for 1 ns;

        -- Test case 5
        -- ( 1 * 0 * 1 )'
        input_L <= '1';
        input_M <= '0';
        input_N <= '1';
        wait for 1 ns;

        -- Test case 6
        -- ( 1 * 1 * 0 )'
        input_L <= '0';
        input_M <= '1';
        input_N <= '1';
        wait for 1 ns;

        -- Test case 7
        -- ( 1 * 1 * 1 )'
        input_L <= '1';
        input_M <= '1';
        input_N <= '1';
        wait for 1 ns;

        -- End simulation
        wait;

        -- Log
        assert false report "Executed Testbench";

        -- End simulation
        wait;
    end process;
end test;