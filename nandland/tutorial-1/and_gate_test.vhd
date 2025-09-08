library ieee;
use ieee.std_logic_1164.all;

entity and_gate_test_bench is
    -- No ports in a test bench
end and_gate_test_bench;

architecture test of and_gate_test_bench is 
    component and_gate_def
        port (
            input_1   : in std_logic;
            input_2 : in std_logic;
            result : out std_logic
        );
    end component and_gate_def;

    signal input_1, input_2, result : std_logic;
begin
    and_gate : and_gate_def
        port map (
            input_1 => input_1,
            input_2 => input_2,
            result => result
        );
    
    process begin
        -- Test case 0: No value
        input_1 <= 'X';
        input_2 <= 'X';
        wait for 1 ns;

        -- Test case 1: 0 AND 0 = 0
        input_1 <= '0';
        input_2 <= '0';
        wait for 1 ns;

        -- Test case 2: 0 AND 1 = 0
        input_1 <= '0';
        input_2 <= '1';
        wait for 1 ns;

        -- Test case 3: 1 AND 0 = 0
        input_1 <= '1';
        input_2 <= '0';
        wait for 1 ns;

        -- Test case 4: 1 AND 1 = 1
        input_1 <= '1';
        input_2 <= '1';
        wait for 1 ns;
        
        -- End simulation
        wait;

        -- Log
        assert false report "Executed Testbench";

        -- End simulation
        wait;
    end process;
end test;