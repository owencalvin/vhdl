----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.05.2021 08:39:24
-- Design Name: 
-- Module Name: registre_CCR - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registre_CCR is
Port (
    ccr_load_i: in STD_LOGIC;
    ccr_alu_i: in STD_LOGIC_VECTOR(3 downto 0);
    ccr_o: out STD_LOGIC_VECTOR(3 downto 0);
    clk_i : in STD_LOGIC;
    reset_i : in STD_LOGIC
);
end registre_CCR;

architecture Behavioral of registre_CCR is
    signal reg: STD_LOGIC_VECTOR (3 downto 0);
begin

process(clk_i,reset_i)
begin
    if reset_i = '1' then
        reg <= (others=>'0');
    elsif rising_edge(clk_i) then
        if ccr_load_i = '1' then
            reg <= ccr_alu_i;
        end if;
    end if;
end process;

ccr_o <= reg;


end Behavioral;
