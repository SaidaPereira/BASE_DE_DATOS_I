/*Ejercicio 3			Obs: Los numeros indican los pasos del problema
--Problema*/
create database Base_Datos_I;

show databases;

use  Base_Datos_I;

-- 1 
 drop table if exists agenda;

-- 2
create table Base_Datos_I.agenda(
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
) engine=InnoDB;

-- 3 
create table Base_Datos_I.agenda(
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
) engine=InnoDB;

-- ERROR 1050 (42S01): Table 'agenda' already exists

-- 4
 
 show tables;

-- 5 
describe agenda;

-- 6 
drop table if exists agenda;

-- 7

 drop table agenda;

-- ERROR 1051 (42S02): Unknown table 'datos_amigos.agenda'
