
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity main_distribution_system is
port(
	clk, reset, evt_ext, evt_std, window_mode: in std_logic;            -- clock, reset, enable, event
	counter: in std_logic_vector (15 downto 0);  -- counter
	err, saw, attached_signal_out, as, s0_dbg, s1_dbg: out std_logic;     -- error, saw, conected_signal
	counter_out: out std_logic_vector (15 downto 0)  -- counter
		
	);
end main_distribution_system;


architecture main_distribution_system_arch of main_distribution_system is
	signal attached_signal,evt, int_sig0,int_sig1, int_sig11, int_sig2, flag, flag1:  std_logic;
begin
evt<=(evt_ext or evt_std) and not(window_mode);
s1_dbg<= int_sig1;
s0_dbg<= int_sig0;

process(clk)
begin
if clk'event and clk = '1' then
	if flag='1' then
	counter_out<=counter;
	end if;
end if;
end process;
 
process(evt, reset)
begin
	if reset='1' then
		int_sig0<='0';
		err<='0';
		elsif(evt'event and evt='1') then
			if int_sig0='1' then
				err<='1';
			else
				int_sig0<='1';
				err<='0'; --20032014
			end if;
		end if;
--	end if;	
end process;

process(clk,reset)
begin
	if reset='1' then
		int_sig1<='0';
		attached_signal<='0';
		elsif (clk'event and clk='1') then
			if int_sig0='1' then
			int_sig1<='1';
			end if;
			if int_sig11='1' then
				attached_signal<='1';
			end if;
		end if;
end process;
int_sig11<= int_sig1;
saw<=flag;
flag<=int_sig0 and not(attached_signal);	
attached_signal_out<=attached_signal;
as<=attached_signal;
end main_distribution_system_arch;