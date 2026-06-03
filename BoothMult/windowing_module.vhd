library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity windowing_module is
    port (
        clk              : in  std_logic;
        rst              : in  std_logic;
        image_data       : in  signed(15 downto 0);
        pixel_window     : out signed(143 downto 0);
        kernel_constants : out signed(143 downto 0)
    );
end entity;

architecture rtl of windowing_module is

    constant WIDTH  : integer := 4;

    type line_type is array (0 to WIDTH-1) of signed(15 downto 0);
    signal line1, line2 : line_type := (others => (others => '0'));

    signal col0, col1, col2 : signed(15 downto 0) := (others => '0');
    signal x : integer range 0 to WIDTH := 0;
    signal win : signed(143 downto 0);

    -- Déclaration type kernel compatible Quartus
    type kernel_row is array (0 to 2) of signed(15 downto 0);
    type kernel_type is array (0 to 2) of kernel_row;
    signal kernel : kernel_type := (
        (to_signed(1,16), to_signed(2,16), to_signed(3,16)),
        (to_signed(4,16), to_signed(5,16), to_signed(6,16)),
        (to_signed(7,16), to_signed(8,16), to_signed(9,16))
    );

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                x <= 0;
                line1 <= (others => (others => '0'));
                line2 <= (others => (others => '0'));
                col0 <= (others => '0');
                col1 <= (others => '0');
                col2 <= (others => '0');
                win  <= (others => '0');
            else
                col0 <= col1;
                col1 <= col2;
                col2 <= image_data;

                line2(x) <= line1(x);
                line1(x) <= col2;

                if x >= 2 then
                    win( 15 downto   0) <= line2(x-2);
                    win( 31 downto  16) <= line2(x-1);
                    win( 47 downto  32) <= line2(x);

                    win( 63 downto  48) <= line1(x-2);
                    win( 79 downto  64) <= line1(x-1);
                    win( 95 downto  80) <= line1(x);

                    win(111 downto  96) <= col0;
                    win(127 downto 112) <= col1;
                    win(143 downto 128) <= col2;
                end if;

                if x = WIDTH-1 then
                    x <= 0;
                else
                    x <= x + 1;
                end if;
            end if;
        end if;
    end process;

    pixel_window     <= win;
    kernel_constants <= kernel(0)(0) & kernel(0)(1) & kernel(0)(2) &
                        kernel(1)(0) & kernel(1)(1) & kernel(1)(2) &
                        kernel(2)(0) & kernel(2)(1) & kernel(2)(2);

end architecture;
