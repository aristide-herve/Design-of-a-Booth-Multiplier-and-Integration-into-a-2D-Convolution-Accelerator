library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity csa is
    generic ( N : integer := 32 );
    port (
        X : in  signed(N-1 downto 0);
        Y : in  signed(N-1 downto 0);
        Z : in  signed(N-1 downto 0);
        S : out signed(N-1 downto 0);  -- somme
        C : out signed(N-1 downto 0)   -- carry 
		  );
end entity;

architecture rtl of csa is
begin
    S <= X xor Y xor Z;
    C <= (X and Y) or (Y and Z) or (X and Z);
end architecture;
