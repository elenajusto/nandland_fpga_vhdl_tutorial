-- File: AND Gate

-- Libraries
library ieee;
use ieee.std_logic_1164.all;

-- Definiton for AND gate

-- Interface 
-- This defines the and_gate IO
entity and_gate_def is
    port (
        input_1   : in std_logic;
        input_2 : in std_logic;
        result : out std_logic
    );
end entity;

-- Functionality
-- This is an architecture called "rtl" of type "and_gate" 
architecture rtl of and_gate_def is
    signal andGate : std_logic;
begin
    andGate <= input_1 and input_2;
    result <= andGate;
end architecture;