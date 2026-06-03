library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;

entity mux5 is
    port (
        M0  : in  signed(16 downto 0);
        M1  : in  signed(16 downto 0);
        M2  : in  signed(16 downto 0);
        M3  : in  signed(16 downto 0);
        M4  : in  signed(16 downto 0);
        sel : in  signed(2 downto 0);
        P   : out signed(16 downto 0)
    );
end entity;

architecture rtl of mux5 is
begin
    process(M0,M1,M2,M3,M4,sel)
    begin
        case sel is
            when "000" => P <= M0;   -- 0
            when "001" => P <= M1;   -- +B
            when "010" => P <= M2;   -- +2B
            when "011" => P <= M3;   -- -B
            when "100" => P <= M4;   -- -2B
            when others => P <= (others => '0');
        end case;
    end process;
end architecture;
