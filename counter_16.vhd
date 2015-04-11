 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity counter_16 is
--generic(N: integer:=8);
 port(
	clk, CLK_OOL, reset: in std_logic; --CLK_Mid
	q: out std_logic_vector (47 downto 0);
	CLK_OOL_16: out std_logic;
	c_out: out std_logic_vector(12 downto 0)
	);
end counter_16;

architecture arch_counter of counter_16 is
	signal r_reg_low, r_next_low: unsigned(12 downto 0);
	signal r_reg: unsigned(47 downto 0);
	signal r_next: unsigned(47 downto 0);
	signal 	q_big: std_logic_vector (47 downto 0);
	signal eventLow: std_logic;
begin
	c_out<= std_logic_vector(r_reg_low);
	
	process(clk)
	begin
	if (clk'event and clk='1') then
			r_reg<= r_next;
	end if;
	end process;
	
	
	process(CLK_OOL,reset)
	begin
	if reset='1' then
		r_reg_low<=(others=>'0');
		elsif (CLK_OOL'event and CLK_OOL='1') then
			r_reg_low<= r_next_low;
	end if;
	end process;
	
--	process(CLK_Mid)
--	begin
--		if (CLK_Mid'event and CLK_Mid='1')then
--				event_std1<=evt;
--		end if;
--	end process;
	
	process(CLK_OOL)     -- it is suppose to be clock divider [clk_ool div 16]
	begin
	if(CLK_OOL'event and CLK_OOL='1') then
			eventLow<='0';
		if (r_reg(13 downto 0)="01111111111111") then            --or r_reg=(2**20-2**10)) ---THERE was r_reg_low(8)
			eventLow<='1';                  --some changes here
		end if;
	end if;
	end process;

	-- process(clk) 05/10/13
	-- begin
	-- if (clk'event and clk='1') then
		-- if event_std1='1' then
			-- evt<='0';
		-- elsif r_reg=(2**20-2**10-1) then            --or r_reg=(2**20-2**10)) 
			-- evt<='1';
		-- end if;
	-- end if;
	-- end process;
	CLK_OOL_16<= eventLow;
	r_next<= r_reg+1;
	r_next_low<= r_reg_low+1;
--	q_big<=std_logic_vector(r_reg);
--	q<=q_big(15 downto 0);
	q<=std_logic_vector(r_reg);
end arch_counter;
