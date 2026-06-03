--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity tb_conv3x3_core is
--end entity;
--
--architecture sim of tb_conv3x3_core is
--
--    -- DUT ports
--    signal p00,p01,p02 : std_logic_vector(15 downto 0);
--    signal p10,p11,p12 : std_logic_vector(15 downto 0);
--    signal p20,p21,p22 : std_logic_vector(15 downto 0);
--
--    signal k00,k01,k02 : std_logic_vector(15 downto 0);
--    signal k10,k11,k12 : std_logic_vector(15 downto 0);
--    signal k20,k21,k22 : std_logic_vector(15 downto 0);
--
--    signal Qout : std_logic_vector(31 downto 0);
--
--begin
--
--    -------------------------------------------------------------------
--    -- Device under test  
--    -------------------------------------------------------------------
--    DUT: entity work.conv3x3_core
--        port map(
--            p00 => p00, p01 => p01, p02 => p02,
--            p10 => p10, p11 => p11, p12 => p12,
--            p20 => p20, p21 => p21, p22 => p22,
--            k00 => k00, k01 => k01, k02 => k02,
--            k10 => k10, k11 => k11, k12 => k12,
--            k20 => k20, k21 => k21, k22 => k22,
--            Qout => Qout
--        );
--
--    -------------------------------------------------------------------
--    -- Stimulus
--    -------------------------------------------------------------------
--    process
--        variable ref : integer;
--    begin
--
--        report "=== TEST 1 : convolution Sobel horizontale ===";
--
--        -- Pixels
--        p00 <= x"0001"; p01 <= x"0002"; p02 <= x"0003";
--        p10 <= x"0004"; p11 <= x"0005"; p12 <= x"0006";
--        p20 <= x"0007"; p21 <= x"0008"; p22 <= x"0009";
--
--        -- Sobel horizontal
--        k00 <= x"FFFF";  -- -1
--        k01 <= x"0000";
--        k02 <= x"0001";  -- +1
--        k10 <= x"FFFE";  -- -2
--        k11 <= x"0000";
--        k12 <= x"0002";  -- +2
--        k20 <= x"FFFF";  -- -1
--        k21 <= x"0000";
--        k22 <= x"0001";
--
--        wait for 20 ns;
--
--        ref := (-1)*1 + 0*2 + (1)*3 +
--               (-2)*4 + 0*5 + (2)*6 +
--               (-1)*7 + 0*8 + (1)*9;
--
--        report "Qout (HW)  = " & integer'image(to_integer(signed(Qout)));
--        report "Qout (REF) = " & integer'image(ref);
--
--        -------------------------------------------------------------------
--        report "=== TEST 2 : noyau identité ===";
--        -------------------------------------------------------------------
--
--		  p00 <= std_logic_vector(to_signed(10,16));
--		  p01 <= std_logic_vector(to_signed(10,16));
--		  p02 <= std_logic_vector(to_signed(10,16));
--		  p10 <= std_logic_vector(to_signed(10,16));
--		  p11 <= std_logic_vector(to_signed(10,16));
--		  p12 <= std_logic_vector(to_signed(10,16));
--		  p20 <= std_logic_vector(to_signed(10,16));
--		  p21 <= std_logic_vector(to_signed(10,16));
--		  p22 <= std_logic_vector(to_signed(10,16));
--
--
--        k00 <= x"0000"; k01 <= x"0000"; k02 <= x"0000";
--        k10 <= x"0000"; k11 <= x"0001"; k12 <= x"0000";
--        k20 <= x"0000"; k21 <= x"0000"; k22 <= x"0000";
--
--        wait for 20 ns;
--
--        report "Qout (IDENTITE) = " &
--            integer'image(to_integer(signed(Qout)));
--
--        report "=== FIN SIMULATION ===";
--        wait;
--    end process;
--
--end architecture sim;

-- tb_conv3x3_core_fixed.vhd
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity tb_conv3x3_core is
--end entity;
--
--architecture sim of tb_conv3x3_core is
--
--    -- DUT ports / stimulus
--    signal p00,p01,p02 : std_logic_vector(15 downto 0);
--    signal p10,p11,p12 : std_logic_vector(15 downto 0);
--    signal p20,p21,p22 : std_logic_vector(15 downto 0);
--
--    signal k00,k01,k02 : std_logic_vector(15 downto 0);
--    signal k10,k11,k12 : std_logic_vector(15 downto 0);
--    signal k20,k21,k22 : std_logic_vector(15 downto 0);
--
--    signal Qout : std_logic_vector(31 downto 0);
--
--    -- For debug we will instantiate conv3x3_core_debug if present,
--    -- otherwise we still print Qout. (This TB expects conv3x3_core to be compiled.)
--begin
--
--    -- Instantiate the DUT (no work.)
--    DUT: entity work.conv3x3_core
--        port map(
--            p00 => p00, p01 => p01, p02 => p02,
--            p10 => p10, p11 => p11, p12 => p12,
--            p20 => p20, p21 => p21, p22 => p22,
--            k00 => k00, k01 => k01, k02 => k02,
--            k10 => k10, k11 => k11, k12 => k12,
--            k20 => k20, k21 => k21, k22 => k22,
--            Qout => Qout
--        );
--
--    -------------------------------------------------------------------
--    -- Stimulus
--    -------------------------------------------------------------------
--    process
--        variable ref : integer;
--    begin
--        -- Small delay to let simulator settle
--       -- wait for 10 ns;
--
--        -------------------------------------------------------------------
--        -- TEST 1 : Sobel horizontal with all pixels = 10
--        -- Expected result = 0
--        -------------------------------------------------------------------
--        p00 <= std_logic_vector(to_signed(10,16));
--        p01 <= std_logic_vector(to_signed(10,16));
--        p02 <= std_logic_vector(to_signed(10,16));
--        p10 <= std_logic_vector(to_signed(10,16));
--        p11 <= std_logic_vector(to_signed(10,16));
--        p12 <= std_logic_vector(to_signed(10,16));
--        p20 <= std_logic_vector(to_signed(10,16));
--        p21 <= std_logic_vector(to_signed(10,16));
--        p22 <= std_logic_vector(to_signed(10,16));
--
--        -- Sobel horizontal Gx
--        k00 <= std_logic_vector(to_signed(-1,16));
--        k01 <= std_logic_vector(to_signed( 0,16));
--        k02 <= std_logic_vector(to_signed( 1,16));
--        k10 <= std_logic_vector(to_signed(-2,16));
--        k11 <= std_logic_vector(to_signed( 0,16));
--        k12 <= std_logic_vector(to_signed( 2,16)); -- CORRECTED: +2
--        k20 <= std_logic_vector(to_signed(-1,16));
--        k21 <= std_logic_vector(to_signed( 0,16));
--        k22 <= std_logic_vector(to_signed( 1,16));
--
--        wait for 30 ns;  -- allow combinatorial outputs to settle
--
--        -- compute reference
--        ref := ( -1 + 0 + 1 -2 + 0 + 2 -1 + 0 + 1 ) * 10; -- = 0
--
--        report "---- TEST 1 ----";
--        report "Qout (HW) = " & integer'image(to_integer(signed(Qout)));
--        report "Qout (REF)= " & integer'image(ref);
--
--        if signed(Qout) /= to_signed(ref,32) then
--            report "ERROR: mismatch TEST 1" severity error;
--        else
--            report "OK: TEST 1" severity note;
--        end if;
--
--        -------------------------------------------------------------------
--        -- TEST 2 : identity kernel, all pixels = 10 -> expect 10
--        -------------------------------------------------------------------
--        p00 <= std_logic_vector(to_signed(10,16));
--        p01 <= std_logic_vector(to_signed(10,16));
--        p02 <= std_logic_vector(to_signed(10,16));
--        p10 <= std_logic_vector(to_signed(10,16));
--        p11 <= std_logic_vector(to_signed(10,16));
--        p12 <= std_logic_vector(to_signed(10,16));
--        p20 <= std_logic_vector(to_signed(10,16));
--        p21 <= std_logic_vector(to_signed(10,16));
--        p22 <= std_logic_vector(to_signed(10,16));
--
--        k00 <= std_logic_vector(to_signed(0,16));
--        k01 <= std_logic_vector(to_signed(0,16));
--        k02 <= std_logic_vector(to_signed(0,16));
--        k10 <= std_logic_vector(to_signed(0,16));
--        k11 <= std_logic_vector(to_signed(1,16)); -- center = 1
--        k12 <= std_logic_vector(to_signed(0,16));
--        k20 <= std_logic_vector(to_signed(0,16));
--        k21 <= std_logic_vector(to_signed(0,16));
--        k22 <= std_logic_vector(to_signed(0,16));
--
--        wait for 30 ns;
--
--        report "---- TEST 2 ----";
--        report "Qout = " & integer'image(to_integer(signed(Qout)));
--        if signed(Qout) /= to_signed(10,32) then
--            report "ERROR: mismatch TEST 2" severity error;
--        else
--            report "OK: TEST 2" severity note;
--        end if;
--
--        report "END TESTBENCH";
--        wait;
--    end process;
--
--end architecture;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_conv3x3_core is
end entity;

architecture sim of tb_conv3x3_core is

    ----------------------------------------------------------------
    -- DUT ports / stimulus (SIGNED)
    ----------------------------------------------------------------
    signal p00,p01,p02 : signed(15 downto 0);
    signal p10,p11,p12 : signed(15 downto 0);
    signal p20,p21,p22 : signed(15 downto 0);

    signal k00,k01,k02 : signed(15 downto 0);
    signal k10,k11,k12 : signed(15 downto 0);
    signal k20,k21,k22 : signed(15 downto 0);

    signal Qout : signed(31 downto 0);

begin

    ----------------------------------------------------------------
    -- DUT
    ----------------------------------------------------------------
    DUT: entity work.conv3x3_core
        port map(
            p00 => p00, p01 => p01, p02 => p02,
            p10 => p10, p11 => p11, p12 => p12,
            p20 => p20, p21 => p21, p22 => p22,
            k00 => k00, k01 => k01, k02 => k02,
            k10 => k10, k11 => k11, k12 => k12,
            k20 => k20, k21 => k21, k22 => k22,
            Qout => Qout
        );

    ----------------------------------------------------------------
    -- Stimulus
    ----------------------------------------------------------------
    process
        variable ref : integer;
    begin

        ----------------------------------------------------------------
        -- TEST 1 : Sobel horizontal, pixels = 10 → résultat attendu = 0
        ----------------------------------------------------------------
        p00 <= to_signed(10,16);
        p01 <= to_signed(10,16);
        p02 <= to_signed(10,16);
        p10 <= to_signed(10,16);
        p11 <= to_signed(10,16);
        p12 <= to_signed(10,16);
        p20 <= to_signed(10,16);
        p21 <= to_signed(10,16);
        p22 <= to_signed(10,16);

        -- Sobel horizontal Gx
        k00 <= to_signed(-1,16);
        k01 <= to_signed( 0,16);
        k02 <= to_signed( 1,16);
        k10 <= to_signed(-2,16);
        k11 <= to_signed( 0,16);
        k12 <= to_signed( 2,16);
        k20 <= to_signed(-1,16);
        k21 <= to_signed( 0,16);
        k22 <= to_signed( 1,16);

        wait for 30 ns;

        ref := ( -1 + 0 + 1 -2 + 0 + 2 -1 + 0 + 1 ) * 10;

        report "---- TEST 1 ----";
        report "Qout (HW)  = " & integer'image(to_integer(Qout));
        report "Qout (REF) = " & integer'image(ref);

        if Qout /= to_signed(ref,32) then
            report "ERROR: mismatch TEST 1" severity error;
        else
            report "OK: TEST 1" severity note;
        end if;

        ----------------------------------------------------------------
        -- TEST 2 : noyau identité → résultat attendu = 10
        ----------------------------------------------------------------
        p00 <= to_signed(10,16);
        p01 <= to_signed(10,16);
        p02 <= to_signed(10,16);
        p10 <= to_signed(10,16);
        p11 <= to_signed(10,16);
        p12 <= to_signed(10,16);
        p20 <= to_signed(10,16);
        p21 <= to_signed(10,16);
        p22 <= to_signed(10,16);

        k00 <= to_signed(0,16);
        k01 <= to_signed(0,16);
        k02 <= to_signed(0,16);
        k10 <= to_signed(0,16);
        k11 <= to_signed(1,16);
        k12 <= to_signed(0,16);
        k20 <= to_signed(0,16);
        k21 <= to_signed(0,16);
        k22 <= to_signed(0,16);

        wait for 30 ns;

        report "---- TEST 2 ----";
        report "Qout (HW) = " & integer'image(to_integer(Qout));

        if Qout /= to_signed(10,32) then
            report "ERROR: mismatch TEST 2" severity error;
        else
            report "OK: TEST 2" severity note;
        end if;
		  
		  
		  
		  ----------------------------------------------------------------
        -- TEST 3 : noyau identité → résultat attendu = 10
        ----------------------------------------------------------------
        p00 <= to_signed(-10,16);
        p01 <= to_signed(-10,16);
        p02 <= to_signed(-10,16);
        p10 <= to_signed(-10,16);
        p11 <= to_signed(-10,16);
        p12 <= to_signed(-10,16);
        p20 <= to_signed(-10,16);
        p21 <= to_signed(-10,16);
        p22 <= to_signed(-10,16);

        k00 <= to_signed(0,16);
        k01 <= to_signed(0,16);
        k02 <= to_signed(0,16);
        k10 <= to_signed(0,16);
        k11 <= to_signed(-2,16);
        k12 <= to_signed(0,16);
        k20 <= to_signed(0,16);
        k21 <= to_signed(0,16);
        k22 <= to_signed(0,16);

        wait for 30 ns;

        report "---- TEST 3 ----";
        report "Qout (HW) = " & integer'image(to_integer(Qout));

        if Qout /= to_signed(20,32) then
            report "ERROR: mismatch TEST 3" severity error;
        else
            report "OK: TEST 3" severity note;
        end if;

        ----------------------------------------------------------------
        report "END TESTBENCH";
        wait;
    end process;

end architecture;



