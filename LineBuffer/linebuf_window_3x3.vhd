library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity linebuf_window_3x3 is
  generic (
    IMG_WIDTH : integer := 1920;
    PIXEL_W   : integer := 8
  );
  port (
    clk          : in  std_logic;
    rst_n        : in  std_logic;

    pixel_in     : in  std_logic_vector(PIXEL_W-1 downto 0);
    pixel_valid  : in  std_logic;

    -- fenêtre 3×3
    w00, w01, w02 : out std_logic_vector(PIXEL_W-1 downto 0);
    w10, w11, w12 : out std_logic_vector(PIXEL_W-1 downto 0);
    w20, w21, w22 : out std_logic_vector(PIXEL_W-1 downto 0);

    window_valid : out std_logic
  );
end entity;
architecture rtl of linebuf_window_3x3 is

  -- Line buffers (modélisation SRAM)
  type line_mem_t is array (0 to IMG_WIDTH-1)
       of std_logic_vector(PIXEL_W-1 downto 0);

  signal line0, line1 : line_mem_t;

  signal x_cnt : integer range 0 to IMG_WIDTH-1 := 0;
  signal y_cnt : integer := 0;

  -- Registres fenêtre
  signal r00, r01, r02 : std_logic_vector(PIXEL_W-1 downto 0);
  signal r10, r11, r12 : std_logic_vector(PIXEL_W-1 downto 0);
  signal r20, r21, r22 : std_logic_vector(PIXEL_W-1 downto 0);

begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        x_cnt <= 0;
        y_cnt <= 0;

        r00 <= (others=>'0'); r01 <= (others=>'0'); r02 <= (others=>'0');
        r10 <= (others=>'0'); r11 <= (others=>'0'); r12 <= (others=>'0');
        r20 <= (others=>'0'); r21 <= (others=>'0'); r22 <= (others=>'0');

      elsif pixel_valid = '1' then

        -- Lecture line buffers
        -- NB: lecture "combinatoire" modélisée, OK pour simulation
        -- en ASIC réel → SRAM 1R1W avec 1 cycle de latence
        r02 <= line1(x_cnt);
        r12 <= line0(x_cnt);
        r22 <= pixel_in;

        -- Décalage horizontal
        r00 <= r01; r01 <= r02;
        r10 <= r11; r11 <= r12;
        r20 <= r21; r21 <= r22;

        -- Écriture line buffers
        line1(x_cnt) <= line0(x_cnt);
        line0(x_cnt) <= pixel_in;

        -- Compteurs
        if x_cnt = IMG_WIDTH-1 then
          x_cnt <= 0;
          y_cnt <= y_cnt + 1;
        else
          x_cnt <= x_cnt + 1;
        end if;
		  
		if (x_cnt >= 2 and y_cnt >= 2) then 
		window_valid <= '1' ;
		else window_valid <= '0' ;
		end if;


      end if;
    end if;
  end process;
	--window_valid <= '1' when (x_cnt >= 2 and y_cnt >= 2) else '0';

  w00 <= r00; w01 <= r01; w02 <= r02;
  w10 <= r10; w11 <= r11; w12 <= r12;
  w20 <= r20; w21 <= r21; w22 <= r22;

end architecture;




--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity linebuf_window_3x3 is
--  generic (
--    IMG_WIDTH : integer := 8;  -- largeur image (modifiable)
--    PIXEL_W   : integer := 8   -- largeur pixel
--  );
--  port (
--    clk          : in  std_logic;
--    rst_n        : in  std_logic;
--
--    pixel_in     : in  std_logic_vector(PIXEL_W-1 downto 0);
--    pixel_valid  : in  std_logic;
--
--    -- Fenêtre 3×3
--    w00, w01, w02 : out std_logic_vector(PIXEL_W-1 downto 0);
--    w10, w11, w12 : out std_logic_vector(PIXEL_W-1 downto 0);
--    w20, w21, w22 : out std_logic_vector(PIXEL_W-1 downto 0);
--
--    window_valid : out std_logic
--  );
--end entity;
--
--architecture rtl of linebuf_window_3x3 is
--
--  --------------------------------------------------------------------
--  -- Line buffers (2 lignes précédentes)
--  --------------------------------------------------------------------
--  type line_mem_t is array (0 to IMG_WIDTH-1)
--       of std_logic_vector(PIXEL_W-1 downto 0);
--
--  signal line0, line1 : line_mem_t;
--
--  --------------------------------------------------------------------
--  -- Compteurs
--  --------------------------------------------------------------------
--  signal x_cnt         : integer range 0 to IMG_WIDTH-1 := 0;
--  signal pixel_count   : integer := 0;
--  signal validity_count: integer := 0;
--
--  --------------------------------------------------------------------
--  -- Registres fenêtre
--  --------------------------------------------------------------------
--  signal r00, r01, r02 : std_logic_vector(PIXEL_W-1 downto 0);
--  signal r10, r11, r12 : std_logic_vector(PIXEL_W-1 downto 0);
--  signal r20, r21, r22 : std_logic_vector(PIXEL_W-1 downto 0);
--
--  --------------------------------------------------------------------
--  -- Signal interne pour window_valid
--  --------------------------------------------------------------------
--  signal window_valid_int : std_logic;
--
--begin
--
--  --------------------------------------------------------------------
--  -- Calcul interne de window_valid (combinatoire)
--  --------------------------------------------------------------------
--  window_valid_int <= '1' when
--    (pixel_count > (2*IMG_WIDTH + 2)) and 
--    (pixel_valid = '1') and
--    (validity_count < (IMG_WIDTH-2))
--  else '0';
--
--  -- Sortie finale
--  window_valid <= window_valid_int;
--
--  --------------------------------------------------------------------
--  -- Process principal
--  --------------------------------------------------------------------
--  process(clk)
--  begin
--    if rising_edge(clk) then
--      if rst_n = '0' then
--
--        x_cnt          <= 0;
--        pixel_count    <= 0;
--        validity_count <= 0;
--
--        r00 <= (others=>'0'); r01 <= (others=>'0'); r02 <= (others=>'0');
--        r10 <= (others=>'0'); r11 <= (others=>'0'); r12 <= (others=>'0');
--        r20 <= (others=>'0'); r21 <= (others=>'0'); r22 <= (others=>'0');
--
--      elsif pixel_valid = '1' then
--
--        ----------------------------------------------------------------
--        -- Lecture des line buffers
--        ----------------------------------------------------------------
--        r02 <= line1(x_cnt);
--        r12 <= line0(x_cnt);
--        r22 <= pixel_in;
--
--        ----------------------------------------------------------------
--        -- Décalage horizontal
--        ----------------------------------------------------------------
--        r00 <= r01;  r01 <= r02;
--        r10 <= r11;  r11 <= r12;
--        r20 <= r21;  r21 <= r22;
--
--        ----------------------------------------------------------------
--        -- Écriture des line buffers
--        ----------------------------------------------------------------
--        line1(x_cnt) <= line0(x_cnt);
--        line0(x_cnt) <= pixel_in;
--
--        ----------------------------------------------------------------
--        -- Compteurs
--        ----------------------------------------------------------------
--        -- Réinitialisation de validity_count si window_valid_int = 1
--        if window_valid_int = '1' then
--            validity_count <= 0;
--        elsif validity_count < (IMG_WIDTH-1) then
--            validity_count <= validity_count + 1;
--        end if;
--
--        -- Pixel_count
--        pixel_count <= pixel_count + 1;
--
--        -- Compteur horizontal
--        if x_cnt = IMG_WIDTH-1 then
--            x_cnt <= 0;
--        else
--            x_cnt <= x_cnt + 1;
--        end if;
--
--      end if;
--    end if;
--  end process;
--
--  --------------------------------------------------------------------
--  -- Sorties fenêtre 3x3
--  --------------------------------------------------------------------
--  w00 <= r00;  w01 <= r01;  w02 <= r02;
--  w10 <= r10;  w11 <= r11;  w12 <= r12;
--  w20 <= r20;  w21 <= r21;  w22 <= r22;
--
--end architecture;
