-- Indicamos la base de datos que queremos usar --
USE `datosusuarios`;

-- Insertamos registros --
INSERT INTO `datosusuarios`(`nombre`,`apellido`,`correo`,`usuario`,`clave`) VALUES
('Administrador','administrador','administrador@gmail.com','admin', sha2('paso',256));