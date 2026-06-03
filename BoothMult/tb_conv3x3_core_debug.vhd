library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_conv3x3_core_debug is
end entity;

architecture sim of tb_conv3x3_core_debug is

    -- DUT ports / stimulus
    signal p00,p01,p02 : std_logic_vector(15 downto 0);
    signal p10,p11,p12 : std_logic_vector(15 downto 0);
    signal p20,p21,p22 : std_logic_vector(15 downto 0);

    signal k00,k01,k02 : std_logic_vector(15 downto 0);
    signal k10,k11,k12 : std_logic_vector(15 downto 0);
    signal k20,k21,k22 : std_logic_vector(15 downto 0);

    signal Qout : std_logic_vector(31 downto 0);

    -- debug outputs from DUT
    signal P0,P1,P2,P3,P4,P5,P6,P7,P8 : std_logic_vector(31 downto 0);
    signal S0,S1,S2,S3,S4,S5 : std_logic_vector(31 downto 0);
    signal C0,C1,C2,C3,C4,C5 : std_logic_vector(31 downto 0);
    signal T0 : std_logic_vector(31 downto 0);

begin

    -- instantiate DUT 
    DUT: entity work.conv3x3_core_debug
        port map(
            p00 => p00, p01 => p01, p02 => p02,
            p10 => p10, p11 => p11, p12 => p12,
            p20 => p20, p21 => p21, p22 => p22,
            k00 => k00, k01 => k01, k02 => k02,
            k10 => k10, k11 => k11, k12 => k12,
            k20 => k20, k21 => k21, k22 => k22,
            Qout => Qout,

            -- debug outputs
            P0_out => P0, P1_out => P1, P2_out => P2,
            P3_out => P3, P4_out => P4, P5_out => P5,
            P6_out => P6, P7_out => P7, P8_out => P8,

            S0_out => S0, S1_out => S1, S2_out => S2,
            S3_out => S3, S4_out => S4, S5_out => S5,

            C0_out => C0, C1_out => C1, C2_out => C2,
            C3_out => C3, C4_out => C4, C5_out => C5,

            T0_out => T0
        );

    -------------------------------------------------------------------
    -- Stimulus / tests
    -------------------------------------------------------------------
    process
        variable ref : integer;
    begin
        -- TEST A : Sobel horizontal but with all pixels=10 (expected result = 0)
        p00 <= std_logic_vector(to_signed(10,16));
        p01 <= std_logic_vector(to_signed(10,16));
        p02 <= std_logic_vector(to_signed(10,16));
        p10 <= std_logic_vector(to_signed(10,16));
        p11 <= std_logic_vector(to_signed(10,16));
        p12 <= std_logic_vector(to_signed(10,16));
        p20 <= std_logic_vector(to_signed(10,16));
        p21 <= std_logic_vector(to_signed(10,16));
        p22 <= std_logic_vector(to_signed(10,16));

        -- Sobel horizontal Gx
        k00 <= std_logic_vector(to_signed(-1,16));
        k01 <= std_logic_vector(to_signed( 0,16));
        k02 <= std_logic_vector(to_signed( 1,16));
        k10 <= std_logic_vector(to_signed(-2,16));
        k11 <= std_logic_vector(to_signed( 0,16));
        k12 <= std_logic_vector(to_signed( 2,16));
        k20 <= std_logic_vector(to_signed(-1,16));
        k21 <= std_logic_vector(to_signed( 0,16));
        k22 <= std_logic_vector(to_signed( 1,16));

        wait for 30 ns;  -- laisse les produits et l'arbre se stabiliser

        -- compute reference in integer
        ref := ( -1 + 0 + 1 -2 + 0 + 2 -1 + 0 + 1 ) * 10; 
		  -- = 0
        report "---- TEST A ----";
        report "P0=" & integer'image(to_integer(signed(P0)));
        report "P1=" & integer'image(to_integer(signed(P1)));
        report "P2=" & integer'image(to_integer(signed(P2)));
        report "P3=" & integer'image(to_integer(signed(P3)));
        report "P4=" & integer'image(to_integer(signed(P4)));
        report "P5=" & integer'image(to_integer(signed(P5)));
        report "P6=" & integer'image(to_integer(signed(P6)));
        report "P7=" & integer'image(to_integer(signed(P7)));
        report "P8=" & integer'image(to_integer(signed(P8)));

        report "S5=" & integer'image(to_integer(signed(S5)));
        report "C5=" & integer'image(to_integer(signed(C5)));
        report "C4=" & integer'image(to_integer(signed(C4)));
        report "T0=" & integer'image(to_integer(signed(T0)));
        report "Qout=" & integer'image(to_integer(signed(Qout)));
        report "REF=" & integer'image(ref);

        -- ASSERT check
        if signed(Qout) /= to_signed(ref,32) then
            report "ERROR: mismatch TEST A" severity error;
        else
            report "OK: TEST A" severity note;
        end if;

        -------------------------------------------------------------------
        -- TEST B : identity kernel, all pixels = 10 -> expect 10
        -------------------------------------------------------------------
        p00 <= std_logic_vector(to_signed(10,16));
        p01 <= std_logic_vector(to_signed(10,16));
        p02 <= std_logic_vector(to_signed(10,16));
        p10 <= std_logic_vector(to_signed(10,16));
        p11 <= std_logic_vector(to_signed(10,16));
        p12 <= std_logic_vector(to_signed(10,16));
        p20 <= std_logic_vector(to_signed(10,16));
        p21 <= std_logic_vector(to_signed(10,16));
        p22 <= std_logic_vector(to_signed(10,16));

        k00 <= std_logic_vector(to_signed(0,16));
        k01 <= std_logic_vector(to_signed(0,16));
        k02 <= std_logic_vector(to_signed(0,16));
        k10 <= std_logic_vector(to_signed(0,16));
        k11 <= std_logic_vector(to_signed(1,16)); -- center = 1
        k12 <= std_logic_vector(to_signed(0,16));
        k20 <= std_logic_vector(to_signed(0,16));
        k21 <= std_logic_vector(to_signed(0,16));
        k22 <= std_logic_vector(to_signed(0,16));

        wait for 30 ns;

        report "---- TEST B ----";
        report "Qout=" & integer'image(to_integer(signed(Qout)));
        if signed(Qout) /= to_signed(10,32) then
            report "ERROR: mismatch TEST B" severity error;
        else
            report "OK: TEST B" severity note;
        end if;

        report "END TESTBENCH";
        wait;
    end process;

end architecture;

