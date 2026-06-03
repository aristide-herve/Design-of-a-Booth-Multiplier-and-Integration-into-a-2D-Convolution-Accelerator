--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity csa is
--    generic ( N : integer := 32 );
--    port (
--        X : in  std_logic_vector(N-1 downto 0);
--        Y : in  std_logic_vector(N-1 downto 0);
--        Z : in  std_logic_vector(N-1 downto 0);
--        S : out std_logic_vector(N-1 downto 0);  -- sum
--        C : out std_logic_vector(N-1 downto 0)   -- carry (non décalé, à shift avant CPA)
--    );
--end entity;
--
--architecture rtl of csa is
--begin
--    S <= X xor Y xor Z;
--    C <= (X and Y) or (Y and Z) or (X and Z);
--end architecture;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;

entity csa is
    generic ( N : integer := 32 );
    port (
        X : in  signed(N-1 downto 0);
        Y : in  signed(N-1 downto 0);
        Z : in  signed(N-1 downto 0);
        S : out signed(N-1 downto 0);  -- somme
        C : out signed(N-1 downto 0)   -- carry (non décalé, à shift avant CPA)
    );
end entity;

architecture rtl of csa is
begin
    S <= X xor Y xor Z;
    C <= (X and Y) or (Y and Z) or (X and Z);
end architecture;
