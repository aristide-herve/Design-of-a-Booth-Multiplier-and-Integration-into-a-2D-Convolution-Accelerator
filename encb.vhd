------ encb.vhd
-- Encodeur Booth (Radix-4) : prend un triplet A[2:0] et sort un code 3 bits (option A : index 0..4)



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;


entity encb is
port (
triplet : in signed(2 downto 0); -- {A[i+1], A[i], A[i-1]}
sel : out signed(2 downto 0) -- 000->M0, 001->+B, 010->-B, 011->+2B, 100->-2B
);
end entity encb;


architecture rtl of encb is
begin
process(triplet)
begin
case triplet is
when "000" => sel <= "000"; -- 0
when "001" => sel <= "001"; -- +1 -> +B
when "010" => sel <= "001"; -- +1 -> +B
when "011" => sel <= "011"; -- +2 -> +2B
when "100" => sel <= "100"; -- -2 -> -2B
when "101" => sel <= "010"; -- -1 -> -B
when "110" => sel <= "010"; -- -1 -> -B
when "111" => sel <= "000"; -- 0
when others => sel <= "000";
end case;
end process;
end architecture rtl;