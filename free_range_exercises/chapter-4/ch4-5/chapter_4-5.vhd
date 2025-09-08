-- Libraries
library ieee;
use ieee.std_logic_1164.all;

-- Chapter 4 - Example 5
-- Write VHDL code to implement the function expressed
-- by the following logic equation: 
-- F3 = L' · M' · N + L · M 
-- Use only selected  signal assignment statements in your VHDL code.

-- entity
entity my_ckt_f3_select is 
    port ( L, M, N : in std_logic;
           F3     : out std_logic);
end my_ckt_f3_select;

-- architecture
architecture f3_1 of my_ckt_f3_select is
begin
    with (L = '0' and M = '0' and N = '1') or (L = '1' and M = '1' and N = '0') select 

    F3 <= '1' when '1',
          '0' when '0',
          '0' when others;
end f3_1;