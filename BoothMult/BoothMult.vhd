library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity BoothMult is
    port (
        A       : in  signed(15 downto 0);
        B       : in  signed(15 downto 0);
        PRODUCT : out signed(31 downto 0)
    );
end entity;

architecture structural of BoothMult is

    --  Déclarations des composants 
    component b_transformer
        port (
            B  : in  signed(15 downto 0);
            S1 : out signed(16 downto 0);
            S2 : out signed(16 downto 0);
            S3 : out signed(16 downto 0);
            S4 : out signed(16 downto 0);
            S5 : out signed(16 downto 0)
        );
    end component;

    component encb
        port (
            triplet : in  signed(2 downto 0);
            sel     : out signed(2 downto 0)
        );
    end component;

    component mux5
        port (
            M0  : in  signed(16 downto 0);
            M1  : in  signed(16 downto 0);
            M2  : in  signed(16 downto 0);
            M3  : in  signed(16 downto 0);
            M4  : in  signed(16 downto 0);
            sel : in  signed(2 downto 0);
            P   : out signed(16 downto 0)
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

    --  Types et signaux 
    type P_type is array(0 to 7) of signed(16 downto 0);
    type P_ext_type is array(0 to 7) of signed(31 downto 0);
    type sel_type is array(0 to 7) of signed(2 downto 0);
    type triplet_type is array(0 to 7) of signed(2 downto 0);

    signal triplet : triplet_type;
    signal M0_s,M1_s,M2_s,M3_s,M4_s : signed(16 downto 0);
    signal P      : P_type;
    signal P_ext  : P_ext_type;
    signal sel    : sel_type;

    signal S0,S1,S2,S3,S4,S5 : signed(31 downto 0);
    signal C0,C1,C2,C3,C4,C5 : signed(31 downto 0);
    signal PRODUCT_signed    : signed(31 downto 0);

    -- Décalage du carry final
    signal C5_shift,C4_shift,C3_shift,C2_shift,C1_shift, C0_shift : signed(31 downto 0);

  

begin



    --  b_transformer 
    b_transformer_inst: b_transformer port map(
        B  => B,
        S1 => M0_s,
        S2 => M1_s,
        S3 => M2_s,
        S4 => M3_s,
        S5 => M4_s
    );

    --  Génération des triplets 
    process(A)
    begin
        triplet(0) <= A(1) & A(0) & '0';
        for i in 1 to 7 loop
            triplet(i) <= A(2*i+1) & A(2*i) & A(2*i-1);
        end loop;
    end process;

    --  ENCB 
    gen_encb: for i in 0 to 7 generate
        encb_inst: encb port map(
            triplet => triplet(i),
            sel     => sel(i)
        );
    end generate;

    --  MUX5 
    gen_mux: for i in 0 to 7 generate
        mux_inst: mux5 port map(
            M0  => M4_s,
            M1  => M0_s,
            M2  => M1_s,
            M3  => M2_s,
            M4  => M3_s,
            sel => sel(i),
            P   => P(i)  -- conversion temporaire pour mux5
        );
    end generate;
	 
	

     
    -- EXTENSION ET SHIFT MANUEL DES PRODUITS PARTIELS
     
    P_ext(0) <= resize(P(0), 32);
    P_ext(1) <= resize(P(1), 32)(29 downto 0) & "00";
    P_ext(2) <= resize(P(2), 32)(27 downto 0) & "0000";
    P_ext(3) <= resize(P(3), 32)(25 downto 0) & "000000";
    P_ext(4) <= resize(P(4), 32)(23 downto 0) & "00000000";
    P_ext(5) <= resize(P(5), 32)(21 downto 0) & "0000000000";
    P_ext(6) <= resize(P(6), 32)(19 downto 0) & "000000000000";
    P_ext(7) <= resize(P(7), 32)(17 downto 0) & "00000000000000";
	 

    csa0: csa generic map(N => 32) port map(X=>P_ext(0), Y=>P_ext(1), Z=>P_ext(2), S=>S0, C=>C0);
	  C0_shift <= shift_left(C0,1);
    csa1: csa generic map(N => 32) port map(X=>S0, Y=>C0_shift, Z=>P_ext(3), S=>S1, C=>C1);
	 C1_shift <= shift_left(C1,1);
    csa2: csa generic map(N => 32) port map(X=>S1, Y=>C1_shift, Z=>P_ext(4), S=>S2, C=>C2);
		 
	 C2_shift <= shift_left(C2,1);

		
    --  CSA Stage 2 
    csa3: csa generic map(N => 32) port map(X=>S2, Y=>C2_shift, Z=>P_ext(5), S=>S3, C=>C3);
	 	 
    C3_shift <= shift_left(C3,1);


    csa4: csa generic map(N => 32) port map(X=>S3, Y=>C3_shift, Z=>P_ext(6), S=>S4, C=>C4);
	 
	 C4_shift <= shift_left(C4,1);


    --  CSA Stage 3 
    csa5: csa generic map(N => 32) port map(X=>S4, Y=>C4_shift, Z=>P_ext(7), S=>S5, C=>C5);

    --  Décalage du carry final 
    C5_shift <= shift_left(C5,1);

    --  CPA final 
    cpa0: cpa generic map(N=>32) port map(A=>S5, B => C5_shift, S=>PRODUCT);


 

end architecture;

