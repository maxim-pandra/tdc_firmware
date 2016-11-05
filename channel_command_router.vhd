----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:11 06/18/2016 
-- Design Name: 
-- Module Name:    channel_command_router - Behavioral 
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

entity channel_command_router is
    Port ( PORT_ID : in  STD_LOGIC_VECTOR (7 downto 0);
           pb_wr : in  STD_LOGIC;
           pb_rd : in  STD_LOGIC;
           pb_data_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  channel_clear : out STD_LOGIC_VECTOR (3 downto 0);
			  channel_state : in STD_LOGIC_VECTOR (7 downto 0); -- indicates state of each channel (2 bit for a channel, so we can get states of all 4 channels
           pb_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  counter_in_0, counter_in_1,counter_in_2, counter_in_3: out  STD_LOGIC_VECTOR (15 downto 0);
           present : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end channel_command_router;

architecture Behavioral of channel_command_router is
	constant PB_PORT_STATE_OUT	: std_logic_vector(7 downto 0)	:= X"E4";
	constant PB_PORT_CLEAR_IN	: std_logic_vector(7 downto 0)	:= X"E3";
	constant PB_PORT_COUNTER_IN : std_logic_vector(7 downto 0)	:= X"E9";
	constant PB_PORT_COUNTER_LSB_OUT	: std_logic_vector(7 downto 0)	:= X"E7";
	constant PB_PORT_COUNTER_MSB_OUT	: std_logic_vector(7 downto 0)	:= X"E8";


	type state_counter_out_transmitter is (
		IDLE,
		TR_COUTER_0M,
		TR_COUTER_0L,
		TR_COUTER_1M,
		TR_COUTER_1L,
		TR_COUTER_2M,
		TR_COUTER_2L,
		TR_COUTER_3M,
		TR_COUTER_3L);

	signal pb_state_out_present : std_logic;
	signal pb_iread_present : std_logic;
	signal pb_counter_lsb_present : std_logic;
	signal pb_counter_msb_present : std_logic;
	signal pb_present_bus : std_logic_vector(3 downto 0);
	signal pb_state_out_bus		: std_logic_vector(7 downto 0);
	-- counter reated
	signal pb_counter_out_bus  : std_logic_vector(7 downto 0);
	signal lsb_counter_buffer 	: std_logic_vector(7 downto 0);
	signal msb_counter_buffer 	: std_logic_vector(7 downto 0);
	
	
	signal pb_clear_in_bus		: std_logic_vector(3 downto 0);
	signal pb_counter_in_bus	: std_logic_vector(3 downto 0);
	signal counter_reading_state : std_logic_vector(1 downto 0);
	signal state_reg				: state_counter_out_transmitter;
begin

	--bind present flags to present bus
	pb_present_bus(0 downto 0) <= pb_state_out_present; --state
	pb_present_bus(1 downto 1) <= pb_iread_present;
	pb_present_bus(2 downto 2) <= pb_counter_lsb_present;
	pb_present_bus(3 downto 3) <= pb_counter_msb_present;


	--select specific channel, or all channels mode
	process(clk)
	begin
		if clk'event and clk = '1' then
			if reset_counter_mode = '1' then
				pb_counter_in_bus <= (others => '0');
			else if pb_wr = '1' then
				if port_id = PB_PORT_COUNTER_IN	 then
					--ToDo: do something if accum GET COUNTER mode selection has been captured
					pb_counter_in_bus <= pb_data_in;
					get_couter
				end if;
			end if;
		end if;
	end process;
	
	process(clka, reset_tr_counter)
	begin
	
	if (clka'event and clka='1') then
		if reset_tr_counter='1' then
			state_reg<=IDLE;
			pb_counter_lsb_present <= '0';
			pb_counter_msb_present <= '0';
			all_channels_flag <='0';
			pb_counter_byte_out <= X"00"
		else if (stae_reg = IDLE) then
			case pb_counter_in_bus is
				when X"05" => 
					state_reg<= TR_COUTER_3M;
					all_channels_flag <= '1';
				when X"04" => 
					--send chanel #3 counter 
					state_reg<= TR_COUTER_3M;
					all_channels_flag <= '0';
				when X"03" => 
					--send chanel #2 counter
					state_reg<= TR_COUTER_2M;
					all_channels_flag <= '0';
				when X"02"  => 
					--send chanel #1 counter
					state_reg<= TR_COUTER_1M;
					all_channels_flag <= '0';
				when X"01"  => 
					--send chanel #0 counter
					state_reg<= TR_COUTER_0M;
					all_channels_flag <= '0';
				when others => 
					pb_counter_out_present <= '0';
					pb_data_out <= X"00";
					all_channels_flag <= '0';
			end case;

		else if (pb_counter_msb_recieved = '1') then
			if (state_reg = TR_COUTER_0M) then
				state_reg<= TR_COUTER_0L;
				lsb_counter_buffer<= counter_in_0(7 downto 0);
				msb_counter_buffer<= counter_in_0(15 downto 8);
			else if (state_reg = TR_COUTER_0L) then
				lsb_counter_buffer<= lsb_counter_buffer;
				state_reg<= IDLE;
			else if (state_reg = TR_COUTER_1M) then
				lsb_counter_buffer<= counter_in_0(7 downto 0);
				msb_counter_buffer<= counter_in_0(15 downto 8);
				state_reg<= TR_COUTER_1L
			else if (state_reg = TR_COUTER_1L) then
				lsb_counter_buffer<= lsb_counter_buffer;
				if ( all_channels_flag = 1 ) then
					state_reg<= TR_COUTER_0M;
				else
					state_reg<= IDLE;
				end if;
			else if (state_reg = TR_COUTER_2M) then
				lsb_counter_buffer<= counter_in_0(7 downto 0);
				msb_counter_buffer<= counter_in_0(15 downto 8);
				state_reg<= TR_COUTER_2L
			else if (state_reg = TR_COUTER_2L) then
				lsb_counter_buffer<= lsb_counter_buffer;
				if ( all_channels_flag = 1 ) then
					state_reg<= TR_COUTER_1M;
				else
					state_reg<= IDLE;
				end if;
			else if (state_reg = TR_COUTER_3M) then
				lsb_counter_buffer<= counter_in_0(7 downto 0);
				msb_counter_buffer<= counter_in_0(15 downto 8);
				state_reg<= TR_COUTER_3L
			else if (state_reg = TR_COUTER_3L) then
				lsb_counter_buffer<= lsb_counter_buffer;
				if ( all_channels_flag = 1 ) then
					state_reg<= TR_COUTER_2M;
				else
					state_reg<= IDLE;
				end if;
			end if
		else 
			state_reg<=state_reg;
			msb_counter_buffer <= msb_counter_buffer;
			lsb_counter_buffer <= lsb_counter_buffer;
		end if;
	end if;
	end process;

	
	process(clk)
	begin
		if clk'event and clk = '1' then


			case pb_counter_in_bus is
				when X"05" => 
					-- begin sequental writing of counter values
				when X"04" => 
					--send chanel #3 counter 
					<output> <= <input2>;
				when X"03" => 
					--send chanel #2 counter
					<output> <= <input3>;
				when X"02"  => 
					--send chanel #1 counter
					<output> <= <input4>;
				when X"01"  => 
					--send chanel #0 counter
					<output> <= <input4>;
				when others => 
					pb_counter_out_present <= '0';
					pb_data_out <= X"00";
			end case;






			if (pb_counter_in_bus = X"05") then
				--statemachine body which will transmit counters of all channels one by one
				
			else if (pb_counter_in_bus <> X"00") then

				--case pb_counterinbus
				--if 1 -> chanel 1 and reset
				--if 2 -> chanel 2 and reset
				--...
			end if;
		end if;
	end process;




	--GetCounter!
	--get LSB COUNTER
	process(clk)
	begin
		if clk'event and clk = '1' then
			pb_counter_lsb_present <= '0';
			if pb_wr = '1' then
				if port_id = PB_PORT_COUNTER_LSB_OUT then
					--ToDo: do something if accum GET COUNTER LSB has been captured
					pb_counter_lsb_present <= '1';
				end if;
			end if;
		end if;
	end;
	--get MSB COUNTER
	process(clk)
	begin
		if clk'event and clk = '1' then
			pb_counter_msb_present <= '0';
			if pb_wr = '1' then
				if port_id = PB_PORT_COUNTER_MSB_OUT then
					--ToDo: do something if accum GET COUNTER MSB has been captured
					pb_counter_msb_present <= '1';
				end if;
			end if;
		end if;
	end;
	
	--GetState!
	process(clk)
	begin
		if clk'event and clk = '1' then
			pb_state_out_bus <= X"00";
			pb_state_out_present <= '0';
			if pb_rd = '1' then
				if PORT_ID = PB_PORT_STATE_OUT then --not sure if we need  (7 downto 0) here
					--ToDo: do something if accum GET STATE has been captured
					--WhatsDone: we just assign pb_state_out_present to '1'
					pb_state_out_bus <= channel_state;
					pb_state_out_present <= '1';
				end if;
			end if;
		end if;
	end process;
	
	--Clear!
	process(clk)
	begin
		if clk'event and clk = '1' then
			pb_clear_in_bus <= (others => '0');
			if pb_wr = '1' then
				if port_id = PB_PORT_CLEAR_IN then --not sure if we need  (7 downto 0) here
					pb_clear_in_bus <= pb_data_in(3 downto 0); -- this should be just redirected to specific channels
				end if;				
			end if;
		end if;
	end process;
	channel_clear <= pb_clear_in_bus; --assign internal signal to external one;
	
	process(clk)
	begin
		if clk'event and clk = '1' then
			pb_
		end if;
	end process;
	
	-- we should place a multipexer here for correct data to be selected when provided to picoblaze
	-- the following multiplexer was copypasted from language templates
	-- ÒÓÒ ÌÎÆÍÎ ÐÀÁÎÒÀÒÜ Ñ ÏÐÈÎÐÈÒÅÒÀÌÈ
	process (pb_present_bus, pb_state_out_bus,<input2>,<input3>,<input4>)
	begin
		case pb_present_bus is
			when "0001" => --incremantal reading
				present <= '1';
				pb_data_out <= pb_state_out_bus;
			when "0010" | "0011" => --channels states
				present <= '1';
				pb_data_out <= pb_state_out_bus;
			when "0100" | "0101" |"0110" | "0111" => --lsb
				present <= '1';
				pb_data_out <= lsb_counter_buffer;
			when "1000" | "1001" |"1010" | "1011" | "1100" | "1101" |"1110" | "1111"  => --msb
				present <= '1';
				pb_data_out <= msb_counter_buffer;
			when others => 
				present <= '0';
				pb_data_out <= X"00";
		end case;
	end process;

end Behavioral;

