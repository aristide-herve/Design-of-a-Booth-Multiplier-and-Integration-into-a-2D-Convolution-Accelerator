library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity conv3x3_core_debug is
    port (
        -- fenêtre 3x3 : pixels en 16 bits signe
        p00 : in std_logic_vector(15 downto 0);
        p01 : in std_logic_vector(15 downto 0);
        p02 : in std_logic_vector(15 downto 0);
        p10 : in std_logic_vector(15 downto 0);
        p11 : in std_logic_vector(15 downto 0);
        p12 : in std_logic_vector(15 downto 0);
        p20 : in std_logic_vector(15 downto 0);
        p21 : in std_logic_vector(15 downto 0);
        p22 : in std_logic_vector(15 downto 0);

        -- kernel 3x3 : coefficients en 16 bits signe
        k00 : in std_logic_vector(15 downto 0);
        k01 : in std_logic_vector(15 downto 0);
        k02 : in std_logic_vector(15 downto 0);
        k10 : in std_logic_vector(15 downto 0);
        k11 : in std_logic_vector(15 downto 0);
        k12 : in std_logic_vector(15 downto 0);
        k20 : in std_logic_vector(15 downto 0);
        k21 : in std_logic_vector(15 downto 0);
        k22 : in std_logic_vector(15 downto 0);

        -- sortie convolution (32 bits signed)
        Qout : out std_logic_vector(31 downto 0);

        -- === DEBUG OUTPUTS (pour le TB) ===
        P0_out : out std_logic_vector(31 downto 0);
        P1_out : out std_logic_vector(31 downto 0);
        P2_out : out std_logic_vector(31 downto 0);
        P3_out : out std_logic_vector(31 downto 0);
        P4_out : out std_logic_vector(31 downto 0);
        P5_out : out std_logic_vector(31 downto 0);
        P6_out : out std_logic_vector(31 downto 0);
        P7_out : out std_logic_vector(31 downto 0);
        P8_out : out std_logic_vector(31 downto 0);

        S0_out : out std_logic_vector(31 downto 0);
        S1_out : out std_logic_vector(31 downto 0);
        S2_out : out std_logic_vector(31 downto 0);
        S3_out : out std_logic_vector(31 downto 0);
        S4_out : out std_logic_vector(31 downto 0);
        S5_out : out std_logic_vector(31 downto 0);

        C0_out : out std_logic_vector(31 downto 0);
        C1_out : out std_logic_vector(31 downto 0);
        C2_out : out std_logic_vector(31 downto 0);
        C3_out : out std_logic_vector(31 downto 0);
        C4_out : out std_logic_vector(31 downto 0);
        C5_out : out std_logic_vector(31 downto 0);

        T0_out : out std_logic_vector(31 downto 0)
    );
end entity;

architecture rtl of conv3x3_core_debug is

    component BoothMult
        port(
            A : in std_logic_vector(15 downto 0);
            B : in std_logic_vector(15 downto 0);
            PRODUCT : out std_logic_vector(31 downto 0)
        );
    end component;

    component csa
        generic (N : integer := 32);
        port (
            X : in  std_logic_vector(N-1 downto 0);
            Y : in  std_logic_vector(N-1 downto 0);
            Z : in  std_logic_vector(N-1 downto 0);
            S : out std_logic_vector(N-1 downto 0);
            C : out std_logic_vector(N-1 downto 0)
        );
    end component;

    component cpa
        generic (N : integer := 32);
        port (
            A : in  std_logic_vector(N-1 downto 0);
            B : in  std_logic_vector(N-1 downto 0);
            S : out std_logic_vector(N-1 downto 0)
        );
    end component;

    -- internal signals
    signal P0, P1, P2, P3, P4, P5, P6, P7, P8 : std_logic_vector(31 downto 0);
    signal S0,S1,S2,S3,S4,S5 : std_logic_vector(31 downto 0);
    signal C0,C1,C2,C3,C4,C5 : std_logic_vector(31 downto 0);
    signal C5_shift, C4_shift : std_logic_vector(31 downto 0);
    signal T0 : std_logic_vector(31 downto 0);

begin

    -- multiplications
    bm0: BoothMult port map(A => k00, B => p00, PRODUCT => P0);
    bm1: BoothMult port map(A => k01, B => p01, PRODUCT => P1);
    bm2: BoothMult port map(A => k02, B => p02, PRODUCT => P2);
    bm3: BoothMult port map(A => k10, B => p10, PRODUCT => P3);
    bm4: BoothMult port map(A => k11, B => p11, PRODUCT => P4);
    bm5: BoothMult port map(A => k12, B => p12, PRODUCT => P5);
    bm6: BoothMult port map(A => k20, B => p20, PRODUCT => P6);
    bm7: BoothMult port map(A => k21, B => p21, PRODUCT => P7);
    bm8: BoothMult port map(A => k22, B => p22, PRODUCT => P8);

    -- CSA tree
    csa0: csa generic map(N => 32) port map(X=>P0, Y=>P1, Z=>P2, S=>S0, C=>C0);
    csa1: csa generic map(N => 32) port map(X=>P3, Y=>P4, Z=>P5, S=>S1, C=>C1);
    csa2: csa generic map(N => 32) port map(X=>P6, Y=>P7, Z=>P8, S=>S2, C=>C2);

    csa3: csa generic map(N => 32) port map(X=>S0, Y=>C0, Z=>S1, S=>S3, C=>C3);
    csa4: csa generic map(N => 32) port map(X=>C1, Y=>S2, Z=>C2, S=>S4, C=>C4);

    csa5: csa generic map(N => 32) port map(X=>S3, Y=>C3, Z=>S4, S=>S5, C=>C5);

    -- carries shifted and CPAs
    C5_shift <= std_logic_vector( shift_left( unsigned(C5), 1 ) );
    C4_shift <= std_logic_vector( shift_left( unsigned(C4), 1 ) );

    cpa0: cpa generic map(N => 32) port map(A => S5, B => C5_shift, S => T0);
    cpa1: cpa generic map(N => 32) port map(A => T0, B => C4_shift, S => Qout);

    -- debug outputs
    P0_out <= P0; P1_out <= P1; P2_out <= P2;
    P3_out <= P3; P4_out <= P4; P5_out <= P5;
    P6_out <= P6; P7_out <= P7; P8_out <= P8;

    S0_out <= S0; S1_out <= S1; S2_out <= S2;
    S3_out <= S3; S4_out <= S4; S5_out <= S5;

    C0_out <= C0; C1_out <= C1; C2_out <= C2;
    C3_out <= C3; C4_out <= C4; C5_out <= C5;

    T0_out <= T0;

end architecture;
