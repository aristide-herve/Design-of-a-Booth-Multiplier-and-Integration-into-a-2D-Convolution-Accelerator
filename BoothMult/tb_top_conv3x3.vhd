library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_top_conv3x3 is
end entity;

architecture sim of tb_top_conv3x3 is

    -- DUT signals
    signal clk       : std_logic := '0';
    signal rst_n     : std_logic := '0';
    signal pixel_in  : signed(15 downto 0) := (others=>'0');
    signal pixel_out : signed(31 downto 0);
    signal valid_out : std_logic := '0';
	 signal pixel_valid  : std_logic;


    constant CLK_PERIOD : time := 10 ns;

    -- Image 4×8 (gradient horizontal)
    type image_t is array (0 to 3, 0 to 7) of signed(15 downto 0);

    constant img : image_t := (
        (to_signed( 0,16), to_signed(10,16), to_signed(20,16), to_signed(30,16), to_signed(40,16), to_signed( 0,16), to_signed(10,16), to_signed(20,16)),
        (to_signed( 0,16), to_signed(10,16), to_signed(20,16), to_signed(30,16), to_signed(40,16), to_signed( 0,16), to_signed(10,16), to_signed(20,16)),
        (to_signed( 0,16), to_signed(10,16), to_signed(20,16), to_signed(30,16), to_signed(40,16), to_signed( 0,16), to_signed(10,16), to_signed(20,16)),
        (to_signed( 0,16), to_signed(10,16), to_signed(20,16), to_signed(30,16), to_signed(40,16), to_signed( 0,16), to_signed(10,16), to_signed(20,16))
    );

begin

    -- DUT
    DUT : entity work.top_conv3x3
        port map(
            clk       => clk,
            rst_n     => rst_n,
            pixel_in  => pixel_in,
            pixel_out => pixel_out,
            valid_out => valid_out,
				pixel_valid => pixel_valid
        );

    


clk_process : process
begin
    for i in 0 to 99 loop
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end loop;

    clk <= '0';
    wait;       
end process;

    
    -- Stimulus : envoyer l'image
    stim_proc : process
    begin
        -- Reset
        rst_n <= '0';
   	  pixel_valid <= '0';
       -- wait for CLK_PERIOD/2;
		 wait for 3*CLK_PERIOD;
        rst_n <= '1';
        wait until rising_edge(clk);

        -- Envoi image ligne par ligne
        for y in 0 to 3 loop
            for x in 0 to 7 loop
                pixel_in <= img(y,x);
					 pixel_valid <= '1';
                wait until rising_edge(clk);
            end loop;
        end loop;
		  
    -- Fin de flux
	 rst_n <= '0';
    pixel_valid <= '0';
    pixel_in <= (others => '0');

    wait; 
        wait;
    end process;

    
    -- Monitor : afficher les sorties valides
    
    monitor_proc : process(clk)
	 begin
        if rising_edge(clk) then
            if valid_out = '1' then
                report "PIXEL_OUT = " & integer'image(to_integer(pixel_out)) severity note;
            end if;
        end if;
    end process;

end architecture;

