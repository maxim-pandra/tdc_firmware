--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.2
--  \   \         Application : 
--  /   /         Filename : xil_3024_19
-- /___/   /\     Timestamp : 11/08/2014 15:28:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.all;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity WindowProcessing is
   port ( 
			 clk			: in	  std_logic;
			 at_sig     : in    std_logic_vector (3 downto 0); 
          picoblaze  : in    std_logic_vector (7 downto 0); 
          PORT_ID    : in    std_logic_vector (7 downto 0);
			 pb_wr_strobe : in  std_logic;
          ready_ctrl : in    std_logic_vector (3 downto 0);
			 reset      : in	  std_logic_vector (3 downto 0);
          ready      : out   std_logic_vector (3 downto 0);
			 window_flag: out   std_logic;
			 window_mode: out   std_logic;
			 test_pin   : out   std_logic;
			 reset_out_of_bound : out std_logic_vector (3 downto 0)
			 );
end WindowProcessing;

architecture BEHAVIORAL of WindowProcessing is
	signal window, count_start_MSB_on, count_start_LSB_on, count_stop_MSB_on,count_stop_LSB_on: std_logic;
	signal set_window_flag_on, window_flag_int, counter_enable, window_smart, flag:std_logic;
	signal event_detector : std_logic_vector (3 downto 1);
	signal ready_enable : std_logic_vector (3 downto 0);
	signal start_MSB, start_LSB, stop_MSB, stop_LSB : std_logic_vector (7 downto 0);
	signal count, count_next, count_window_start, count_window_stop: std_logic_vector (15 downto 0);
begin

--decoding PORT_ID
count_start_MSB_on<= '1' when PORT_ID = x"FA" else
							'0';
count_start_LSB_on<= '1' when PORT_ID = x"FB" else
							'0';
count_stop_MSB_on<=  '1' when PORT_ID = x"FC" else
							'0';
count_stop_LSB_on<=  '1' when PORT_ID = x"FD" else
							'0';
set_window_flag_on<= '1' when PORT_ID = x"FE" else
							'0';
							
-- saving counter start and stop state
process (clk)							
begin
	if(clk = '1' and clk'event) then
		if (pb_wr_strobe = '1' and count_start_MSB_on = '1') then
			start_MSB<=picoblaze;
		end if;
		if (pb_wr_strobe = '1' and count_start_LSB_on = '1') then
			start_LSB<=picoblaze;
		end if;
		if (pb_wr_strobe = '1' and count_stop_MSB_on = '1') then
			stop_MSB<=picoblaze;
		end if;
		if (pb_wr_strobe = '1' and count_stop_LSB_on = '1') then
			stop_LSB<=picoblaze;
		end if;
		if (pb_wr_strobe = '1' and set_window_flag_on = '1') then
			window_flag_int<=picoblaze(7);
			window_mode<=picoblaze(6);--'1' finishEnable; '0' startEnable !!!ONLY IF window_flag_int='1'!!!
		end if;
	end if;
end process;

--connecting bytes in two-bytes bus
count_window_start(7 downto 0)<=start_LSB(7 downto 0);
count_window_start(15 downto 8)<=start_MSB(7 downto 0);
count_window_stop(7 downto 0)<=stop_LSB(7 downto 0);
count_window_stop(15 downto 8)<=stop_MSB(7 downto 0);

--counter is disabled while data recoring into memory
counter_enable<= ready_ctrl(0) and window_flag_int;-- not needed actualy, i've managed to force counter to stop when stop condition detected


-- main window counter declaration
process(clk) 
begin
   if clk='1' and clk'event then
      if reset(0)='1' then 
			ready(0)<='0';
			flag<='1';
			reset_out_of_bound(3 downto 0)<="0000";
			window<='0';
         count_next <= (others => '0');
		elsif counter_enable='1' then
			count_next <= count + 1;			
			reset_out_of_bound(3 downto 0)<="0000";
			if ready_ctrl(1)='1' then
				reset_out_of_bound(1)<='1';
			end if;
			if ready_ctrl(2)='1' then
				reset_out_of_bound(2)<='1';
			end if;
			if count >= count_window_stop then
				window<='0';
				count_next<=count;
				ready(1)<='0';
				ready(2)<='0';
				if ready_enable(0) = '1' then
					if ready_enable(1)='1' and ready_enable(2) = '1' then
						ready(1)<=ready_ctrl(1);
						ready(2)<=ready_ctrl(2);
						reset_out_of_bound(1)<='0';
						reset_out_of_bound(2)<='0';
						elsif ready_enable(1)='1' then
--						if ready_ctrl(1)='1' then
						ready(1)<=ready_ctrl(1);
						reset_out_of_bound(1)<='0';
--						end if;
					elsif ready_enable(2)='1' then
--						if ready_ctrl(2)='1' then
						ready(2)<=ready_ctrl(2);
						reset_out_of_bound(2)<='0';
--						end if;
					else
						ready(0)<=ready_ctrl(0);
					end if;
				else
					reset_out_of_bound(0)<='1';
				end if;
			elsif count >= count_window_start then
				window<='1';
				ready(0)<='0';
				ready(1)<='0';
				ready(2)<='0';
				reset_out_of_bound(1)<='0';
				reset_out_of_bound(2)<='0';
				if ready_ctrl(1) = '1' then
					ready(1)<= '1';
				end if;
				if ready_ctrl(2) = '1' then
					ready(2)<= '1';
				end if;
				count_next<=count+1;
			end if;	
      elsif window_flag_int ='0' then 
		ready(3 downto 0) <= ready_ctrl(3 downto 0);
		end if;
   end if;
end process; 
count<=count_next;

--window_smart declaration
window_smart<= window when window_flag_int = '1' else
					'0';

--generating event detectors in stop channels (window is smart couse it can undersend if collibration is on)
event_detector(1)<= window_smart when at_sig(1) = '1'  else '0';
event_detector(2)<= window_smart when at_sig(2) = '1' else '0';
event_detector(3)<= window_smart when at_sig(3) = '1' else '0';

--event detecting during window is open
process (clk)
begin
	if ((clk='1') and (clk'event)) then
		
		if (reset(1) = '1') then
		ready_enable(1)<='0';
		elsif (event_detector(1))='1' then
		ready_enable(1)<='1';
		end if;
		
		if (reset(2) = '1') then
		ready_enable(2)<='0';
		elsif (event_detector(2))='1' then
		ready_enable(2)<='1';
		end if;
		
		if (reset(0) = '1') then
		ready_enable(0)<='0';
		elsif (ready_enable(1)='1' or ready_enable(2)='1') then
		ready_enable(0)<='1';
		end if;
		
		if (reset(3) = '1') then
		ready_enable(3)<='0';
		elsif (event_detector(3))='1' then
		ready_enable(3)<='1';
		end if;
	end if;
end process;

window_flag<=counter_enable;
test_pin<= window_smart;

end BEHAVIORAL;

-- synopsys translate_off
configuration CFG_WindowProcessing of  WindowProcessing is
   for BEHAVIORAL
   end for;
end CFG_WindowProcessing;
-- synopsys translate_on

