-- этот модуль реалезует управление ацп, а именно:
-- по управл€ющеу сигналу attached_signal синхронно генерирует
-- сигнал cs, производит выгрузку данных в регистр data_bus,
-- генерирут сброс adc_reset, генерирует сигнал готовности sync_ready.
-- перезагружаетс€ по сигналу reset.
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_drive is
	port(
		attached_signal, sCLK,reset, sdata: in std_logic;
		ready_sync, cs: out std_logic;
		data_bus: out std_logic_vector(11 downto 0);
		adc_reset: out std_logic
		);
end adc_drive;

architecture adc_drive_arch of adc_drive is
	signal d_reg: std_logic_vector(11 downto 0);
    signal ready :std_logic;
	signal c_reg: unsigned (3 downto 0);
	type state_type is (IDLE,START,SHIFTING,HOLD);
	signal state_reg:state_type;
begin

process(sCLK, reset)   -- there was "process(sCLK)" edit 03.11.2012
begin
	if (reset='1') then
		state_reg<=IDLE;
		ready<='0';
		cs<='1';
		adc_reset<='1';
		c_reg<=(others=>'0');
		d_reg<=(others=>'0');
	elsif (sCLK'event and sCLK='1') then
		state_reg<=state_reg;
		cs<='1';
		d_reg<=d_reg;
		c_reg<=c_reg;
		adc_reset<='1';
		ready<='0';
		if state_reg=IDLE then
			if attached_signal='1' then 
				state_reg<=SHIFTING;
				cs<='0';
			end if;
		elsif state_reg=SHIFTING then
			c_reg<=c_reg+1;
			cs<='0';
			if c_reg<15 then
			--d_reg<=sdata & d_reg(11 downto 1);
			d_reg<=d_reg(10 downto 0) & sdata;
			end if;
			if c_reg>2 then 
				adc_reset<='0';
			end if;
			if c_reg=15 then
				ready<='1';
				cs<='1';
				adc_reset<='1';
				state_reg<=HOLD;
			end if;
		elsif state_reg=HOLD then
			state_reg<=HOLD;
			ready<='1';
		end if;
	end if;
end process;

ready_sync<=ready;
data_bus<= d_reg;
end adc_drive_arch;