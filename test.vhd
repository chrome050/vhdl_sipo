--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:05:11 09/01/2015
-- Design Name:   
-- Module Name:   Z:/Projects/SIPO/test.vhd
-- Project Name:  SIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo
    PORT(
         clk : IN  std_logic;
         ens : IN  std_logic;
         si : IN  std_logic;
         po : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ens : std_logic := '0';
   signal si : std_logic := '0';

	--BiDirs
   signal po : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo PORT MAP (
          clk => clk,
          ens => ens,
          si => si,
          po => po
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		 si <= '1';
       
		 wait for 100 ns;
		 
		 ens <= '1';
		 
		 wait for 100 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10ns;
		 ens <= '0';
		 
		  wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '1';
		 ens <= '1';
		 
		  wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '0';
		 
		 wait for 10 ns;
		 si <= '1';
		 
		 wait for 10 ns;
		 si <= '1';
		 
   end process;

END;
