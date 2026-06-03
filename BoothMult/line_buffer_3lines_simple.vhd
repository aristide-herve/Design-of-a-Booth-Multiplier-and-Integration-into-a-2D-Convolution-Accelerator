library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;
--
--entity line_buffer_3lines_simple is
--    generic (
--        WIDTH : integer := 3 -- nombre de pixels par ligne
--    );
--    port (
--        clk       : in  std_logic;
--        rst       : in  std_logic;
--        pixel_in  : in  signed(15 downto 0);
--        pixel_out : out signed(9*16-1 downto 0); -- fenetre 3x3 aplatie
--        valid_out : out std_logic
--    );
--end entity;
--
--architecture rtl of line_buffer_3lines_simple is
--
--    -- 2 lignes tampon
--    type line_type is array (0 to WIDTH-1) of signed(15 downto 0);
--
--    signal line1 : line_type := (others => (others => '0'));
--    signal line2 : line_type := (others => (others => '0'));
--
--    -- colonnes glissantes
--    signal col0, col1, col2 : signed(15 downto 0);
--
--    signal x : integer range 0 to WIDTH := 0;
--
--    -- fenêtre 3x3 interne
--    signal win : signed(9*16-1 downto 0);
--
--begin
--
--    process(clk)
--    begin
--        if rising_edge(clk) then
--            if rst = '1' then
--                x <= 0;
--                valid_out <= '0';
--            else
--
--                --------------------------------------------------------
--                -- SHIFT REGISTER 3 colonnes (col0 = ancienne, col2 = nouvelle)
--                --------------------------------------------------------
--                col0 <= col1;
--                col1 <= col2;
--                col2 <= pixel_in;
--
--                --------------------------------------------------------
--                -- Stockage dans les line buffers
--                --------------------------------------------------------
--                line1(x) <= col2;          -- ligne actuelle devient buffer 1
--                line2(x) <= line1(x);      -- buffer 1 devient buffer 2
--
--                --------------------------------------------------------
--                -- Construction de la fenêtre 3×3
--                --------------------------------------------------------
--                if x >= 2 then
--                    win(  15 downto   0) <= line2(x-2); -- R1C1
--                    win( 31 downto  16) <= line2(x-1); -- R1C2
--                    win( 47 downto  32) <= line2(x);   -- R1C3
--
--                    win( 63 downto  48) <= line1(x-2); -- R2C1
--                    win( 79 downto  64) <= line1(x-1); -- R2C2
--                    win( 95 downto  80) <= line1(x);   -- R2C3
--
--                    win(111 downto  96) <= col0;       -- R3C1
--                    win(127 downto 112) <= col1;       -- R3C2
--                    win(143 downto 128) <= col2;       -- R3C3
--
--                    valid_out <= '1';
--                else
--                    valid_out <= '0';
--                end if;
--
--                --------------------------------------------------------
--                -- Incrément x
--                --------------------------------------------------------
--                if x = WIDTH-1 then
--                    x <= 0;
--                else
--                    x <= x + 1;
--                end if;
--
--            end if;
--        end if;
--    end process;
--
--    pixel_out <= win;
--
--end architecture;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity line_buffer_3lines_simple is
    generic (
        WIDTH : integer := 4
    );
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        pixel_in  : in  signed(15 downto 0);
        pixel_out : out signed(9*16-1 downto 0); -- 144 bits
        valid_out : out std_logic
    );
end entity;

architecture rtl of line_buffer_3lines_simple is

    type line_type is array (0 to WIDTH-1) of signed(15 downto 0);

    signal line1, line2 : line_type := (others => (others => '0'));

    signal col0, col1, col2 : signed(15 downto 0) := (others => '0');

    signal x : integer range 0 to WIDTH-1 := 0;

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                x <= 0;
                valid_out <= '0';
                col0 <= (others => '0');
                col1 <= (others => '0');
                col2 <= (others => '0');
            else
                --------------------------------------------------
                -- Shift colonnes
                --------------------------------------------------
                col0 <= col1;
                col1 <= col2;
                col2 <= pixel_in;

                --------------------------------------------------
                -- Line buffers
                --------------------------------------------------
                line2(x) <= line1(x);
                line1(x) <= col2;

                --------------------------------------------------
                -- Fenêtre 3x3
                --------------------------------------------------
                if x >= 2 then
                    pixel_out <=
                        line2(x-2) & line2(x-1) & line2(x) &
                        line1(x-2) & line1(x-1) & line1(x) &
                        col0       & col1       & col2;
                    valid_out <= '1';
                else
                    valid_out <= '0';
                end if;

                --------------------------------------------------
                -- Avancement colonne
                --------------------------------------------------
                if x = WIDTH-1 then
                    x <= 0;
                else
                    x <= x + 1;
                end if;
            end if;
        end if;
    end process;

end architecture;
