-- Ejercicios de Base de datos (98-112)
-- Ejercicio 100
-- 1
drop table if exists empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos int,
  seccion varchar(20),
  primary key(documento)
 );


-- 2
insert into empleados 
	values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados 
	values('22333333','Luis','Lopez',300,0,'Contaduria');
 insert into empleados 
	values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados 
	values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados 
	values('22666666','Jose Maria','Morales',400,3,'Secretaria');

-- 3
drop procedure if exists pa_empleados_sueldo;

-- 4 
delimiter //
 create procedure pa_empleados_sueldo(
   in p_sueldo decimal(6,2))
 begin
   select nombre,apellido,sueldo
     from empleados
     where sueldo>=p_sueldo;
 end //
 delimiter ;
 
 -- 5
  call pa_empleados_sueldo(400);
 call pa_empleados_sueldo(500);
 
 -- 6  call pa_empleados_sueldo
 -- ERROR 1318 (42000): Incorrect number of arguments for PROCEDURE tarea.pa_empleados_sueldo; expected 1, got 0Muestra mensaje de error
 
 -- 7
  drop procedure if exists pa_empleados_actualizar_sueldo;
  
  -- 8
  delimiter //
 create procedure pa_empleados_actualizar_sueldo
   (p_sueldoanterior decimal(6,2),
    p_sueldonuevo decimal(6,2))
 begin
   update empleados set sueldo=p_sueldonuevo
     where sueldo=p_sueldoanterior;
 end //
 delimiter ;
 
 -- 9
  call pa_empleados_actualizar_sueldo(300, 350);
 select * from empleados;
 
 -- 10 call pa_empleados_actualizar_sueldo(300);
 -- ERROR 1318 (42000): Incorrect number of arguments for PROCEDURE tarea.pa_empleados_actualizar_sueldo; expected 2, got 1
  
 