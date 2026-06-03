library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity b_transformer is
    port (
        B      : in  signed(15 downto 0);
        S1     : out signed(16 downto 0);  -- +B
        S2     : out signed(16 downto 0);  -- -B
        S3     : out signed(16 downto 0);  -- +2B
        S4     : out signed(16 downto 0);  -- -2B
        S5     : out signed(16 downto 0)   -- 5e sortie (à définir)
    );
end entity;

architecture rtl of b_transformer is
    signal B_ext : signed(16 downto 0);

	 begin

    -- Extension de signe de B (16 bits → 17 bits)
    B_ext <= resize(signed(B), 17);

    -- +B
    S1 <= signed(B_ext);

    -- -B
    S2 <= signed(-B_ext);

    -- +2B (décalage à gauche)
    S3 <= signed(shift_left(B_ext, 1));

    -- -2B
    S4 <= signed(-shift_left(B_ext, 1));

    -- 
    S5 <= (others => '0');

end architecture;
