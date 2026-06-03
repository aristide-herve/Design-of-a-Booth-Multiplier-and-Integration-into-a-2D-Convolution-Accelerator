---- conv3x3_core.vhd
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity conv3x3_core is
--    port (
--        -- fenêtre 3x3 : pixels en 16 bits signe (2's complement)
--        p00 : in std_logic_vector(15 downto 0);
--        p01 : in std_logic_vector(15 downto 0);
--        p02 : in std_logic_vector(15 downto 0);
--        p10 : in std_logic_vector(15 downto 0);
--        p11 : in std_logic_vector(15 downto 0);
--        p12 : in std_logic_vector(15 downto 0);
--        p20 : in std_logic_vector(15 downto 0);
--        p21 : in std_logic_vector(15 downto 0);
--        p22 : in std_logic_vector(15 downto 0);
--
--        -- kernel 3x3 : coefficients en 16 bits signe
--        k00 : in std_logic_vector(15 downto 0);
--        k01 : in std_logic_vector(15 downto 0);
--        k02 : in std_logic_vector(15 downto 0);
--        k10 : in std_logic_vector(15 downto 0);
--        k11 : in std_logic_vector(15 downto 0);
--        k12 : in std_logic_vector(15 downto 0);
--        k20 : in std_logic_vector(15 downto 0);
--        k21 : in std_logic_vector(15 downto 0);
--        k22 : in std_logic_vector(15 downto 0);
--
--        -- sortie convolution (32 bits signed)
--        Qout : out std_logic_vector(31 downto 0)
--    );
--end entity;
--
--architecture structural of conv3x3_core is
--
--    -- composants externes (doivent exister dans ton projet)
--    component BoothMult
--        port(
--            A : in std_logic_vector(15 downto 0);
--            B : in std_logic_vector(15 downto 0);
--            PRODUCT : out std_logic_vector(31 downto 0)
--        );
--    end component;
--
--    component csa
--        generic (N : integer := 32);
--        port (
--            X : in  std_logic_vector(N-1 downto 0);
--            Y : in  std_logic_vector(N-1 downto 0);
--            Z : in  std_logic_vector(N-1 downto 0);
--            S : out std_logic_vector(N-1 downto 0);
--            C : out std_logic_vector(N-1 downto 0)
--        );
--    end component;
--
--    component cpa
--        generic (N : integer := 32);
--        port (
--            A : in  std_logic_vector(N-1 downto 0);
--            B : in  std_logic_vector(N-1 downto 0);
--            S : out std_logic_vector(N-1 downto 0)
--        );
--    end component;
--
--    -- signaux pour produits (32 bits)
--    signal P0, P1, P2, P3, P4, P5, P6, P7, P8 : std_logic_vector(31 downto 0);
--
--    -- signaux CSA intermédiaire
--    signal S0,S1,S2,S3,S4,S5 : std_logic_vector(31 downto 0);
--    signal C0,C1,C2,C3,C4,C5 : std_logic_vector(31 downto 0);
--
--    -- signaux pour shifts des carries
--    signal C5_shift, C4_shift : std_logic_vector(31 downto 0);
--
--    -- signaux temporaires pour CPA stage
--    signal T0 : std_logic_vector(31 downto 0);
--
--begin
--
--    -- ==== 9 multiplieurs Booth (combinatoires) ====
--    bm0: BoothMult port map(A => k00, B => p00, PRODUCT => P0);
--    bm1: BoothMult port map(A => k01, B => p01, PRODUCT => P1);
--    bm2: BoothMult port map(A => k02, B => p02, PRODUCT => P2);
--    bm3: BoothMult port map(A => k10, B => p10, PRODUCT => P3);
--    bm4: BoothMult port map(A => k11, B => p11, PRODUCT => P4);
--    bm5: BoothMult port map(A => k12, B => p12, PRODUCT => P5);
--    bm6: BoothMult port map(A => k20, B => p20, PRODUCT => P6);
--    bm7: BoothMult port map(A => k21, B => p21, PRODUCT => P7);
--    bm8: BoothMult port map(A => k22, B => p22, PRODUCT => P8);
--
--    -- ==== Arbre CSA pour réduire 9 opérandes ====
--    -- Stage 1 : 3 groupes de 3
--    csa0: csa generic map(N => 32) port map(X=>P0, Y=>P1, Z=>P2, S=>S0, C=>C0);
--    csa1: csa generic map(N => 32) port map(X=>P3, Y=>P4, Z=>P5, S=>S1, C=>C1);
--    csa2: csa generic map(N => 32) port map(X=>P6, Y=>P7, Z=>P8, S=>S2, C=>C2);
--
--    -- Stage 2
--    csa3: csa generic map(N => 32) port map(X=>S0, Y=>C0, Z=>S1, S=>S3, C=>C3);
--    csa4: csa generic map(N => 32) port map(X=>C1, Y=>S2, Z=>C2, S=>S4, C=>C4);
--
--    -- Stage 3
--    csa5: csa generic map(N => 32) port map(X=>S3, Y=>C3, Z=>S4, S=>S5, C=>C5);
--
--    -- ==== CPA final (2 étapes) ====
--    C5_shift <= std_logic_vector( shift_left( unsigned(C5), 1 ) );
--    C4_shift <= std_logic_vector( shift_left( unsigned(C4), 1 ) );
--
--    cpa0: cpa generic map(N => 32) port map(A => S5, B => C5_shift, S => T0);
--    cpa1: cpa generic map(N => 32) port map(A => T0, B => C4_shift, S => Qout);
--
--end architecture;

-- conv3x3_core.vhd
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity conv3x3_core is
--    port (
--        -- fenêtre 3x3 : pixels en 16 bits signe (2's complement)
--        p00 : in std_logic_vector(15 downto 0);
--        p01 : in std_logic_vector(15 downto 0);
--        p02 : in std_logic_vector(15 downto 0);
--        p10 : in std_logic_vector(15 downto 0);
--        p11 : in std_logic_vector(15 downto 0);
--        p12 : in std_logic_vector(15 downto 0);
--        p20 : in std_logic_vector(15 downto 0);
--        p21 : in std_logic_vector(15 downto 0);
--        p22 : in std_logic_vector(15 downto 0);
--
--        -- kernel 3x3 : coefficients en 16 bits signe
--        k00 : in std_logic_vector(15 downto 0);
--        k01 : in std_logic_vector(15 downto 0);
--        k02 : in std_logic_vector(15 downto 0);
--        k10 : in std_logic_vector(15 downto 0);
--        k11 : in std_logic_vector(15 downto 0);
--        k12 : in std_logic_vector(15 downto 0);
--        k20 : in std_logic_vector(15 downto 0);
--        k21 : in std_logic_vector(15 downto 0);
--        k22 : in std_logic_vector(15 downto 0);
--
--        -- sortie convolution (32 bits signed)
--        Qout : out std_logic_vector(31 downto 0)
--    );
--end entity;
--
--architecture structural of conv3x3_core is
--
--    -- composants (doivent être dans le projet)
--    component BoothMult
--        port(
--            A       : in std_logic_vector(15 downto 0);
--            B       : in std_logic_vector(15 downto 0);
--            PRODUCT : out std_logic_vector(31 downto 0)
--        );
--    end component;
--
--    component csa
--        generic (N : integer := 32);
--        port (
--            X : in  std_logic_vector(N-1 downto 0);
--            Y : in  std_logic_vector(N-1 downto 0);
--            Z : in  std_logic_vector(N-1 downto 0);
--            S : out std_logic_vector(N-1 downto 0);
--            C : out std_logic_vector(N-1 downto 0)
--        );
--    end component;
--
--    component cpa
--        generic (N : integer := 32);
--        port (
--            A : in  std_logic_vector(N-1 downto 0);
--            B : in  std_logic_vector(N-1 downto 0);
--            S : out std_logic_vector(N-1 downto 0)
--        );
--    end component;
--
--    -- produits intermédiaires
--    signal P0,P1,P2,P3,P4,P5,P6,P7,P8 : std_logic_vector(31 downto 0);
--
--    -- CSA intermédiaires
--    signal S0,S1,S2 : std_logic_vector(31 downto 0);
--    signal C0,C1,C2 : std_logic_vector(31 downto 0);
--
--    signal S3,C3 : std_logic_vector(31 downto 0);
--    signal S4,C4 : std_logic_vector(31 downto 0);
--
--    signal S5,C5 : std_logic_vector(31 downto 0);
--    signal S6,C6 : std_logic_vector(31 downto 0);
--
--    -- signaux de shift et CPA
--    signal C6_shift : std_logic_vector(31 downto 0);
--
--begin
--
--    -- 9 multiplieurs Booth (combinatoires)
--    bm0: BoothMult port map(A => k00, B => p00, PRODUCT => P0);
--    bm1: BoothMult port map(A => k01, B => p01, PRODUCT => P1);
--    bm2: BoothMult port map(A => k02, B => p02, PRODUCT => P2);
--
--    bm3: BoothMult port map(A => k10, B => p10, PRODUCT => P3);
--    bm4: BoothMult port map(A => k11, B => p11, PRODUCT => P4);
--    bm5: BoothMult port map(A => k12, B => p12, PRODUCT => P5);
--
--    bm6: BoothMult port map(A => k20, B => p20, PRODUCT => P6);
--    bm7: BoothMult port map(A => k21, B => p21, PRODUCT => P7);
--    bm8: BoothMult port map(A => k22, B => p22, PRODUCT => P8);
--
--    -- === Arbre CSA correct ===
--    -- Stage 1: 3 groupes de 3
--    csa0: csa generic map(N => 32) port map(X=>P0, Y=>P1, Z=>P2, S=>S0, C=>C0);
--    csa1: csa generic map(N => 32) port map(X=>P3, Y=>P4, Z=>P5, S=>S1, C=>C1);
--    csa2: csa generic map(N => 32) port map(X=>P6, Y=>P7, Z=>P8, S=>S2, C=>C2);
--
--    -- Stage 2: réduire les S* et C* séparément
--    csa3: csa generic map(N => 32) port map(X=>S0, Y=>S1, Z=>S2, S=>S3, C=>C3);
--    csa4: csa generic map(N => 32) port map(X=>C0, Y=>C1, Z=>C2, S=>S4, C=>C4);
--
--    -- Stage 3: regrouper tout (deux CSA successifs)
--    -- combine S3, S4, C3 -> S5, C5
--    csa5: csa generic map(N => 32) port map(X=>S3, Y=>S4, Z=>C3, S=>S5, C=>C5);
--
--    -- combine S5, C5, C4 -> S6, C6
--    csa6: csa generic map(N => 32) port map(X=>S5, Y=>C5, Z=>C4, S=>S6, C=>C6);
--
--    -- Final CPA : Qout = S6 + (C6 << 1)
--    C6_shift <= std_logic_vector( shift_left( unsigned(C6), 1 ) );
--
--    final_cpa: cpa generic map(N => 32) port map(
--        A => S6,
--        B => C6_shift,
--        S => Qout
--    );
--
--end architecture;


-- conv3x3_core.vhd

-- conv3x3_core.vhd  (CORRIGÉ : uses unsigned for carries, single final shift)

--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity conv3x3_core is
--    port (
--        p00,p01,p02 : in std_logic_vector(15 downto 0);
--        p10,p11,p12 : in std_logic_vector(15 downto 0);
--        p20,p21,p22 : in std_logic_vector(15 downto 0);
--
--        k00,k01,k02 : in std_logic_vector(15 downto 0);
--        k10,k11,k12 : in std_logic_vector(15 downto 0);
--        k20,k21,k22 : in std_logic_vector(15 downto 0);
--
--        Qout : out std_logic_vector(31 downto 0)
--    );
--end entity;
--
--architecture rtl of conv3x3_core is
--
--    component BoothMult
--        port(
--            A : in  std_logic_vector(15 downto 0);
--            B : in  std_logic_vector(15 downto 0);
--            PRODUCT : out std_logic_vector(31 downto 0)
--        );
--    end component;
--
--    component csa
--        generic (N : integer := 32);
--        port (
--            X : in  std_logic_vector(N-1 downto 0);
--            Y : in  std_logic_vector(N-1 downto 0);
--            Z : in  std_logic_vector(N-1 downto 0);
--            S : out std_logic_vector(N-1 downto 0);
--            C : out std_logic_vector(N-1 downto 0)
--        );
--    end component;
--
--    component cpa
--        generic (N : integer := 32);
--        port (
--            A : in  std_logic_vector(N-1 downto 0);
--            B : in  std_logic_vector(N-1 downto 0);
--            S : out std_logic_vector(N-1 downto 0)
--        );
--    end component;
--
--    signal P0,P1,P2,P3,P4,P5,P6,P7,P8 : std_logic_vector(31 downto 0);
--
--    -- stage outputs
--    signal S0,S1,S2 : std_logic_vector(31 downto 0);
--    signal C0,C1,C2 : std_logic_vector(31 downto 0);
--
--    signal S3,C3 : std_logic_vector(31 downto 0);
--    signal S4,C4 : std_logic_vector(31 downto 0);
--
--    signal S5,C5 : std_logic_vector(31 downto 0);
--    signal S6,C6 : std_logic_vector(31 downto 0);
--	 
--
--    signal C6_shift : std_logic_vector(31 downto 0);
--	 
--	 signal P0_1 : std_logic_vector(31 downto 0);
--	 signal P1_1 : std_logic_vector(31 downto 0);
--	 signal P2_1 : std_logic_vector(31 downto 0);
--	 signal P3_1 : std_logic_vector(31 downto 0);
--	 signal P4_1 : std_logic_vector(31 downto 0);
--	 signal P5_1 : std_logic_vector(31 downto 0);
--	 
-- 
--	 
--	 
--
--begin
--	 
--	 process(P0, P1, P2)
--	 begin 
--		 P0_1 <= std_logic_vector(signed(P0)); 
--		 P1_1 <= std_logic_vector(signed(P1));
--		 P2_1 <= std_logic_vector(signed(P2)); 
--		 
--		 P3_1 <= std_logic_vector(signed(P3)); 
--		 P4_1 <= std_logic_vector(signed(P4));
--		 P5_1 <= std_logic_vector(signed(P5)); 
--	 end process; 
--
--    -- 9 Booth multipliers
--    bm0: BoothMult port map(A => k00, B => p00, PRODUCT => P0);
--    bm1: BoothMult port map(A => k01, B => p01, PRODUCT => P1);
--    bm2: BoothMult port map(A => k02, B => p02, PRODUCT => P2);
--
--    bm3: BoothMult port map(A => k10, B => p10, PRODUCT => P3);
--    bm4: BoothMult port map(A => k11, B => p11, PRODUCT => P4);
--    bm5: BoothMult port map(A => k12, B => p12, PRODUCT => P5);
--
--    bm6: BoothMult port map(A => k20, B => p20, PRODUCT => P6);
--    bm7: BoothMult port map(A => k21, B => p21, PRODUCT => P7);
--    bm8: BoothMult port map(A => k22, B => p22, PRODUCT => P8);
--
--    -- Stage 1 : three CSAs (no shifts)
--    csa0: csa generic map(N => 32) port map(X =>P0_1, Y =>P1_1, Z =>P2_1, S =>S0, C => C0);
--    csa1: csa generic map(N => 32) port map(X => P3, Y => P4, Z => P5, S => S1, C => C1);
--    csa2: csa generic map(N => 32) port map(X => P6, Y => P7, Z => P8, S => S2, C => C2);
--
--    -- Stage 2 : two CSAs (still no shifts)
--    csa3: csa generic map(N => 32) port map(X => S0, Y => S1, Z => S2, S => S3, C => C3);
--    csa4: csa generic map(N => 32) port map(X => C0, Y => C1, Z => C2, S => S4, C => C4);
--
--    -- Stage 3 : combine partials (no shifts)
--    csa5: csa generic map(N => 32) port map(X => S3, Y => S4, Z => C3, S => S5, C => C5);
--
--    -- Stage 4 : final CSA to get two words S6 and C6
--    csa6: csa generic map(N => 32) port map(X => S5, Y => C5, Z => C4, S => S6, C => C6);
--
--    -- Final CPA: SHIFT ONCE using UNSIGNED and add
--    C6_shift <= std_logic_vector( shift_left(unsigned(C6), 1) );
--
--    final_add: cpa generic map(N => 32) port map(A => S6, B => C6_shift, S => Qout);
--
--end architecture;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity conv3x3_core is
    port (
        p00,p01,p02 : in signed(15 downto 0);
        p10,p11,p12 : in signed(15 downto 0);
        p20,p21,p22 : in signed(15 downto 0);

        k00,k01,k02 : in signed(15 downto 0);
        k10,k11,k12 : in signed(15 downto 0);
        k20,k21,k22 : in signed(15 downto 0);

        Qout : out signed(31 downto 0)
    );
end entity;

architecture rtl of conv3x3_core is

    ----------------------------------------------------------------
    -- Components
    ----------------------------------------------------------------
    component BoothMult
        port(
            A       : in  signed(15 downto 0);
            B       : in  signed(15 downto 0);
            PRODUCT : out signed(31 downto 0)
        );
    end component;

    component csa
        generic (N : integer := 32);
        port (
            X : in  signed(N-1 downto 0);
            Y : in  signed(N-1 downto 0);
            Z : in  signed(N-1 downto 0);
            S : out signed(N-1 downto 0);
            C : out signed(N-1 downto 0)
        );
    end component;

    component cpa
        generic (N : integer := 32);
        port (
            A : in  signed(N-1 downto 0);
            B : in  signed(N-1 downto 0);
            S : out signed(N-1 downto 0)
        );
    end component;

    ----------------------------------------------------------------
    -- Signals
    ----------------------------------------------------------------
    signal P0,P1,P2,P3,P4,P5,P6,P7,P8 : signed(31 downto 0);

    -- CSA stages
    signal S0,S1,S2 : signed(31 downto 0);
    signal C0,C1,C2 : signed(31 downto 0);

    signal S3,C3 : signed(31 downto 0);
    signal S4,C4 : signed(31 downto 0);

    signal S5,C5 : signed(31 downto 0);
    signal S6,C6 : signed(31 downto 0);

    signal C6_shift, C5_shift, C4_shift, C3_shift, C2_shift, C1_shift, C0_shift : signed(31 downto 0);

begin

    ----------------------------------------------------------------
    -- 9 Booth multipliers
    ----------------------------------------------------------------
    bm0: BoothMult port map(A => k00, B => p00, PRODUCT => P0);
    bm1: BoothMult port map(A => k01, B => p01, PRODUCT => P1);
    bm2: BoothMult port map(A => k02, B => p02, PRODUCT => P2);

    bm3: BoothMult port map(A => k10, B => p10, PRODUCT => P3);
    bm4: BoothMult port map(A => k11, B => p11, PRODUCT => P4);
    bm5: BoothMult port map(A => k12, B => p12, PRODUCT => P5);

    bm6: BoothMult port map(A => k20, B => p20, PRODUCT => P6);
    bm7: BoothMult port map(A => k21, B => p21, PRODUCT => P7);
    bm8: BoothMult port map(A => k22, B => p22, PRODUCT => P8);

    ----------------------------------------------------------------
    -- Stage 1 : three CSAs
    ----------------------------------------------------------------
    csa0: csa generic map(N => 32)
        port map(X => P0, Y => P1, Z => P2, S => S0, C => C0);
    C0_shift <= shift_left(C0, 1);

		  
    csa1: csa generic map(N => 32)
        port map(X => S0, Y => C0_shift, Z => P3, S => S1, C => C1);
	 
	 C1_shift <= shift_left(C1, 1);


    csa2: csa generic map(N => 32)
        port map(X => S1, Y => C1_shift, Z => P4, S => S2, C => C2);

	 C2_shift <= shift_left(C2, 1);

    ----------------------------------------------------------------
    -- Stage 2
    ----------------------------------------------------------------
    csa3: csa generic map(N => 32)
        port map(X => S2, Y => C2_shift, Z => P5, S => S3, C => C3);
	
	 C3_shift <= shift_left(C3, 1);


    csa4: csa generic map(N => 32)
        port map(X => S3, Y => C3_shift, Z => P6, S => S4, C => C4);
	
	 C4_shift <= shift_left(C4, 1);

    ----------------------------------------------------------------
    -- Stage 3
    ----------------------------------------------------------------
    csa5: csa generic map(N => 32)
        port map(X => S4, Y => C4_shift, Z => P7, S => S5, C => C5);
	 C5_shift <= shift_left(C5, 1);

    ----------------------------------------------------------------
    -- Stage 4
    ----------------------------------------------------------------
    csa6: csa generic map(N => 32)
        port map(X => S5, Y => C5_shift, Z => P8, S => S6, C => C6);

    ----------------------------------------------------------------
    -- Final CPA
    ----------------------------------------------------------------
    C6_shift <= shift_left(C6, 1);

    final_add: cpa generic map(N => 32)
        port map(A => S6, B => C6_shift, S => Qout);

end architecture;

