-- Libraries
library ieee;
use ieee.std_logic_1164.all;

-- Definition: 1 Hz Counter
entity hz_1_counter is
    port (
        clock_in   : in std_logic;
        count_out : out std_logic
    );
end entity;

-- Functionality
architecture rtl of hz_1_counter is
    signal count : std_logic;
begin
    count <= clock_in;
end architecture;