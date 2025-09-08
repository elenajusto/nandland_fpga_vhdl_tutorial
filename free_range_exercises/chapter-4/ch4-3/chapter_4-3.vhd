-- Libraries
library ieee;
use ieee.std_logic_1164.all;

-- Chapter 4 - Example 3
-- Write the VHDL code to implement the function expressed in Example 2. 
-- Use only conditional signal assignment statements  in your VHDL code.

-- entity
entity my_ckt_f3_conditional is 
    port ( L, M, N : in std_logic;
           F3     : out std_logic);
end my_ckt_f3_conditional;

-- F3 = L_bar · M_bar · N + L · M
-- Plug equation into https://www.boolean-algebra.com/ to get truth table
-- Use truth table to implement true states in the conditional assignemnt below
-- Most often occuring result becomes your catch all (in this case 0)

-- architecture
architecture f3_1 of my_ckt_f3_conditional is
    signal A1, A2: std_logic;     -- intermediate signals
begin
    -- F3 either outputs 1 or 0
    F3 <= '1' when (L = '0' and M = '0' and N = '1') else
          '1' when (L = '1' and M = '1' and N = '0') else
          '1' when (L = '1' and M = '1' and N = '1') else
          '0';
end f3_1;