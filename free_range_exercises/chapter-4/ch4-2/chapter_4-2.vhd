-- Libraries
library ieee;
use ieee.std_logic_1164.all;

-- Chapter 4 - Example 2
-- Write the VHDL code to implement the function  
-- expressed by the following logic equation: 
-- F3 = L' * M' * N + L * M
-- F3 = (L' AND M' AND N') OR (L AND M)

entity equation_f3 is
    port (
        input_L : in std_logic;
        input_M : in std_logic;
        input_N : in std_logic;
        output_F3 : out std_logic
    );
end entity;

architecture rtl of equation_f3 is
begin
   output_F3 <= (not(input_L) and not(input_M) and input_N) or (input_L and input_M) ;
end architecture;

-- See alternative solution that uses intermediate signals
-- Alternative solution is more closer to what the discrete gates look like