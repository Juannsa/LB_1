----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2022 14:23:57
-- Design Name: 
-- Module Name: Tb_Signal_Synchronizer - Behavioral
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

entity Tb_Signal_Synchronizer is
--  Port ( );
end Tb_Signal_Synchronizer;

architecture TestBench of Tb_Signal_Synchronizer is

    component Signal_Synchronizerr is
        Port ( Async : in  std_logic;
               clk   : in  std_logic;
               rst   : in  std_logic; 
               Sync  : out std_logic);
    end component;
    
signal Tb_Async,Tb_clk,Tb_rst : std_logic := '0';
signal  Tb_Sync : std_logic ;
begin

    UUT: Signal_Synchronizerr port map
                
         (Async => Tb_Async, clk  => Tb_clk,rst => Tb_rst,  Sync => Tb_Sync);
                

            Sync_Start: process
                        Tb_rst <= '0';
                        wait;
                        
                        end process Sync_Start;

            clk_50 : process
            
            begin
            
                    Tb_clk <= '1';
                    wait for 5 ns;
                    Tb_clk <= '0';
                    wait for 5 ns;
                    
            end process clk_50;
            
                        
            
            data_s : process
            
            begin
            
            Tb_Async  <= '1';
            wait for 15 ns;
            Tb_Async  <= '0';    
            wait for 15 ns;        
            Tb_Async  <= '1';
           
          
            wait;
            end process data_s;

end TestBench;
