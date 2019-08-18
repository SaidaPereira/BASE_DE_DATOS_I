-- Ejercicio 9					Obs: Los numeros indican los pasos del problema
-- Problema Oficial

use  Base_Datos_I;

-- 1
 drop table if exists agenda;

-- 2
 create table agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
	);
	
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

set SQL_SAFE_UPDATES=0;

delete from agenda
		where nombre = 'Juan';
		
-- 6
	delete from agenda
		where telefono = '4545454';	

set SQL_SAFE_UPDATES=1;