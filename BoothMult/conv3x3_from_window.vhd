library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity conv3x3_from_window is
    port (
        pixel_win : in signed(9*16-1 downto 0);

        k0 : in signed(15 downto 0);
        k1 : in signed(15 downto 0);
        k2 : in signed(15 downto 0);
        k3 : in signed(15 downto 0);
        k4 : in signed(15 downto 0);
        k5 : in signed(15 downto 0);
        k6: in signed(15 downto 0);
        k7 : in signed(15 downto 0);
        k8 : in signed(15 downto 0);

        Qout : out signed(31 downto 0)
    );
end entity;

architecture rtl of conv3x3_from_window is

    -- === Type + signal corrects ===
    type pixel_array is array(0 to 8) of signed(15 downto 0);
    signal p_arr : pixel_array;


begin
    p_arr(0) <= pixel_win( 15 downto  0);
    p_arr(1) <= pixel_win( 31 downto 16);
    p_arr(2) <= pixel_win( 47 downto 32);
    p_arr(3) <= pixel_win( 63 downto 48);
    p_arr(4) <= pixel_win( 79 downto 64);
    p_arr(5) <= pixel_win( 95 downto 80);
    p_arr(6) <= pixel_win(111 downto 96);
    p_arr(7) <= pixel_win(127 downto 112);
    p_arr(8) <= pixel_win(143 downto 128);

    core: entity work.conv3x3_core
        port map(
            p0 => p_arr(0),
            p1 => p_arr(1),
            p2 => p_arr(2),
            p3 => p_arr(3),
            p4 => p_arr(4),
            p5 => p_arr(5),
            p6 => p_arr(6),
            p7 => p_arr(7),
            p8 => p_arr(8),
            k0 => k0, k1 => k1, k2 => k2,
            k3 => k3, k4 => k4, k5 => k5,
            k6 => k6, k7 => k7, k8 => k8,
            Qout => Qout
        );

end architecture;
