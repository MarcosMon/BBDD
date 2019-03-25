
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

/* Ejercicio 2: usa las estructuras condicionales para mostrar el día de la semana según un valor de entrada numérico, 1 para domingo, 
2 lunes, etc. */
DELIMITER //

DROP FUNCTION IF EXISTS diasSemana;
CREATE FUNCTION diasSemana(numeroDia int)
		RETURNS varchar(10)
	BEGIN
        DECLARE diasSemana varchar(10);
		IF numeroDia = 1 THEN
            RETURN 'Lunes';
		ELSEIF numeroDia = 2 THEN
            RETURN 'Martes';
		ELSEIF numeroDia = 3 THEN
            RETURN 'Miercoles';
		ELSEIF numeroDia = 4 THEN
            RETURN 'Jueves';
		ELSEIF numeroDia = 5 THEN
            RETURN 'Viernes';
		ELSEIF numeroDia = 6 THEN
            RETURN 'Sabado';
		ELSEIF numeroDia = 7 THEN
            RETURN 'Domingo';
		END IF;
END; 
DELIMITER ;

SELECT diasSemana(5);

SELECT diasSemana(3);
			

