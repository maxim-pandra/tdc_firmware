library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity bRAM_module2 is
 port(
	clka,reset_c										   		: in std_logic;
	ready_bus											   		: in std_logic_vector(3 downto 0);
	main_bus1, main_bus2, main_bus3, main_bus4			: in std_logic_vector(60 downto 0);
	reset_bus						   				   		: out std_logic_vector(3 downto 0);
	addra_curr0,addra_curr1,curr_wr_lsb,curr_wr_msb		: out std_logic_vector(7 downto 0);
	present0															: out std_logic;
	present1															: out std_logic;
	bramEnable														: in std_logic;
	IntRegSel, mem_overflow_reset								: in std_logic;
	
	-- controller bram interface signals begin
	clkb_ctrl							   : in std_logic;
	web_ctrl								   : in std_logic;
	dinb_ctrl							   : in  std_logic_vector (7 downto 0);
	doutb_ctrl							   : out std_logic_vector (7 downto 0);
	addrb_ctrl							   : in  std_logic_vector (15 downto 0);
	-- controller bram interface signals end
	 web0dbug: OUT STD_LOGIC
	);
end bRAM_module2;

architecture bRAM_arch of bRAM_module2 is 
	
------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT memory64
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

	type state_type is (READ1,WRITE1,WRITE2,WRITE3,WRITE4,SLEEP,WAIT1,WAIT2,WAIT3);
	
	signal state_reg, state_next			: state_type;
	signal doutb1,doutb2,doutb3,doutb4, dinb_buff, dinb_ctrl_shifted  : std_logic_vector(7 downto 0);
	signal bram_selected						: std_logic_vector(1 downto 0);
	signal addrb1,addrb2,addrb3,addrb4	: std_logic_vector(8 downto 0);
	signal addra								: std_logic_vector(8 downto 0);
	signal addra_reg_u						: unsigned(15 downto 0) := "0000000000000111";
	signal  addra_next						: unsigned(15 downto 0);
	signal addra_reg                    : std_logic_vector(15 downto 0);
	signal wea,web								: std_logic_vector(3 downto 0);
	signal data_pack                    : std_logic_vector(63 downto 0);
	signal internal_rd_index				: std_logic_vector(13 downto 0);
	signal enable, ena, enb, web0dbug_buff, flag,memOverflowFlag, flag1, reasonStop, reasonContinue :std_logic;

begin
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	first_bram : memory64
	  PORT MAP (
		clka => clka,
	   ena => ena,	
		wea => wea(0 downto 0),
		addra => addra,
		dina => data_pack,
		douta => open, --douta,
		clkb => clkb_ctrl,
		enb => enb,
		web => web(0 downto 0),
		addrb => addrb_ctrl(11 downto 0),
		dinb => dinb_ctrl_shifted,
		doutb => doutb1
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	second_bram : memory64
	  PORT MAP (
		clka => clka,
	   ena => ena,	
		wea => wea(1 downto 1),
		addra => addra,
		dina => data_pack,
		douta => open, --douta,
		clkb => clkb_ctrl,
		enb => enb,
		web => web(1 downto 1),
		addrb => addrb_ctrl(11 downto 0),
		dinb => dinb_ctrl_shifted,
		doutb => doutb2
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	third_bram : memory64
	  PORT MAP (
		clka => clka,
		ena => ena,
		wea => wea(2 downto 2),
		addra => addra,
		dina => data_pack,
		douta => open, --douta,
		clkb => clkb_ctrl,
		enb => enb,
		web => web(2 downto 2),
		addrb => addrb_ctrl(11 downto 0),
		dinb => dinb_ctrl_shifted,
		doutb => doutb3
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	option_bram : memory64
	   PORT MAP (
		 clka => clka,
		 ena => ena,
		 wea => wea(3 downto 3),
		 addra => addra,
		 dina => data_pack,
		 douta => open, --douta,
		 clkb => clkb_ctrl,
		 enb => enb,
		 web => web(3 downto 3),
		 addrb => addrb_ctrl(11 downto 0),
		 dinb => dinb_ctrl_shifted,
		 doutb => doutb4
	   );
	 --INST_TAG_END ------ End INSTANTIATION Template ------------
	
	ena<='1';
	enb<='1';
	flag1<=flag;
	process(clka, reset_c)
	begin
	if reset_c='1' then
		state_reg<=READ1;
	elsif (clka'event and clka='1') then
	
		reset_bus(0)<='0';
		reset_bus(1)<='0';
		reset_bus(2)<='0';
		if (state_reg=READ1) then
			if (reasonStop='1') then-- refactoring Memory Manager to Provide nonconditional writing
				state_reg<=SLEEP;
			elsif (ready_bus(1) ='1') then
				state_reg<= WRITE2;
			elsif(ready_bus(2) ='1') then
				state_reg<= WRITE3;
			elsif (ready_bus(0) ='1') then
				state_reg<= WRITE1;
			else
				state_reg<=READ1;
			end if;
			addra_reg_u<=addra_reg_u;
			enable<='0';
			flag<='0';
			data_pack <="1111111111111111111111111111111111111111111111111111111111111111";	
		elsif (state_reg=WRITE1)then
			if (reasonStop='1') then
			state_reg<=SLEEP;
			else
			state_reg<=WAIT1;
		--		if (flag1='0') then
				enable<='1';
				addra_reg_u<=addra_reg_u + 1;
				data_pack <="000"& main_bus1;
				reset_bus(0)<='1';
		--		end if;
			end if;	
		elsif (state_reg<=WRITE2) then
			if (reasonStop='1') then
			state_reg<=SLEEP;
			else
			state_reg<=WAIT1;
			enable<='1';
			--flag<='0';
			addra_reg_u<=addra_reg_u + 1;
			data_pack <="001"& main_bus2;
			reset_bus(1)<='1';
			end if;
		elsif (state_reg<=WRITE3)then
			if (reasonStop='1') then
			state_reg<=SLEEP;
			else
			state_reg<=WAIT1;
			enable<='1';
				--if flag1='1' then
				--flag<= '0'; else
				--flag<='1';
				--end if;
			addra_reg_u<=addra_reg_u + 1;
			data_pack <="010"& main_bus3;
			reset_bus(2)<='1';
			end if;
		elsif (state_reg=SLEEP) then
			if (reasonContinue='1') then
			state_reg <= READ1;
			else
			state_reg <= SLEEP;
			end if;
		elsif (state_reg=WAIT1) then
			state_reg<= READ1;
			addra_reg_u<=addra_reg_u;
			enable<='0';
			flag<='0';
			data_pack <="1111111111111111111111111111111111111111111111111111111111111111";	
			reset_bus(0)<='0';
			reset_bus(1)<='0';
			reset_bus(2)<='0';

		elsif (state_reg=WAIT2) then
			state_reg<= READ1;
		elsif (state_reg=WAIT3) then
			state_reg<= READ1;
		end if;
		-- provides reading through the port B 
		if bram_selected="00"    then
        doutb_ctrl<=doutb1;
      elsif bram_selected="01" then
        doutb_ctrl<=doutb2;
      elsif bram_selected="10" then
        doutb_ctrl<=doutb3;
      elsif bram_selected="11" then
		  doutb_ctrl<=doutb4;
		else
		  doutb_ctrl<="10011001";
      end if;	
	
	end if;
	end process;
	
	 addra_reg<=std_logic_vector(addra_reg_u);	
	 addra<=addra_reg(8 downto 0);
	 
	 bram_selected<=addrb_ctrl(13 downto 12);
	 
	 addra_curr0<= addrb_ctrl(7 downto 0); --addra_reg(7  downto 0);
	 addra_curr1<= addrb_ctrl(15 downto 8); --addra_reg(15 downto 8);
	 curr_wr_msb(6 downto 3)<="0000";
	 curr_wr_msb(2 downto 0)<= addra_reg(10 downto 8);
	 curr_wr_lsb<= addra_reg(7 downto 0);
	process(clka)
	begin
	if (clka'event and clka='1') then
		if	  (addrb_ctrl(14 downto 12)="100" and web_ctrl='1') then web<="0001";		--data_b_in_reg<=dinb_ctrl;
		elsif(addrb_ctrl(14 downto 12)="101" and web_ctrl='1') then web<="0010";
		elsif(addrb_ctrl(14 downto 12)="110" and web_ctrl='1') then web<="0100";
		elsif(addrb_ctrl(14 downto 12)="111" and web_ctrl='1') then web<="1000";
		else web<="0000";
		end if;
		if IntRegSel = '1' then
			internal_rd_index(13)<=addrb_ctrl(13);
			internal_rd_index(12)<=addrb_ctrl(12);
			internal_rd_index(11)<=addrb_ctrl(11);
			internal_rd_index(10)<=addrb_ctrl(10);
			internal_rd_index(9)	<=addrb_ctrl(9);
			internal_rd_index(8)	<=addrb_ctrl(8);
			internal_rd_index(7)	<=addrb_ctrl(7);
			internal_rd_index(6)	<=addrb_ctrl(6);
			internal_rd_index(5)	<=addrb_ctrl(5);
			internal_rd_index(4)	<=addrb_ctrl(4);
			internal_rd_index(3)	<=addrb_ctrl(3);
			internal_rd_index(2)	<=addrb_ctrl(2);
			internal_rd_index(1)	<=addrb_ctrl(1);
			internal_rd_index(0)	<=addrb_ctrl(0);
		end if;

web0dbug_buff<=
						(addra_reg(8) xor not addrb_ctrl(8))and
						(addra_reg(7) xor not addrb_ctrl(7))and
						(addra_reg(6) xor not addrb_ctrl(6)) and
						(addra_reg(5) xor not addrb_ctrl(5)) and
						(addra_reg(4) xor not addrb_ctrl(4)) and
						(addra_reg(3) xor not addrb_ctrl(3)) and
						(addra_reg(2) xor not addrb_ctrl(2)) and
						(addra_reg(1) xor not addrb_ctrl(1)) and
						(addra_reg(0) xor not addrb_ctrl(0));
	end if;
	end process;
	
	reasonStop	 <=(addra_reg(11) xor not internal_rd_index(13)) and
						(addra_reg(10) xor not internal_rd_index(12)) and
						(addra_reg(9) xor not internal_rd_index(11)) and
						(addra_reg(8) xor not internal_rd_index(10)) and
						(addra_reg(7) xor not internal_rd_index(9)) and
						(addra_reg(6) xor not internal_rd_index(8)) and
						(addra_reg(5) xor not internal_rd_index(7)) and
						(addra_reg(4) xor not internal_rd_index(6)) and
						(addra_reg(3) xor not internal_rd_index(5)) and
						(addra_reg(2) xor not internal_rd_index(4)) and
						(addra_reg(1) xor not internal_rd_index(3)) and
						(addra_reg(0) xor not internal_rd_index(2));
	
	reasonContinue<=(addra_reg(4) xor internal_rd_index(6));
	
	process(clka)
	begin
	if (clka'event and clka='1') then
		dinb_buff<=dinb_ctrl;
		dinb_ctrl_shifted<=dinb_buff;
		memOverflowFlag<=memOverflowFlag;
		if mem_overflow_reset = '1' then
		memOverflowFlag<='0';
		elsif (reasonStop='1') and (enable = '1') then
		memOverflowFlag<='1';
		end if;
	end if;
	end process;
	
	curr_wr_msb(7)<=memOverflowFlag;
	web0dbug <= reasonContinue;
	present0 <= reasonStop;
	
	wea<="0001" when (addra_reg(10 downto 9)= "00" and enable='1') else   --and addra_reg(8:0) <> addrb_reg(8:0)
		  "0010" when (addra_reg(10 downto 9)= "01" and enable='1') else
		  "0100" when (addra_reg(10 downto 9)= "10" and enable='1') else
		  "1000" when (addra_reg(10 downto 9)= "11" and enable='1') else
		  "0000"; 
		  
--	web0dbug<=wea(0);
	
end bRAM_arch;