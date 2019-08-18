-- Ejercicio 19				Obs: Los numeros indican los pasos del problema
-- Problema Oficial

use  Base_Datos_I;

-- 1
 drop table if exists autos;

-- 2
create table autos(
  marca varchar(15),
  modelo year,
  dueño varchar(30),
  precio decimal (8,2) unsigned  
 );
 
 -- 3 
 insert into autos values('Fiat 128','1970','Juan Lopez',50000);
 insert into autos values('Renault 11','1990','Juan Lopez',80000);
 insert into autos values('Fiat 128','1971','Ana Ferreyra',51000);
 insert into autos values('Peugeot 505','1998','Luis Luque',99000);
 insert into autos values('Peugeot 505','1997','Carola Perez',85000);

-- 4 
select * from autos
  where modelo<1995;
  
-- 5
select marca,modelo from autos
  where modelo<>1970;
  
-- 6   
 insert into autos values('Peugeot 505',1995,'Carlos Lopez',88000);
  
 
