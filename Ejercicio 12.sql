-- Ejercicio 12				Obs: Los numeros indican los pasos del problema
-- Problema Oficial

use  Base_Datos_I;

-- 1
 drop table if exists medicamentos;
 
-- 2 
create table medicamentos(
  codigo integer auto_increment,
  nombre varchar(20),
  laboratorio varchar(20),
  precio float,
  cantidad integer,
  primary key (codigo)
);

-- 3 
describe medicamentos;

-- 4
insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Sertal','Roche',5.2,100);
	
insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Buscapina','Roche',4.10,200);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Amoxidal 500','Bayer',15.60,100);

-- 5
 select codigo,nombre,laboratorio,precio,cantidad
  from medicamentos;
  
-- 6
 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
	values(3,'Paracetamol 500','S.O.S',2.8,22);
	
-- ERROR 1062 (23000): Duplicate entry '3' for key 'PRIMARY'

-- 7
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(12,'Paracetamol 500','Bago',1.90,200);
  
-- 8
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Bayaspirina','Bayer',2.10,150); 