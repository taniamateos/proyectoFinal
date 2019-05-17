-- Crear la base de datos --
CREATE DATABASE `datosusuarios`;

-- Usar la base de datos creada anteriormente --
USE `datosusuarios`;

-- Crear la tabla en la base de datos que estamos usando --
CREATE TABLE `datosusuarios`.`datosusuarios` (
`nombre` VARCHAR(255),
`apellido` VARCHAR(255),
`correo` VARCHAR(255),
`usuario` VARCHAR(255) PRIMARY KEY,
`clave` VARCHAR(255) 
) ENGINE = INNODB;