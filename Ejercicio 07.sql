-- Ejercicio 7			Obs: Los numeros indican los pasos del problema
-- Problema Oficial

use  Base_Datos_I;

-- 1
  drop table if exists agenda;

-- 2  
create table agenda(
		nombre varchar(20),
		domicilio varchar(30),
		telefono varchar(11)
);

-- 3
 describe agenda;

-- 4 
insert into agenda(nombre, domicilio,telefono)
	values( 'Alberto Mores','Colon 123','4234567');

insert into agenda(nombre, domicilio,telefono)
	values(  'Juan Torres','Avellaneda 135','4458787');	

insert into agenda(nombre, domicilio,telefono)
	values( 'Mariana Lopez','Urquiza 333','4545454');

insert into agenda(nombre, domicilio,telefono)
	values(  'Fernando Lopez','Urquiza 333','4545454');
	
-- 5 
select * from agenda;

-- 6
select * from agenda
		where nombre='Juan Torres';

-- 7
  select * from agenda
		where domicilio='Colon 123';
		
-- 8
  select * from agenda
		where telefono='4545454';
	
-- 9
 drop table agenda;


