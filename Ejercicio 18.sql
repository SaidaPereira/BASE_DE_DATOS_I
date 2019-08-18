-- Ejercicio 18				Obs: Los numeros indican los pasos del problema
-- Problema Oficial

use  Base_Datos_I;

-- 1 
drop table if exists pedido;


-- 2
create table pedido(
	numero_pedido tinyint unsigned auto_increment,
	nombre char(8),
	tipo  varchar (15),
	precio decimal(2.2) unsigned,
	cantidad tinyint unsigned,
	domicilio varchar(20),
	primary key (numero_pedido)
);