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
	 reset: IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

	type state_type is (ACCUMULATE, ERRASE, TRANSMIT);
	
	constant PB_PORT_IREAD_OUT	: std_logic_vector(7 downto 0)	:= X"E5";
	constant PB_PORT_DATA_IN	: std_logic_vector(7 downto 0) 	:= X"E6";
	
	constant STATE_ERRASE	: std_logic_vector(1 downto 0)	:= "00";
	constant STATE_TRANSMIT	: std_logic_vector(1 downto 0)	:= "01";
	constant STATE_ACCUMULATE	: std_logic_vector(1 downto 0)	:= "10"; --
	constant STATE_SPARE		: std_logic_vector(1 downto 0)	:= "11"; --this state we can use for something in future

	signal state, state_next				: state_type;
	signal transmit_counter 				: std_logic_vector(11 downto 0);
	signal transmit_bram_selected			: std_logic_vector(1 downto 0);
	signal transmit_counter_reset			: std_logic;
	signal accum_bram_selected				: std_logic_vector(1 downto 0);
	signal write_enable						: std_logic;
	signal bram_enable						: std_logic;
	
	signal wea	: std_logic_vector(1 downto 0); --depends on brams amount
	

begin

	hist_accum_0 : little_singleport_bram
	  PORT MAP (
		 clka => clk,
		 ena => ena,
		 wea => wea(0 downto 0),
		 addra => addra,
		 dina => dina,
		 douta => douta
	  );
	  
	hist_accum_1 : little_singleport_bram
	  PORT MAP (
		 clka => clk,
		 ena => ena,
		 wea => wea(1 downto 1),
		 addra => addra,
		 dina => dina,
		 douta => douta
	  );
	  
	hist_accum_2 : little_singleport_bram
	  PORT MAP (
		 clka => clk,
		 ena => ena,
		 wea => wea(2 downto 2),
		 addra => addra,
		 dina => dina,
		 douta => douta
	  );

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
			errase_en <= '1';
			accumulate_en <= '0';
			transmit_en <= '0';			
			-- do something on errase state, form command to clear bram
		else if state = ACCUMULATE then
			accumulate_en <= '1';
			transmit_en <= '0';
			errase_en <= '0';
			--some outputs when accumulate
		else if state = TRANSMIT then
			--do somehting on transmit (assign outputs)
			transmit_en <= '1';
			errase_en <= '0';
			accumulate_en <= '0';
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
					go_errase <= '0'
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
	accum_bram_selected <= adc(11 downto 10);
	
	--ADC++ADC++ADC++ADC++ADC++ADC--
	wea <= "001" when (accum_bram_selected = "00" and write_enable = '1') else
			 "010" when (accum_bram_selected = "01" and write_enable = '1') else
			 "100" when	(accum_bram_selected = "10" and write_enable = '1') else
			 "000";
	--ADC--ADC--ADC--ADC--ADC--ADC--



	BASIC_INCREMENT: process(clk) 
	begin
		if (clk = '1' and clk'event) then
			if(reset = '1') then
				--here reset everything
			else if(ready = '1');
				--do something if ready detected
			end if;
		end if;
	end process;


	--Picoblaze commands decoder:	
	--GetData!
	--select specific channel, or all channels mode
	process(clk)
	begin
		if clk'event and clk = '1' then
			if pb_wr = '1' then
				if port_id = PB_PORT_DATA_IN then 
					--ToDo: do something if accum GET DATA mode SELECTION has been captured
				end if;
			end if;
		end if;
	end;
	
	--incremental reading(selected channel, or all 4 channels one after another)
	process(clk)
	begin
		if clk'event and clk = '1' then
			if pb_wr = '1' then
				if port_id = PB_PORT_IREAD_OUT	 then
					--ToDo: do something if accum GET DATA INCREMENTAL reading has been captured
				end if;
			end if;
		end if;
	end;
	
	
end accumulator_architecture;

