library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity linebuf_window_3x3 is
  generic (
    IMG_WIDTH : integer := 8;
    PIXEL_W   : integer := 16
  );
  port (
    clk          : in  std_logic;
    rst_n        : in  std_logic;

    pixel_in     : in  signed(PIXEL_W-1 downto 0);
    pixel_valid  : in  std_logic;

    -- fenêtre 3×3
    w00, w01, w02 : out signed(PIXEL_W-1 downto 0);
    w10, w11, w12 : out signed(PIXEL_W-1 downto 0);
    w20, w21, w22 : out signed(PIXEL_W-1 downto 0);

    window_valid : out std_logic
  );
end entity;

architecture rtl of linebuf_window_3x3 is

  
  -- Line buffers (2 lignes précédentes)
  
  type line_mem_t is array (0 to IMG_WIDTH-1)
       of signed(PIXEL_W-1 downto 0);

  signal line0, line1 : line_mem_t;

  
  -- Compteurs en signed
  
  signal x_cnt : signed(31 downto 0);-- := (others=>'0');
  signal y_cnt : signed(31 downto 0);--:= (others=>'0');

  
  -- Registres fenêtre (signed)
  
  signal r00, r01, r02 : signed(PIXEL_W-1 downto 0);
  signal r10, r11, r12 : signed(PIXEL_W-1 downto 0);
  signal r20, r21, r22 : signed(PIXEL_W-1 downto 0);

  

  
  -- Constante signed
  
  constant TWO : signed(31 downto 0) := to_signed(2, 32);
  constant IMG_WIDTH_S : signed(31 downto 0) := to_signed(IMG_WIDTH, 32);

begin

  
  -- Process principal
  
  process(clk, rst_n)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then

        x_cnt <= (others=>'0');
        y_cnt <= (others=>'0');

        r00 <= (others=>'0'); r01 <= (others=>'0'); r02 <= (others=>'0');
        r10 <= (others=>'0'); r11 <= (others=>'0'); r12 <= (others=>'0');
        r20 <= (others=>'0'); r21 <= (others=>'0'); r22 <= (others=>'0');

        window_valid <= '0';

      elsif pixel_valid = '1' then

        
        -- Lecture line buffers
        
        r02 <= line1(to_integer(x_cnt));
        r12 <= line0(to_integer(x_cnt));
        r22 <= pixel_in;

        
        -- Décalage horizontal
        
        r00 <= r01; r01 <= r02;
        r10 <= r11; r11 <= r12;
        r20 <= r21; r21 <= r22;

        
        -- Écriture line buffers
        
        line1(to_integer(x_cnt)) <= line0(to_integer(x_cnt));
        line0(to_integer(x_cnt)) <= pixel_in;

        
        -- Compteurs
        
        if x_cnt = IMG_WIDTH_S-1 then
          x_cnt <= (others=>'0');
          y_cnt <= y_cnt + 1;
        else
          x_cnt <= x_cnt + 1;
        end if;
		  window_valid <= '0';
        
        -- Détection window_valid
        
        if pixel_valid='1' then 
		  
			if (x_cnt >= TWO) and (y_cnt >= TWO) then
          window_valid <= '1';
			 
			else 
          window_valid <= '0';    
			end if;

        end if;

      end if;
    end if;
  end process;



  
  -- Sorties fenêtre 3x3
  
  w00 <= r00; w01 <= r01; w02 <= r02;
  w10 <= r10; w11 <= r11; w12 <= r12;
  w20 <= r20; w21 <= r21; w22 <= r22;

end architecture;
