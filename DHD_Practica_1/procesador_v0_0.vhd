

-- Descripción de una procesador que ejecuta cuatro instrucciones. 
-- Basado en ejemplo de Hamblen, J.O., Hall T.S., Furman, M.D.:
-- Rapid Prototyping of Digital Systems : SOPC Edition, Springer 2008.
-- (Capítulo 9) 



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY procesador_v0_0 IS
PORT( clock : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		AC_out : out std_logic_vector(15 downto 0);
		IR_out : out std_logic_vector(15 downto 0);
		PC_out : out std_logic_vector(7 downto 0);
		MEMq : in std_logic_vector(15 downto 0);
		MEMdata: out std_logic_vector(15 downto 0);
		MEMwe : out std_logic;
		MEMadr : out std_logic_vector(7 downto 0);
		IO_Input : in std_logic_vector(7 downto 0);
		IO_Output : out std_logic_vector(7 downto 0)
		);
END procesador_v0_0;

ARCHITECTURE rtl OF procesador_v0_0 IS
	TYPE STATE_TYPE IS ( reset_pc, fetch1, decode, add0, add1, load1, 
								store0, store1, jump, sub0, sub1, nand0, nand1, 
								jneg, jpos, jzero, shl, shr, in1, out1);
	SIGNAL state: STATE_TYPE;
	SIGNAL IR, AC, RT : STD_LOGIC_VECTOR(15 DOWNTO 0 );
	SIGNAL PC : STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	
	BEGIN
	
	
	-- Asignaciones a puertos de salida
	--	
	AC_out <= AC;
	IR_out <= IR;
	PC_out <= PC;


FSMD: PROCESS ( CLOCK, RESET, state, PC, AC, IR )

BEGIN

-- Asignaciones a REGISTROS en datapath y MAQUINA DE ESTADOS de la unidad de control

-- Versión Original --
IF reset = '1' THEN
	state <= reset_pc;
	ELSIF clock'EVENT AND clock = '1' THEN
	 CASE state IS   
		WHEN reset_pc =>
			PC	<= "00000000";
			AC <= "0000000000000000";
			state <= fetch1;	
		WHEN fetch1 =>
			IR <= MEMq;
			PC <= PC + 1;
			state <= decode;	
		WHEN decode =>
			CASE IR( 15 DOWNTO 8 ) IS
				WHEN "00000000" =>
					state <= add0;
				WHEN "00000001" =>
					state <= store0;
				WHEN "00000010" =>
					state <= load1;
				WHEN "00000011" =>
					state <= jump;
				WHEN "00000100" =>
					state <= sub0;
				WHEN "00000101" =>
					state <= nand0;
				WHEN "00000110" =>
					state <= jneg;
				WHEN "00000111" =>
					state <= jpos;
				WHEN "00001000" =>
					state <= jzero;
				WHEN "00001001" =>
					state <= shl;
				WHEN "00001010" =>
					state <= shr;
				WHEN "00001011" =>
					state <= in1;
				WHEN "00001100" =>
					state <= out1;
				WHEN OTHERS =>
					state <= fetch1;
			END CASE;
		WHEN add0 =>
			RT <= MEMq;
			state <= add1;
		WHEN add1 =>
			AC <= AC + RT;
			state <= fetch1;	
		WHEN store0 =>
			state <= store1;
		WHEN store1 =>
			state <= fetch1;			
		WHEN load1 =>
			AC <= MEMq;
			state <= fetch1;			
		WHEN jump =>
			PC <= IR( 7 DOWNTO 0 );
			state <= fetch1;		
		WHEN sub0 =>
			RT <= MEMq;
			state <= sub1;
		WHEN sub1 =>
			AC <= AC - RT;
			state <= fetch1;
		WHEN nand0 =>
			RT <= MEMq;
			state <= nand1;
		WHEN nand1 =>
			AC <= AC NAND RT;
			state <= fetch1;	
		WHEN jneg =>
			IF AC < 0 THEN
				PC <= IR( 7 DOWNTO 0 );
			END IF;
			state <= fetch1;
		WHEN jpos =>
			IF AC > 0 THEN
				PC <= IR( 7 DOWNTO 0 );
			END IF;
			state <= fetch1;
		WHEN jzero =>
			IF AC = 0 THEN
				PC <= IR( 7 DOWNTO 0 );
			END IF;
			state <= fetch1;
		WHEN shl =>
			AC <= SHL( AC, IR( 7 DOWNTO 0 ) );
			state <= fetch1;
		WHEN shr =>
			AC <= SHR( AC, IR( 7 DOWNTO 0 ) );
			state <= fetch1;
		WHEN in1 =>
			IF IR(0) = '0' THEN
				AC( 7 DOWNTO 0 ) <= IO_Input( 7 DOWNTO 0 );
			ELSIF IR(0) = '1' THEN
				AC( 15 DOWNTO 8 ) <= IO_Input( 7 DOWNTO 0 );
			END IF;
			state <= fetch1;
		WHEN out1 =>
			IF IR(0) = '0' THEN
				IO_Output( 7 DOWNTO 0 ) <= AC( 7 DOWNTO 0 );
			ELSIF IR(0) = '1' THEN
				IO_Output( 7 DOWNTO 0 ) <= AC( 15 DOWNTO 8 );
			END IF;
			state <= fetch1;
		WHEN OTHERS =>
			state <= fetch1;	
	 END CASE;
	END IF;
	
-- Versión 1 --

-- versión 2 --
	
-- Asignaciones a BUSES de entrada a MEMORIA (Direcciones, Datos y control de escritura)
 
-- Versión Original --
	CASE state IS
		WHEN reset_pc | add1 | store1 | load1 | sub1 | nand1 | shl | shr | in1 | out1 =>
			MEMadr <= PC;
			MEMwe <= '0';
			MEMdata <= (others =>'-');
		WHEN store0 => 
			MEMadr <= IR(7 downto 0);
			MEMwe <= '1';
			MEMdata <= AC;
		WHEN jump =>
			MEMadr <= IR(7 downto 0);
			MEMwe <= '0';
			MEMdata <= (others =>'-');
		WHEN jneg =>
			IF AC < 0 THEN
				MEMadr <= IR(7 downto 0);
			ELSE
				MEMadr <= PC;
			END IF;
			MEMwe <= '0';
			MEMdata <= (others =>'-');
		WHEN jpos =>
			IF AC > 0 THEN
				MEMadr <= IR(7 downto 0);
			ELSE
				MEMadr <= PC;
			END IF;
			MEMwe <= '0';
			MEMdata <= (others =>'-');
		WHEN jzero =>
			IF AC = 0 THEN
				MEMadr <= IR(7 downto 0);
			ELSE
				MEMadr <= PC;
			END IF;
			MEMwe <= '0';
			MEMdata <= (others =>'-');
		WHEN others =>
			MEMadr <= IR(7 downto 0);
			MEMwe <= '0';
			MEMdata <= (others =>'-');
	end case;
	
-- Versión 1 --

-- Versión 2 --
	
END PROCESS;


END rtl;