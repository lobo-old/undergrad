LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.ALL;
USE  IEEE.STD_LOGIC_ARITH.ALL;
USE  IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.All;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY SCOMP2 IS
PORT(	clock, reset 				: IN STD_LOGIC;
      program_counter_out 		: OUT STD_LOGIC_VECTOR( 7 DOWNTO 0 );
      register_AC_out 			: OUT STD_LOGIC_VECTOR(15 DOWNTO 0 );
		memory_data_register_out	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0 );
		memory_address_register_out	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0 );
		memory_write_out: OUT STD_LOGIC;
		instruction_register_out: OUT STD_LOGIC_VECTOR(15 DOWNTO 0 );
		--novas portas para as instrucoes de leitura
		entree_Port 			: IN STD_LOGIC_VECTOR(15 DOWNTO 0 );
		sortie_Port_out	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0 )
	);
		
END SCOMP2;
ARCHITECTURE a OF SCOMP2 IS
TYPE STATE_TYPE IS ( reset_pc, fetch, decode, execute_add, execute_load, execute_store, 
		      execute_store2, execute_jump,execute_JZ,execute_JNZ,execute_OR,execute_AND,execute_XOR,execute_LDI,execute_ADDI,
				execute_IN,execute_OUT,execute_LSL,execute_LSR,execute_ROL,execute_ROR,execute_Test_in,execute_Test_res);				
SIGNAL state: STATE_TYPE;
SIGNAL instruction_register, memory_data_register 	: STD_LOGIC_VECTOR(15 DOWNTO 0 );
SIGNAL register_AC 				: STD_LOGIC_VECTOR(15 DOWNTO 0 );
SIGNAL program_counter 			: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
SIGNAL memory_address_register	: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
SIGNAL memory_write 			: STD_LOGIC;

SIGNAL auxRot: std_LOGIC_VECTOR(15 DOWNTO 0);
--SIGNAL auxInt: UNSIGNED;
--novo sinal para as instrucoes de leitura
SIGNAL sortie_Port	: STD_LOGIC_VECTOR(15 DOWNTO 0 );
SIGNAL RES_TEST: STD_LOGIC;
BEGIN
			-- Use Altsyncram function for computer's memory (256 16-bit words)
  memory: altsyncram
      GENERIC MAP (
		operation_mode => "SINGLE_PORT",
		width_a => 16,
		widthad_a => 8,
		lpm_type => "altsyncram",
		outdata_reg_a => "UNREGISTERED",
			-- Reads in mif file for initial program and data values
		init_file => "PROGRAMFINAL.mif",
		intended_device_family => "Cyclone")
		
	PORT MAP (	wren_a => memory_write, clock0 => clock, 
				address_a => memory_address_register, data_a => Register_AC, 
                q_a => memory_data_register );
			-- Output major signals for simulation
     	program_counter_out 		<= program_counter;
     	register_AC_out 			<= register_AC;
     	memory_data_register_out 	<= memory_data_register; 
     	memory_address_register_out <= memory_address_register;
		--retirar na hora de gravar na fpga
		memory_write_out <= memory_write;
		instruction_register_out <= instruction_register;
		--novo sinal para as instrucoes de leitura
		sortie_Port_out <= sortie_Port;
PROCESS ( CLOCK, RESET )
	BEGIN
	IF reset = '1' THEN
		state <= reset_pc;
	ELSIF clock'EVENT AND clock = '1' THEN
		CASE state IS
					-- reset the computer, need to clear some registers
		WHEN reset_pc =>
			program_counter 		<= "00000000";
			register_AC				<= "0000000000000000";
			--instruction_register 	<= "0000000000000000";
			--memory_address_register <= "00000000";
			state 					<= fetch;
					-- Fetch instruction from memory and add 1 to PC
		WHEN fetch =>
			instruction_register 	<= memory_data_register;
			program_counter 		<= program_counter + 1;
			state 					<= decode;
					-- Decode instruction and send out address of any data operands
		WHEN decode =>
			CASE instruction_register( 15 DOWNTO 8 ) IS
				WHEN "00000000" =>  -- opcode = x00
				    state 	<= execute_add;
				WHEN "00000001" => -- opcode = x01
				    state 	<= execute_store;
				WHEN "00000010" =>  -- opcode = x02
				    state 	<= execute_load;		
				WHEN "00000011" => -- opcode = x03
				    state 	<= execute_jump;
				--novas instrucoes
				--grupo1
				WHEN "00010000" => 
					 state 	<= execute_JZ;  -- opcode = x10
					 IF register_AC= "0000000000000000" THEN 
						  program_counter 			<= instruction_register( 7 DOWNTO 0 );				
					 END IF;
				
				WHEN "00010001" => -- opcode = x11
					 state 	<= execute_JNZ;
					 IF register_AC /= "0000000000000000" THEN 
						  program_counter 			<= instruction_register( 7 DOWNTO 0 );				
					 END IF;	 
					 
				--grupo2
				WHEN "00100000" => -- opcode = x20
					 state <= execute_OR;
				WHEN "00100001" => -- opcode = x21
					 state <= execute_AND;
				WHEN "00100010" => -- opcode = x22
					 state <= execute_XOR;
				
				--grupo3
				WHEN "00110000" => -- opcode = x30
					 state <= execute_LDI;
				WHEN "00110001" => -- opcode = x31
					 state <= execute_ADDI;
					 					 
				--grupo4
				WHEN "01000000" => -- opcode = x40
					 state <= execute_LSL;
				WHEN "01000001" => -- opcode = x41
					 state <= execute_LSR;
				WHEN "01000010" => -- opcode = x42
					 state <= execute_ROL;
				WHEN "01000011" =>  -- opcode = x43
					 state <= execute_ROR;
					 
				--grupo5
				WHEN "01010000" => -- opcode = x50
					 state <= execute_IN;
				WHEN "01010001" => -- opcode = x51
					 state <= execute_OUT;
				WHEN "01010010" => -- opcode = x52
					state <= execute_Test_in;
					res_TEST<='0';
					IF entree_Port(conv_integer(instruction_register( 7 DOWNTO 0 ))) = '1' THEN 
						res_TEST <= '1';
					END IF;
					register_ac 				<= entree_Port;
								 
				WHEN "01010011" =>  -- opcode = x53
					 state <= execute_Test_res;	
					IF RES_TEST = '1'  THEN
						program_counter 			<= instruction_register( 7 DOWNTO 0 );
					END IF;
					
				WHEN OTHERS =>
				    state 	<= fetch;
			END CASE;
					-- Execute the ADD instruction
		WHEN execute_add =>
			register_ac 				<= register_ac + memory_data_register;				
			state 						<= fetch;
					-- Execute the STORE instruction
					-- (needs three clock cycles for memory write)
		WHEN execute_store =>
					-- write register_AC to memory
 			state 						<= execute_store2;
					-- This state ensures that the memory address is
					--  valid until after memory_write goes inactive
		WHEN execute_store2 =>
			state 						<= fetch;
					-- Execute the LOAD instruction
		WHEN execute_load =>
			register_ac 				<= memory_data_register;
			state <= fetch;
					-- Execute the JUMP instruction
		WHEN execute_jump =>
			program_counter 			<= instruction_register( 7 DOWNTO 0 );
			state 						<= fetch;
			--novas instrucoes
			
		--grupo1
		WHEN execute_JZ => 
			state 						<= fetch;
					
		WHEN execute_JNZ => 	
			state 						<= fetch;
			
		--grupo2
		WHEN execute_OR => 
			register_ac 				<= register_ac or memory_data_register;				
			state 						<= fetch;
		WHEN execute_AND => 
			register_ac 				<= register_ac and memory_data_register;				
			state 						<= fetch;
		WHEN execute_XOR => 
			register_ac 				<= register_ac xor memory_data_register;				
			state 						<= fetch;	
			
		--grupo3
		WHEN execute_LDI => 
			register_ac 				<= ("00000000" & instruction_register( 7 DOWNTO 0 ));				
			state 						<= fetch;
		WHEN execute_ADDI => 
			register_ac 				<= register_ac + ("00000000" & instruction_register( 7 DOWNTO 0 ));						
			state 						<= fetch;

		--grupo4
		WHEN execute_LSL =>
			register_ac <= SHL(register_ac,instruction_register( 7 DOWNTO 0 ));
			state 						<= fetch;
		WHEN execute_LSR =>
			register_ac <= SHR(register_ac,instruction_register( 7 DOWNTO 0 ));
			state 						<= fetch;
		WHEN execute_ROL =>
		      CASE instruction_register( 7 DOWNTO 0 ) IS
				WHEN "00000001" =>  
						register_ac <= register_ac (14 downto 0)& register_ac (15);
				WHEN "00000010" =>  
						register_ac <= register_ac (13 downto 0)& register_ac (15 DOWNTO 14);	
				WHEN "00000011" =>  
						register_ac <= register_ac (12 downto 0)& register_ac (15 DOWNTO 13);	
				WHEN "00000100" =>  
						register_ac <= register_ac (11 downto 0)& register_ac (15 DOWNTO 12);
				WHEN OTHERS =>
				END CASE;
				state 						<= fetch;
		WHEN execute_ROR =>
			CASE instruction_register( 7 DOWNTO 0 ) IS
				WHEN "00000001" =>  
						register_ac <= register_ac (0)& register_ac (15 downto 1);
				WHEN "00000010" =>  
						register_ac <= register_ac (1 DOWNTO 0)& register_ac (15 downto 2);	
				WHEN "00000011" =>  
						register_ac <= register_ac (2 DOWNTO 0)& register_ac (15 downto 3);	
				WHEN "00000100" =>  
						register_ac <= register_ac (3 DOWNTO 0)& register_ac (15 downto 4);
				WHEN OTHERS =>
				END CASE;
				state 						<= fetch;
	
		--grupo5
		WHEN execute_IN =>
			register_ac 				<= entree_Port;
			state 						<= fetch;
		WHEN execute_OUT =>
			sortie_Port					<= register_ac;
			state 						<= fetch;
		WHEN execute_Test_in =>
			state 						<= fetch;
		WHEN execute_Test_res =>
			state 						<= fetch;
	
		WHEN OTHERS =>
			state <= fetch;
		END CASE;
	END IF;
	
   END PROCESS;
-- memory address register is stored inside synchronous memory unit 
-- need to load it's value based on current state
-- (no second register is used - not inside a process here)
   WITH state SELECT
		memory_address_register <= "00000000" 					WHEN reset_pc,
							 program_counter					WHEN fetch,
						     instruction_register(7 DOWNTO 0) 	WHEN decode,
							 program_counter					WHEN execute_add,
							 instruction_register(7 DOWNTO 0) 	WHEN execute_store,
							 program_counter					WHEN execute_store2,
							 program_counter					WHEN execute_load,
							 instruction_register(7 DOWNTO 0) 	WHEN execute_jump,
							 --novas instrucoes
							 
							 -- grupo1
							 program_counter 							WHEN execute_JZ,
							 program_counter 							WHEN execute_JNZ,
							 
							 --grupo2
							 program_counter					WHEN execute_OR,
							 program_counter					WHEN execute_AND,
							 program_counter					WHEN execute_XOR,
							 
							 --grupo3
							 program_counter					WHEN execute_LDI,
							 program_counter					WHEN execute_ADDI,
							 
							 --grupo4
							 
							 program_counter					WHEN execute_LSL,
							 program_counter					WHEN execute_LSR,
							 program_counter					WHEN execute_ROL,
							 program_counter					WHEN execute_ROR,
							 
							 --grupo5
							 program_counter					WHEN execute_IN,
							 program_counter					WHEN execute_OUT,
							 program_counter					WHEN execute_Test_in,
							 program_counter					WHEN execute_Test_res;
							 
    WITH state SELECT
		memory_write   <= 	'1'	WHEN execute_store,
							'0'	WHEN Others;
			
END a;

