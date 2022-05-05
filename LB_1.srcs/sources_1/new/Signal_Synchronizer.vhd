----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2022 14:22:29
-- Design Name: 
-- Module Name: Signal_Synchronizer - Behavioral
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

entity Signal_Synchronizerr is
    Port ( Async : in STD_LOGIC;
           clk  : in STD_LOGIC; 
           rst : in STD_LOGIC;
           Sync : out STD_LOGIC);
end Signal_Synchronizerr;

architecture Synchronizer of Signal_Synchronizerr is
signal T_Sync : std_logic;
signal T_rst : std_logic := '0';

begin
   
   Sync_Proc: process (clk,rst)
   begin
            
            if(rst = '1') then
                Sync <= '0';
            else if
                (rising_edge(clk)) then
                T_Sync <= Async;
                Sync   <= T_Sync;
            end if;
   end process Sync_Proc; 
   
end Synchronizer;

