-- Ejercicio 13				Obs: Los numeros indican los pasos del problema
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
insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Sertal','Roche',5.2,100);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Buscapina','Roche',4.10,200);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Amoxidal 500','Bayer',15.60,100);
	
	
-- 4
 delete from medicamentos;

-- 5
insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

-- 6
 select * from medicamentos;
 
-- 7  
truncate table medicamentos;

-- 8  
insert into medicamentos (nombre, laboratorio,precio,cantidad)
		values('Buscapina','Roche',4.10,200); 
		
-- 9 
 select * from medicamentos;