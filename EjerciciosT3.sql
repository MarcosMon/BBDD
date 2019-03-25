
CREATE DATABASE IF NOT EXISTS EjerciciosT3;

USE EjerciciosT3;

DELIMITER //

DROP FUNCTION IF EXISTS NumerosDivisibles; 

/*1. Crea una función que devuelva 1 ó 0 si un número es o no divisible por otro. Debe de recibir
dos números por parámetros.*/

CREATE FUNCTION NumerosDivisibles(numeroUno int, numeroDos int)
		RETURNS int
	BEGIN
    DECLARE NumerosDivisibles int;
		IF numeroUno%numeroDos=0 THEN
			RETURN 0;
		ELSE
			RETURN 1;
		END IF;
END; 
DELIMITER ;

SELECT NumerosDivisibles(12,4);

SELECT NumerosDivisibles(15,4);
			

