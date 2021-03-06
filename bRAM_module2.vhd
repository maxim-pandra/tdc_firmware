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
	bramDebug														: out std_logic_vector(7 downto 0);
	present0															: out std_logic;
	present1															: out std_logic;
	bramEnable														: in std_logic;
	IntRegSel, mem_overflow_reset								: in std_logic;
	pb_wr_strobe													: in std_logic;
	PORT_ID															: in std_logic_vector(7 downto 0);
	
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
	signal doutb0,doutb1,doutb2,doutb3, doutb4, doutb5, doutb6, doutb7, dinb_buff, dinb_ctrl_shifted  : std_logic_vector(7 downto 0);
	signal bram_selected						: std_logic_vector(2 downto 0);
	signal addrb1,addrb2,addrb3,addrb4	: std_logic_vector(8 downto 0);
	signal addra								: std_logic_vector(8 downto 0);
	signal addra_reg_u						: unsigned(15 downto 0) := X"0000";
	signal  addra_next						: unsigned(15 downto 0);
	signal internal_rd_index_prev			: unsigned(14 downto 0);
	signal addra_reg                    : std_logic_vector(15 downto 0);
	signal wea,web								: std_logic_vector(7 downto 0); --depends on brams amount
	signal data_pack                    : std_logic_vector(63 downto 0);
	signal internal_rd_index				: std_logic_vector(14 downto 0);
	signal reset_memory_pointers_port_id, reset_bram_manager			: std_logic;
	signal enable, ena, enb, web0dbug_buff, flag,memOverflowFlag, flag1, reasonStop, reasonContinue :std_logic;

begin
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	bram0 : memory64
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
		doutb => doutb0
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	bram1 : memory64
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
		doutb => doutb1
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	bram2 : memory64
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
		doutb => doutb2
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	bram3 : memory64
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
		 doutb => doutb3
	   );
	 --INST_TAG_END ------ End INSTANTIATION Template ------------
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	bram4 : memory64
	  PORT MAP (
		clka => clka,
	   ena => ena,	
		wea => wea(4 downto 4),
		addra => addra,
		dina => data_pack,
		douta => open, --douta,
		clkb => clkb_ctrl,
		enb => enb,
		web => web(4 downto 4),
		addrb => addrb_ctrl(11 downto 0),
		dinb => dinb_ctrl_shifted,
		doutb => doutb4
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	bram5 : memory64
	  PORT MAP (
		clka => clka,
	   ena => ena,	
		wea => wea(5 downto 5),
		addra => addra,
		dina => data_pack,
		douta => open, --douta,
		clkb => clkb_ctrl,
		enb => enb,
		web => web(5 downto 5),
		addrb => addrb_ctrl(11 downto 0),
		dinb => dinb_ctrl_shifted,
		doutb => doutb5
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	bram6 : memory64
	  PORT MAP (
		clka => clka,
		ena => ena,
		wea => wea(6 downto 6),
		addra => addra,
		dina => data_pack,
		douta => open, --douta,
		clkb => clkb_ctrl,
		enb => enb,
		web => web(6 downto 6),
		addrb => addrb_ctrl(11 downto 0),
		dinb => dinb_ctrl_shifted,
		doutb => doutb6
	  );
	-- INST_TAG_END ------ End INSTANTIATION Template ------------
	
	
		------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
	bram7 : memory64
	   PORT MAP (
		 clka => clka,
		 ena => ena,
		 wea => wea(7 downto 7),
		 addra => addra,
		 dina => data_pack,
		 douta => open, --douta,
		 clkb => clkb_ctrl,
		 enb => enb,
		 web => web(7 downto 7),
		 addrb => addrb_ctrl(11 downto 0),
		 dinb => dinb_ctrl_shifted,
		 doutb => doutb7
	   );
	 --INST_TAG_END ------ End INSTANTIATION Template ------------
	 
	ena<='1';
	enb<='1';
	flag1<=flag;
	process(clka, reset_bram_manager)
	begin
	
	if (clka'event and clka='1') then
	if reset_bram_manager='1' then
		state_reg<=READ1;
		addra_reg_u<=X"0000";
	else
		reset_bus(0)<='0';
		reset_bus(1)<='0';
		reset_bus(2)<='0';
		reset_bus(3)<='0';
		if (state_reg=READ1) then
			if (reasonStop='1') then-- refactoring Memory Manager to Provide nonconditional writing
				state_reg<=SLEEP;
			elsif (ready_bus(1) ='1') then
				state_reg<= WRITE2;
			elsif(ready_bus(2) ='1') then
				state_reg<= WRITE3;
			elsif(ready_bus(3) = '1') then
				state_reg<= WRITE4;
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
				--data_pack <="000" & main_bus1(60 downto 60) & "010001001100" & main_bus1(47 downto 0);
				data_pack <="000" & main_bus1(60 downto 0);
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
			--data_pack <="001"&  main_bus2(60 downto 60) & "010010110000" & main_bus2(47 downto 0);
			data_pack <="001"&  main_bus2(60 downto 0);
			reset_bus(1)<='1';
			end if;
		elsif (state_reg<=WRITE3)then
			if (reasonStop='1') then
			state_reg<=SLEEP;
			else
			state_reg<=WAIT1;
			enable<='1';
			addra_reg_u<=addra_reg_u + 1;
			data_pack <="010"& main_bus3(60 downto 0);
			reset_bus(2)<='1';
			end if;
		elsif (state_reg<=WRITE4)then
			if (reasonStop='1') then
			state_reg<=SLEEP;
			else
			state_reg<=WAIT1;
			enable<='1';
			addra_reg_u<=addra_reg_u + 1;
			data_pack <="011"& main_bus4(60 downto 0);
			reset_bus(3)<='1';
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
			reset_bus(3)<='0';

		elsif (state_reg=WAIT2) then
			state_reg<= READ1;
		elsif (state_reg=WAIT3) then
			state_reg<= READ1;
		end if;
		-- provides reading through the port B 
		if bram_selected=O"0"    then
        doutb_ctrl<=doutb0;
      elsif bram_selected=O"1" then
        doutb_ctrl<=doutb1;
      elsif bram_selected=O"2" then
        doutb_ctrl<=doutb2;
      elsif bram_selected=O"3" then
		  doutb_ctrl<=doutb3;
		
		elsif bram_selected=O"4"    then
        doutb_ctrl<=doutb4;
      elsif bram_selected=O"5" then
        doutb_ctrl<=doutb5;
      elsif bram_selected=O"6" then
        doutb_ctrl<=doutb6;
      elsif bram_selected=O"7" then
		  doutb_ctrl<=doutb7;
		
		else
		  --this should be never called
		  doutb_ctrl<="10011001";
      end if;	
	end if;
	end if;
	end process;
	
	 addra_reg<=std_logic_vector(addra_reg_u);	
	 addra<=addra_reg(8 downto 0);
	 
	 bram_selected<=addrb_ctrl(14 downto 12);
	 
	 addra_curr0<= addrb_ctrl(7 downto 0); --addra_reg(7  downto 0);
	 addra_curr1(6 downto 0) <= addrb_ctrl(14 downto 8); --addra_reg(15 downto 8);
	 addra_curr1(7) <= '0';

	 curr_wr_msb(7)<=memOverflowFlag;	
	 curr_wr_msb(6 downto 0)<= addra_reg(11 downto 5);
	 curr_wr_lsb(7 downto 3)<= addra_reg(4 downto 0);
	 curr_wr_lsb(2 downto 0)<= "000";
	 
	process(clka)
	begin
	if (clka'event and clka='1') then
		if	  (addrb_ctrl(14 downto 12)=O"0" and web_ctrl='1') then web<=X"01";		--data_b_in_reg<=dinb_ctrl;
		elsif(addrb_ctrl(14 downto 12)=O"1" and web_ctrl='1') then web<=X"02";
		elsif(addrb_ctrl(14 downto 12)=O"2" and web_ctrl='1') then web<=X"04";
		elsif(addrb_ctrl(14 downto 12)=O"3" and web_ctrl='1') then web<=X"08";
		
		elsif(addrb_ctrl(14 downto 12)=O"4" and web_ctrl='1') then web<=X"10";		--data_b_in_reg<=dinb_ctrl;
		elsif(addrb_ctrl(14 downto 12)=O"5" and web_ctrl='1') then web<=X"20";
		elsif(addrb_ctrl(14 downto 12)=O"6" and web_ctrl='1') then web<=X"40";
		elsif(addrb_ctrl(14 downto 12)=O"7" and web_ctrl='1') then web<=X"80";
		
		else web<=X"00";
		end if;
		
--		if IntRegSel = '1' then
			internal_rd_index(14)<=addrb_ctrl(14);
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
			internal_rd_index_prev(14 downto 0) <= unsigned(internal_rd_index(14 downto 0)) - 8;
--		end if;
	end if;
	end process;
	
	reasonStop	 <=(addra_reg(11) xor not internal_rd_index_prev(14)) and
						(addra_reg(10) xor not internal_rd_index_prev(13)) and
						(addra_reg(9) xor not internal_rd_index_prev(12)) and
						(addra_reg(8) xor not internal_rd_index_prev(11)) and
						(addra_reg(7) xor not internal_rd_index_prev(10)) and
						(addra_reg(6) xor not internal_rd_index_prev(9)) and
						(addra_reg(5) xor not internal_rd_index_prev(8)) and
						(addra_reg(4) xor not internal_rd_index_prev(7)) and
						(addra_reg(3) xor not internal_rd_index_prev(6)) and
						(addra_reg(2) xor not internal_rd_index_prev(5)) and
						(addra_reg(1) xor not internal_rd_index_prev(4)) and
						(addra_reg(0) xor not internal_rd_index_prev(3));

	--reasonContinue<=(addra_reg(4) xor internal_rd_index(7));
	reasonContinue<='1' when (addra_reg(11 downto 0)=(std_logic_vector((unsigned(internal_rd_index(14 downto 3)) - 2)))) else
		  '0'; 


	
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
	
	present0 <= reasonStop;
	
	wea<= X"01" when (addra_reg(11 downto 9)= O"0" and enable='1') else 
		   X"02" when (addra_reg(11 downto 9)= O"1" and enable='1') else
		   X"04" when (addra_reg(11 downto 9)= O"2" and enable='1') else
		   X"08" when (addra_reg(11 downto 9)= O"3" and enable='1') else
		   
			X"10" when (addra_reg(11 downto 9)= O"4" and enable='1') else 
		   X"20" when (addra_reg(11 downto 9)= O"5" and enable='1') else
		   X"40" when (addra_reg(11 downto 9)= O"6" and enable='1') else
		   X"80" when (addra_reg(11 downto 9)= O"7" and enable='1') else
		   
			X"00"; 
		  
--	web0dbug<=wea(0);
	
bramDebug(0)<= reasonStop;
bramDebug(1)<= reasonContinue;
bramDebug(2)<= enable;
bramDebug(3)<= reset_bram_manager;
bramDebug(4)<= reset_memory_pointers_port_id;
bramDebug(5 downto 7)<=wea(2 downto 0);

--deshifrate PORT_ID and wr to generate reset memory flag;
reset_memory_pointers_port_id<= '1' when PORT_ID = x"FF" else '0';

process (clka)							
begin
	if(clka = '1' and clka'event) then
		if (pb_wr_strobe = '1' and reset_memory_pointers_port_id = '1') then
			reset_bram_manager<=dinb_ctrl(0);
		else
			reset_bram_manager<='0';
		end if;
	end if;	
end process;
web0dbug<=reset_memory_pointers_port_id;	

end bRAM_arch;