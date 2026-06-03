--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity tb_line_buffer_3lines_simple is
--end entity;
--
--architecture sim of tb_line_buffer_3lines_simple is
--
--    constant WIDTH : integer := 3;
--
--    signal clk       : std_logic := '0';
--    signal rst       : std_logic := '1';
--    signal pixel_in  : signed(15 downto 0) := (others => '0');
--    signal pixel_out : signed(143 downto 0);
--    signal valid_out : std_logic;
--
--    constant clk_period : time := 10 ns;
--
--    -- Image test 3x3 (aplatie ligne par ligne)
--    type img_t is array (0 to 8) of integer;
--    constant img : img_t := (
--        1, 2, 3,
--        4, 5, 6,
--        7, 8, 9
--    );
--
--begin
--
--    --------------------------------------------------------------------
--    -- Génération horloge
--    --------------------------------------------------------------------
--	 
--		horloge : process
--		BEGIN
--			clk <= '1';
--			for i in 0 to 1000 loop
--				wait for 20 ns;
--				clk <= not clk;
--			end loop;
--		WAIT;
--	   end process horloge; 
--
--    --------------------------------------------------------------------
--    -- DUT
--    --------------------------------------------------------------------
--    DUT : entity work.line_buffer_3lines_simple
--        generic map (
--            WIDTH => WIDTH
--        )
--        port map (
--            clk       => clk,
--            rst       => rst,
--            pixel_in  => pixel_in,
--            pixel_out => pixel_out,
--            valid_out => valid_out
--        );
--
--    --------------------------------------------------------------------
--    -- Stimulus pixels (SYNCHRONE)
--    --------------------------------------------------------------------
--    stimulus : process
--    begin
--        -- reset
--        rst <= '1';
--        wait until rising_edge(clk);
--        rst <= '0';
--
--        -- injection pixels
--        for i in 0 to img'length-1 loop
--            wait until rising_edge(clk);
--            pixel_in <= to_signed(img(i), 16);
--        end loop;
--
--        -- attendre un peu
--        wait for 50 ns;
--        report "FIN DE SIMULATION" severity note;
--        wait;
--    end process;
--
--    --------------------------------------------------------------------
--    -- Affichage de la fenêtre 3x3
--    --------------------------------------------------------------------
--    monitor : process(clk)
--    begin
--        if rising_edge(clk) then
--            if valid_out = '1' then
--                report
--                    "WINDOW = "
--                    & integer'image(to_integer(pixel_out( 15 downto   0))) & " "
--                    & integer'image(to_integer(pixel_out( 31 downto  16))) & " "
--                    & integer'image(to_integer(pixel_out( 47 downto  32))) & " | "
--                    & integer'image(to_integer(pixel_out( 63 downto  48))) & " "
--                    & integer'image(to_integer(pixel_out( 79 downto  64))) & " "
--                    & integer'image(to_integer(pixel_out( 95 downto  80))) & " | "
--                    & integer'image(to_integer(pixel_out(111 downto  96))) & " "
--                    & integer'image(to_integer(pixel_out(127 downto 112))) & " "
--                    & integer'image(to_integer(pixel_out(143 downto 128)));
--            end if;
--        end if;
--    end process;
--
--end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_line_buffer_3lines_simple is
end entity;

architecture tb of tb_line_buffer_3lines_simple is

    constant CLK_PERIOD : time := 10 ns;

    signal clk          : std_logic := '0';
    signal rst          : std_logic := '1';
    signal pixel_in   : signed(15 downto 0);
    signal pixel_out : signed(9*16-1 downto 0);
    signal valid_out    : std_logic;

begin

    --------------------------------------------------
    -- Instance du DUT
    --------------------------------------------------
    dut : entity work.line_buffer_3lines_simple
        generic map (
            WIDTH => 4
        )
        port map (
            clk          => clk,
            rst          => rst,
            pixel_in   => pixel_in,
            pixel_out => pixel_out,
            valid_out    => valid_out
        );

    --------------------------------------------------
    -- Génération de l'horloge
    --------------------------------------------------
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

    --------------------------------------------------
    -- Stimulus
    --------------------------------------------------
    stim_process : process
        type image_array is array (0 to 15) of integer;
        constant image : image_array :=
            ( 1,  2,  3,  4,
              5,  6,  7,  8,
              9, 10, 11, 12,
             13, 14, 15, 16 );
    begin
        --------------------------------------------------
        -- Reset
        --------------------------------------------------
        rst <= '1';
        pixel_in <= (others => '0');
        wait for 3*CLK_PERIOD;
        rst <= '0';

        --------------------------------------------------
        -- Envoi des pixels
        --------------------------------------------------
        for i in 0 to 15 loop
            pixel_in <= to_signed(image(i), 16);
            wait for CLK_PERIOD ;
        end loop;
		  


        --------------------------------------------------
        -- Fin simulation
        --------------------------------------------------
        wait for 100*CLK_PERIOD;
        assert false report "FIN DE SIMULATION" severity failure;
    end process;
	 
	 
	 		  --    --------------------------------------------------------------------
    -- Affichage de la fenêtre 3x3
    --------------------------------------------------------------------
    monitor : process(clk)
    begin
        if rising_edge(clk) then
            if valid_out = '1' then
                report
                    "WINDOW = "
                    & integer'image(to_integer(pixel_out( 15 downto   0))) & " "
                    & integer'image(to_integer(pixel_out( 31 downto  16))) & " "
                    & integer'image(to_integer(pixel_out( 47 downto  32))) & " | "
                    & integer'image(to_integer(pixel_out( 63 downto  48))) & " "
                    & integer'image(to_integer(pixel_out( 79 downto  64))) & " "
                    & integer'image(to_integer(pixel_out( 95 downto  80))) & " | "
                    & integer'image(to_integer(pixel_out(111 downto  96))) & " "
                    & integer'image(to_integer(pixel_out(127 downto 112))) & " "
                    & integer'image(to_integer(pixel_out(143 downto 128)));
            end if;
        end if;
    end process;

end architecture;
