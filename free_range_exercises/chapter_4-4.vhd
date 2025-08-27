-- Libraries
library ieee;
use ieee.std_logic_1164.all;

-- Chapter 4 - Example 4

-- Write the VHDL code that implements a 4:1 MUX 
-- using a single conditional signal assignment statement. 
-- The inputs to  the MUX are data inputs D3, D2, D1, D0 and 
-- a two-input control bus  SEL. 
-- The single output is MX OUT.

-- entity definition
entity mux_ch4_eg4 is 
    port (
            D0 : in std_logic;
            D1 : in std_logic;
            D2 : in std_logic;
            D3 : in std_logic;

            SEL_1 : in std_logic;
            SEL_2 : in std_logic;

            MX_OUT : out std_logic
         );
end mux_ch4_eg4;

-- architecture
architecture mux_out of mux_ch4_eg4 is

begin
    MX_OUT <= D0 when (SEL_1 = '0' and SEL_2 = '0') else
              D1 when (SEL_1 = '0' and SEL_2 = '1') else
              D2 when (SEL_1 = '1' and SEL_2 = '0') else
              D3 when (SEL_1 = '1' and SEL_2 = '1'); 
end mux_out;  

-- ANSWER:
-- SEL should be defined as 
-- SEL : IN std_logic_vector (1 downto 0); 
-- Because it is a bus of two lines
-- Therefore you can compare the values as SEL = "11" 