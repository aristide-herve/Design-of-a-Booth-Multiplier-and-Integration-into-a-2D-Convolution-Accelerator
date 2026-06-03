
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;

entity tb_BoothMult is
end entity;

architecture sim of tb_BoothMult is

    signal A, B    : signed(15 downto 0);
    signal PRODUCT : signed(31 downto 0);

begin

    -- Instanciation du DUT
    DUT: entity work.BoothMult
        port map (
            A       => A,
            B       => B,
            PRODUCT => PRODUCT
        );

    -- Process de test
    process
    begin
        -- Test 1 : 0 * 0
        A <= to_signed(0,16);
        B <= to_signed(0,16);
        wait for 20 ns;

        -- Test 2 : 5 * 3 = 15
        A <= to_signed(5,16);
        B <= to_signed(3,16);
        wait for 20 ns;

        -- Test 3 : 2 * (-10) = -20
        A <= to_signed(2,16);
        B <= to_signed(-10,16);
        wait for 20 ns;
		  
		          -- Test 3 : 2 * (-10) = -20
        A <= to_signed(-2,16);
        B <= to_signed(10,16);
        wait for 20 ns;


        -- Test 4 : -7 * 4 = -28
        A <= to_signed(-7,16);
        B <= to_signed(4,16);
        wait for 20 ns;

        -- Test 5 : 32767 * 2 = 65534
        A <= to_signed(32767,16);
        B <= to_signed(2,16);
        wait for 20 ns;

        -- Test 6 : -32768 * (-1) = 32768
        A <= to_signed(-32768,16);
        B <= to_signed(-1,16);
        wait for 20 ns;

        -- Test 7 : 1234 * (-5678)
        A <= to_signed(1234,16);
        B <= to_signed(-5678,16);
        wait for 20 ns;

        -- Test 8 : 1 * (-1) = -1
        A <= to_signed(1,16);
        B <= to_signed(-1,16);
        wait for 20 ns;

        -- Test 9 : 1 * (-10) = -10
        A <= to_signed(1,16);
        B <= to_signed(-10,16);
        wait for 20 ns;

        -- Test 10 : 2 * (-25) = -50
        A <= to_signed(2,16);
        B <= to_signed(-25,16);
        wait for 20 ns;
		  


        -- Fin de simulation
        wait;
    end process;

end architecture;

