-- Ejercicio 10				Obs: Los numeros indican los pasos del problema
-- Problema Oficial

use  Base_Datos_I;

set SQL_SAFE_UPDATES=0;

-- 1
 drop table if exists agenda;

-- 2
 create table agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
	)engine=InnoDB;
	
-- 3
 describe agenda;

-- 4 
insert into agenda(apellido,nombre,domicilio,telefono)
		values( 'Mores','Alberto','Colon 123','4234567');
		
insert into agenda(apellido,nombre,domicilio,telefono)
		values('Torres','Juan','Avellaneda 135','4458787');
		
insert into agenda(apellido,nombre,domicilio,telefono)
		values( 'Lopez','Mariana','Urquiza 333','4545454');
		
insert into agenda(apellido,nombre,domicilio,telefono)
		values('Lopez','Jose','Urquiza 333','4545454');
		
insert into agenda(apellido,nombre,domicilio,telefono)
		values('Peralta','Susana','Gral. Paz 1234','4123456');
		
-- 5
update agenda set nombre='Juan Jose'
		where nombre = 'Juan';
		
-- 6
 update agenda set telefono='4445566'
		where telefono = '4545454';
		
-- 7
update agenda set nombre='Juan Jose'
		where nombre = 'Juan';
		
-- Query OK, 0 rows affected (0.00 sec)
-- Rows matched: 0  Changed: 0  Warnings: 0

set SQL_SAFE_UPDATES=1;