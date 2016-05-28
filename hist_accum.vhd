----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Turaev
-- 
-- Create Date:    17:34:20 04/30/2016 
-- Design Name: 
-- Module Name:    hist_accum - accumulator_architecture 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hist_accum is
    Port ( port_id 		: in  STD_LOGIC_VECTOR (7 downto 0);
           pb_wr 			: in  STD_LOGIC;
           pb_rd 			: in  STD_LOGIC;
           pb_data_in 	: in  STD_LOGIC_VECTOR (7 downto 0);
           ready 			: in  STD_LOGIC;
           adc 			: in  STD_LOGIC_VECTOR (11 downto 0);
           clk 			: in  STD_LOGIC;
           pb_data_out 	: out  STD_LOGIC_VECTOR (7 downto 0);
           present 		: out  STD_LOGIC);
end hist_accum;

architecture accumulator_architecture of hist_accum is

COMPONENT little_singleport_bram
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

	type state_type is (ACCUMULATE, ERRASE, TRANSMIT);
	
	constant pb_port_clear	: std_logic_vector(7 downto 0)	:= X"E3";
	constant pb_port_state	: std_logic_vector(7 downto 0)	:= X"E4";
	constant pb_port_iread	: std_logic_vector(7 downto 0)	:= X"E5";
	constant pb_port_counter_lsb	: std_logic_vector(7 downto 0)	:= X"E7";
	constant pb_port_counter_msb	: std_logic_vector(7 downto 0)	:= X"E8";
	constant state_errase	: std_logic_vector(1 downto 0)	:= "00";
	constant state_transmit	: std_logic_vector(1 downto 0)	:= "00";
	constant state_accumulate	: std_logic_vector(1 downto 0)	:= "00";

	signal state, state_next				: state_type;
	signal transmit_counter 				: std_logic_vector(11 downto 0);
	signal transmit_bram_selected			: std_logic_vector(1 downto 0);
	signal transmit_counter_reset			: std_logic;

begin

	hist_accum_0 : little_singleport_bram
	  PORT MAP (
		 clka => clk,
		 ena => ena,
		 wea => wea,
		 addra => addra,
		 dina => dina,
		 douta => douta
	  );
	  
	hist_accum_1 : little_singleport_bram
	  PORT MAP (
		 clka => clk,
		 ena => ena,
		 wea => wea,
		 addra => addra,
		 dina => dina,
		 douta => douta
	  );
	  
	hist_accum_2 : little_singleport_bram
	  PORT MAP (
		 clka => clk,
		 ena => ena,
		 wea => wea,
		 addra => addra,
		 dina => dina,
		 douta => douta
	  );

	--Commands DECODER
	if (clk'event and clk = '1') then
		if (pb_wr = '1') then
			if (port_id(7 downto 0) = pb_port_state) then
				--DO something when pb port state requested. (generate a present signal for one clk and provide data on output bus
			end if;
		end if;
	end if;

	SYNC_PROC: process (clk)
	begin
		if (clk'event and clk = '1') then
			if (reset = '1') then
				state <= ERRASE;
				<output> <= '0';
			else
				state <= next_state;
				<output> <= <output>_i;
			-- assign other outputs to internal signals
			end if;        
		end if;
	end process;

	--MOORE State-Machine - Outputs based on state only
	OUTPUT_DECODE: process (state)
	begin
		--insert statements to decode internal output signals
		--below is simple example
		if state = ERRASE then
			<output>_i <= '1';
			-- do something on errase state, form command to clear bram
		else if state = ACCUMULATE then
			--some outputs when accumulate
		else if state = TRANSMIT then
			--do somehting on transmit (assign outputs)
		else
			<output>_i <= '0';
		end if;
	end process;

	NEXT_STATE_DECODE: process (state, go_accumulate, go_errase, go_tansmit)
	begin
		--declare default state for next_state to avoid latches
		next_state <= state;  --default is to stay in current state
		--insert statements to decode next_state
		--below is a simple example
		case (state) is
			when ERRASE =>
				if go_accumulate = '1' then
					next_state <= ACCUMULATE;
				end if;
			when TRANSMIT =>
				if go_errase = '1' then
					next_state <= ERRASE;
				else if go_accumulate = '1' then
					next_state <= ACCUMULATE;
				end if;
			when ACCUMULATE =>
				if go_errase = '1' then
					next_state <= ERRASE;
				else if go_transmit = '1' then
					next_state <= TRANSMIT;
				end if;
			when others =>
				next_state <= ERRASE;
		end case;      
	end process;


	-- this counter conts form 0 to max address and can be reseted
	process (clk) 
	begin
		if clk='1' and clk'event then
			if transmit_counter_reset='1' then 
				transmit_counter <= (others => '0');
			elsif <clock_enable>='1' then
				if transmit_counter = X"BFF" then         
					transmit_counter <= (others => '0');
				else
					transmit_counter <= transmit_counter + 1;
			end if;
		end if;
	end process; 

	transmit_bram_selected <= transmit_counter(11 downto 10);

end accumulator_architecture;

