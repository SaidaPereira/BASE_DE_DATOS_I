-- Ejercicio 20				Obs: Los numeros indican los pasos del problema
-- Problema Oficial

use  Base_Datos_I;

-- 1
drop table if exists peliculas;

-- 2 

create table peliculas(
  codigo int unsigned auto_increment,
  titulo varchar(30) not null,
  actor varchar (20),
  duracion tinyint unsigned,
  primary key(codigo)
 );
 
 -- 3
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (codigo,duracion)
  values(5,90);
 insert into peliculas (titulo,actor)
  values('Harry Potter y la piedra filosofal','Daniel R.');
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',120);
  
 -- 4
 select * from peliculas;