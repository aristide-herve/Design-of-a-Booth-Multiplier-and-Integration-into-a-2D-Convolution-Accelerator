--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity top_conv3x3 is
--    port (
--        clk       : in  std_logic;
--        rst       : in  std_logic;
----        pixel_in  : in  signed(15 downto 0);
--		  pixel_in  : in  signed(15 downto 0);
--        pixel_out : out signed(31 downto 0)
--    );
--end entity;
--
--architecture structural of top_conv3x3 is
--
--    -- fenêtre 3x3 du line buffer
-- --   signal pixel_win : signed(9*16-1 downto 0);
--	  signal pixel_win : signed(9*16-1 downto 0);
--
--    -- sortie convolution SIGNÉE
--    signal conv_out : signed(31 downto 0);
--
--    -- Sobel horizontal (signé)
--    constant k00 : signed(15 downto 0) := to_signed( -1,16);
--    constant k01 : signed(15 downto 0) := to_signed( 0,16);
--    constant k02 : signed(15 downto 0) := to_signed( 1,16);
--
--    constant k10 : signed(15 downto 0) := to_signed(-2,16);
--    constant k11 : signed(15 downto 0) := to_signed( 0,16);
--    constant k12 : signed(15 downto 0) := to_signed( 2,16);
--
--    constant k20 : signed(15 downto 0) := to_signed(-1,16);
--    constant k21 : signed(15 downto 0) := to_signed( 0,16);
--    constant k22 : signed(15 downto 0) := to_signed( 1,16);
--
--begin
--
--    ----------------------------------------------------------------
--    -- LINE BUFFER
--    ----------------------------------------------------------------
--    LB : entity work.linebuf_window_3x3
--        port map(
--            clk       => clk,
--            rst_n       => rst,
--				pixel_in     : pixel_win
--            pixel_valid  : in  std_logic;
--				window_valid : out std_logic
--            w00 => k00, w01 => k01, w02 => k02,
--            w10 => k10, w11 => k11, w12 => k12,
--            w20 => k20, w21 => k21, w22 => k22,
--        );
--
--    ----------------------------------------------------------------
--    -- CONVOLUTION 3x3 (SIGNÉE)
--    ----------------------------------------------------------------
--    CONV : entity work.conv3x3_from_window
--        port map(
--            pixel_win => pixel_win,
--
--            k00 => k00, k01 => k01, k02 => k02,
--            k10 => k10, k11 => k11, k12 => k12,
--            k20 => k20, k21 => k21, k22 => k22,
--
--            Qout => conv_out
--        );
--
--    ----------------------------------------------------------------
--    -- SORTIE
--    ----------------------------------------------------------------
--    pixel_out <= conv_out;
--
--end architecture;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_conv3x3 is
    port (
        clk       : in  std_logic;
        rst_n     : in  std_logic;
        pixel_in  : in  signed(15 downto 0);
        pixel_out : out signed(31 downto 0);
        valid_out : out std_logic;
		  pixel_valid  : in  std_logiC
    );
end entity;

architecture structural of top_conv3x3 is

    ----------------------------------------------------------------
    -- Fenêtre 3×3 signée
    ----------------------------------------------------------------
    signal w00, w01, w02 : signed(15 downto 0);
    signal w10, w11, w12 : signed(15 downto 0);
    signal w20, w21, w22 : signed(15 downto 0);

    signal window_valid : std_logic;
    signal conv_out    : signed(31 downto 0);
	-- signal pixel_valid  : std_logic;


    ----------------------------------------------------------------
    -- Sobel horizontal (signed)
    ----------------------------------------------------------------
    constant k00 : signed(15 downto 0) := to_signed(-1,16);
    constant k01 : signed(15 downto 0) := to_signed( 0,16);
    constant k02 : signed(15 downto 0) := to_signed( 1,16);

    constant k10 : signed(15 downto 0) := to_signed(-2,16);
    constant k11 : signed(15 downto 0) := to_signed( 0,16);
    constant k12 : signed(15 downto 0) := to_signed( 2,16);

    constant k20 : signed(15 downto 0) := to_signed(-1,16);
    constant k21 : signed(15 downto 0) := to_signed( 0,16);
    constant k22 : signed(15 downto 0) := to_signed( 1,16);

begin

    ----------------------------------------------------------------
    -- LINE BUFFER SIGNÉ
    ----------------------------------------------------------------
    LB : entity work.linebuf_window_3x3
        generic map(
            IMG_WIDTH => 8,
            PIXEL_W   => 16
        )
        port map(
            clk          => clk,
            rst_n        => rst_n,
            pixel_in     => pixel_in,
            pixel_valid  =>  pixel_valid,
			--	pixel_valid  =>  '1',

            w00 => w00, w01 => w01, w02 => w02,
            w10 => w10, w11 => w11, w12 => w12,
            w20 => w20, w21 => w21, w22 => w22,
            window_valid => window_valid
        );

    ----------------------------------------------------------------
    -- CONVOLUTION 3×3
    ----------------------------------------------------------------
    CONV : entity work.conv3x3_core
        port map(
            p00 => w00, p01 => w01, p02 => w02,
            p10 => w10, p11 => w11, p12 => w12,
            p20 => w20, p21 => w21, p22 => w22,

            k00 => k00, k01 => k01, k02 => k02,
            k10 => k10, k11 => k11, k12 => k12,
            k20 => k20, k21 => k21, k22 => k22,

            Qout => conv_out
        );

    ----------------------------------------------------------------
    -- SORTIES
    ----------------------------------------------------------------
    pixel_out <= conv_out;
    valid_out <= window_valid;

end architecture;

