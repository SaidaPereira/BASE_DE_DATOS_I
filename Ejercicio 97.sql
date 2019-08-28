-- Problema 97 (Ejemplo)
-- Obs: Los numeros indican cada paso del ejercicio
-- Este ejercicio es el ejemplo del problema 97, ya que no hay un ejercicio para desarrollar

-- 1
drop table if exists alumnos;
 drop table if exists profesores;
 
 create table alumnos(
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  codigoprofesor int,
  primary key(documento)
 );

 create table profesores (
   codigo int auto_increment,
   nombre varchar(30),
   primary key(codigo)
 );
 
-- 2
insert into alumnos values('30111111','Ana Algarbe', 5.1, 1);
 insert into alumnos values('30222222','Bernardo Bustamante', 3.2, 1);
 insert into alumnos values('30333333','Carolina Conte',4.5, 1);
 insert into alumnos values('30444444','Diana Dominguez',9.7, 1);
 insert into alumnos values('30555555','Fabian Fuentes',8.5, 2);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70, 2);

 insert into profesores(nombre) values ('Maria Luque');
 insert into profesores(nombre) values ('Jorje Dante'); 
 
 -- 3
 
  drop view if exists vista_nota_alumnos_aprobados;

 -- Creamos una vista con los datos de todos los alumnos que tienen
 -- una nota mayor o igual a 7, junto con el nombre del profesor que
 -- lo calificó
 create view vista_nota_alumnos_aprobados as
   select documento,
          a.nombre as nombrealumno,
          p.nombre as nombreprofesor,
          nota,
          codigoprofesor
     from alumnos as a
     join profesores as p on a.codigoprofesor=p.codigo
     where nota>=7;
	 
-- 4

select * from vista_nota_alumnos_aprobados;

-- 5
select * from alumnos;

-- 6

update vista_nota_alumnos_aprobados set nota=10 
  where documento='30444444';
  
select * from alumnos;