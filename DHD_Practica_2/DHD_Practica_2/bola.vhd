 

-- Descripci�n de una bola cuadrada que se mueve hacia arriba y hacia abajo, 
-- respetando los m�rgenes superior e inferior de la pantalla.
--
-- Basado en ejemplo de Hamblen, J.O., Hall T.S., Furman, M.D.:
-- Rapid Prototyping of Digital Systems : SOPC Edition, Springer 2008.
-- (Cap�tulo 10) 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

ENTITY bola IS
	PORT(
		Red,Green,Blue : OUT std_logic;
	    vs : IN std_logic;
		pixel_Y, pixel_X : IN std_logic_vector(9 downto 0);
		UP, DOWN : IN std_logic;
		UP_D, DOWN_D : IN std_logic
		);
END bola;

architecture funcional of bola is
	SIGNAL Bola_on : std_logic;
	SIGNAL Desplaza_Bola_Y, Desplaza_Bola_X: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Bola_Y, Bola_X  : std_logic_vector(9 DOWNTO 0);
	
	SIGNAL Pala_on : std_logic;
	SIGNAL Pala_Y : std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(240, 10);
	SIGNAL Pala_X : std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(16, 10);
	SIGNAL Desplaza_Pala_Y  : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	SIGNAL Pala_on_D : std_logic;
	SIGNAL Pala_Y_D : std_logic_vector(9 DOWNTO 0):=CONV_STD_LOGIC_VECTOR(240, 10);
	SIGNAL Pala_X_D : std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(623, 10);
	SIGNAL Desplaza_Pala_Y_D  : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	

	CONSTANT Size: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(8,10);
	CONSTANT Size_x: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(8,10);
	CONSTANT Size_Y: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(48,10);
	--CONSTANT Bola_X : STD_LOGIC_VECTOR(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(320,10);

	
BEGIN

Red <= Bola_on or Pala_on or Pala_on_D;
Green	<= Bola_on  or Pala_on or Pala_on_D;
Blue	<= Bola_on or Pala_on or Pala_on_D;

Dibujar_Pala: Process (Pala_Y, pixel_X, pixel_Y)
BEGIN
	IF (Pala_X <= pixel_X + Size_X) AND
		(Pala_x + Size_X >= pixel_X) AND
		(Pala_Y  <= pixel_Y + Size_Y) AND
		(Pala_Y + Size_Y >= pixel_Y) THEN
		
		Pala_on <= '1';
	ELSE
		Pala_on <= '0';
	END IF;
END process Dibujar_Pala;

Dibujar_Pala_D: Process (Pala_Y, pixel_X, pixel_Y)
BEGIN
	IF (Pala_X_D <= pixel_X + Size_X) AND
		(Pala_x_D + Size_X >= pixel_X) AND
		(Pala_Y_D  <= pixel_Y + Size_Y) AND
		(Pala_Y_D + Size_Y >= pixel_Y) THEN
		
		Pala_on_D <= '1';
	ELSE
		Pala_on_D <= '0';
	END IF;
END process Dibujar_Pala_D;

Mover_Pala_D: Process (UP, DOWN, vs)
BEGIN
	IF vs'event and vs = '1' THEN
		IF UP_D = '0' AND Pala_Y_D >= Size_Y THEN
			Desplaza_Pala_Y_D <= CONV_STD_LOGIC_VECTOR(-2, 10);
		ELSIF DOWN_D = '0' and Pala_Y_D <= (479 - Size_Y) THEN
			Desplaza_Pala_Y_D <= CONV_STD_LOGIC_VECTOR(2, 10);
		ELSE
			Desplaza_Pala_Y_D <= (others => '0');
		END IF;
		
		Pala_Y_D <= Pala_Y_D + Desplaza_Pala_Y_D;
	END IF;
		
END PROCESS Mover_pala_D;

Mover_Pala: Process (UP, DOWN, vs)
BEGIN
	IF vs'event and vs = '1' THEN
		IF UP = '0' AND Pala_Y >= Size_Y THEN
			Desplaza_Pala_Y <= CONV_STD_LOGIC_VECTOR(-2, 10);
		ELSIF DOWN = '0' and Pala_Y <= (479 - Size_Y) THEN
			Desplaza_Pala_Y <= CONV_STD_LOGIC_VECTOR(2, 10);
		ELSE
			Desplaza_Pala_Y <= (others => '0');
		END IF;
		
		Pala_Y <= Pala_Y + Desplaza_Pala_Y;
	END IF;
		
END PROCESS Mover_pala;


Dibujar_Bola: Process (Bola_X, Bola_Y, pixel_X, pixel_Y)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la bola
	-- Poner Bola_on a '1' para visualizar la bola
	IF (Bola_X <= pixel_X + Size) AND
		(Bola_X + Size >= pixel_X) AND
		(Bola_Y <= pixel_Y + Size) AND
		(Bola_Y + Size >= pixel_Y ) THEN
		
		Bola_on <= '1';
	ELSE
		Bola_on <= '0';
	END IF;
END process Dibujar_Bola;


Mover_Bola: PROCESS (vs)
BEGIN
	-- Actualizar la posici�n de la bola en cada refresco de pantalla
	IF vs'event and vs = '1' THEN
		-- Detectar los bordes superior e inferior de la pantalla
        IF Bola_Y  >= CONV_STD_LOGIC_VECTOR(479,10) - Size THEN
            Desplaza_Bola_Y <= CONV_STD_LOGIC_VECTOR(-2,10);
        ELSIF  Bola_Y <= Size  THEN
            Desplaza_Bola_Y <= CONV_STD_LOGIC_VECTOR(2,10);
        END IF;

        IF Bola_X <= Size THEN
            Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(2,10);
        ELSIF Bola_X  >= CONV_STD_LOGIC_VECTOR(639,10) - Size THEN
            Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(-2,10);
        ELSIF  (Bola_X - Size <= Pala_X + Size_X and -- Para pala izquierda
            Bola_Y + Size + Size_Y >= Pala_Y  and
            Bola_Y  <= Pala_Y + Size_Y + Size) THEN
            Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(2,10);
        ELSIF  (Bola_X + Size + Size_X >= Pala_X_D  and -- Para pala izquierda
            Bola_Y + Size + Size_Y >= Pala_Y_D  and
            Bola_Y  <= Pala_Y_D + Size_Y + Size) THEN
            Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(-2, 10);
        END IF;
			
			-- Calcular la siguiente posicion de la bola
			Bola_Y 	  	<= Bola_Y + Desplaza_Bola_Y;
			Bola_X 	  	<= Bola_X + Desplaza_Bola_X;
	END IF;
END process Mover_Bola;

END funcional;