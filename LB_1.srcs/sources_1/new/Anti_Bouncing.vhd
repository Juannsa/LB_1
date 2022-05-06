----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2022 13:10:26
-- Design Name: 
-- Module Name: Anti_Bouncing - Behavioral
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
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Anti_Bouncing is
    port(  
            clk       : in std_logic;
            botton_in : in std_logic; 
            rst       : in std_logic;
            botton_out: out std_logic);
         
end Anti_Bouncing;

architecture Behavioral of Anti_Bouncing is

constant max_count  :integer   :=  20;
constant btn_active :std_logic := '1';

signal   count      :integer   := 0;


begin

        An_b : process (rst,clk)
        begin
        
        if(rst = '1') then
        
            botton_out <= '0';
            count <=  0;
        
        elsif (rising_edge(clk)) then
        
            if (botton_in = btn_active) then
                    
                    if(count = max_count) then
                        count <= 0;
                            
                            if(botton_in = btn_active) then
                                  botton_out <= '1';
                            end if;
                     else
                     
                     count <= count + 1;
                     
                     end if;
                     
              else
              
                    botton_out <= '0';
              
              end if;                                 
        end if;
                end process An_b;

end Behavioral;
