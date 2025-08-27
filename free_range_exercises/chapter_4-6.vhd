-- Libraries
library ieee;
use ieee.std_logic_1164.all;

-- Chapter 4 - Example 6

-- Write the VHDL code that implements a 4:1 MUX 
-- using a single selected signal assignment statement
-- The inputs to the  MUX are data inputs D3, D2, D1, D0 
-- and a two-input control bus SEL.  
-- The single output is MX OUT.

entity mux_ch4_eg6 is 
    port (
            D0 : in std_logic;
            D1 : in std_logic;
            D2 : in std_logic;
            D3 : in std_logic;

            SEL : in std_logic_vector (1 downto 0);

            MX_OUT : out std_logic
         );
end mux_ch4_eg6;

architecture mux_out of mux_ch4_eg6 is
begin
    with SEL select 
    
    MX_OUT <= D0 when "00",
              D1 when "01",
              D2 when "10",
              D3 when "11",
              '0' when others;
end mux_out;  