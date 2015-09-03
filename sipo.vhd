----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:30 09/01/2015 
-- Design Name: 
-- Module Name:    sipo - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sipo is
    Port ( clk,ens,si : in  STD_LOGIC;
	 po: inout std_logic_vector(7 downto 0) );
end sipo;

architecture Behavioral of sipo is
begin 
process(clk)
begin

	if(clk='1' and clk'event and ens='1')then
		po(7 downto 1) <= po(6 downto 0);
		po(0) <= si;
	end if;
end process;
end Behavioral;

