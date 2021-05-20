----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2021 15:44:08
-- Design Name: 
-- Module Name: ROM - Behavioral
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
use IEEE.std_logic_arith.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( pc_i : in STD_LOGIC_VECTOR (7 downto 0);
           ir_o : out STD_LOGIC_VECTOR (13 downto 0));
end ROM; 
 
architecture Behavioral of ROM is

constant LOADaddr: STD_LOGIC_VECTOR(5 downto 0) := "00000";
constant STOREaddr: STD_LOGIC_VECTOR(5 downto 0) := "00010";

begin

with pc_i select
  ir_o <= --d�but du programme en adresse 0      
          --mn�monique op�rande  adresse    
         LOADaddr 	& X"80" when	X"00",  -- Accu = port a
         STOREaddr 	& X"81" when	X"01";  -- port b = Accu
         -- BRA       	& X"00" when	X"02",  -- saut � 00                    
         -- BRA		& X"FF" when 	others;   

end Behavioral;
