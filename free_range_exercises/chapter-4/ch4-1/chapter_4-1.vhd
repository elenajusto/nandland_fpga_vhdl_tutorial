-- Libraries
library ieee;
use ieee.std_logic_1164.all;

-- Chapter 4 - Example 1
-- Write the VHDL code that implements a three-input  NAND gate. 
-- The three input signals are named A, B and C 
-- the output signal name is F.

-- Elena Solution:
entity nand_gate_3input is
    port (
        input_A : in std_logic;
        input_B : in std_logic;
        input_C : in std_logic;
        output_F : out std_logic
    );
end entity;

architecture rtl of nand_gate_3input is
begin
    output_F <=  not (input_A and input_b and input_C);
end architecture;