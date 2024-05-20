DROP DATABASE IF EXISTS pizza_gol;
CREATE DATABASE `pizza_gol` ;
USE pizza_gol ;
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE IF NOT EXISTS `pizza_gol`.`clientes` (
  DNI INT NOT NULL PRIMARY KEY UNIQUE,
  nombre VARCHAR(45) NULL,
  apellido VARCHAR(45) NULL,
  telefono INT NULL,
  email VARCHAR(45) NULL,
  domicilio VARCHAR(45) NULL
 );

CREATE TABLE IF NOT EXISTS `pizza_gol`.`empleados` (
  DNI INT NOT NULL PRIMARY KEY UNIQUE,
  nombre VARCHAR(45) NULL,
  apellido VARCHAR(45) NULL,
  numero_contacto INT NULL,
  salario INT NULL,
  puesto VARCHAR(45) NULL,
  domicilio VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  cuil INT NULL,
  legajo VARCHAR(45) NULL,
  fecha_ingreso DATETIME NULL,
  emp_mes INT NULL,
  dias_vacas INT NULL
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`proveedor` (
  num_proveedor INT NOT NULL PRIMARY KEY UNIQUE,
  id INT NOT NULL UNIQUE,
  nombre VARCHAR(45) NULL,
  telefono INT NULL,
  email VARCHAR(45) NULL,
  direccion VARCHAR(45) NULL
 );

CREATE TABLE IF NOT EXISTS `pizza_gol`.`menu` (
  cod_comida INT NOT NULL PRIMARY KEY UNIQUE,
  nombre VARCHAR(45) NULL UNIQUE,
  precio VARCHAR(45) NULL
 );

CREATE TABLE IF NOT EXISTS `pizza_gol`.`recetas` (
  cod_receta INT NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NULL,
  descripcion VARCHAR(200) NULL,
  cod_comida INT NOT NULL UNIQUE,
  FOREIGN KEY (`cod_comida`) REFERENCES `pizza_gol`.`menu` (`cod_comida`)
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`inventario` (
  num_producto INT NOT NULL PRIMARY KEY UNIQUE,
  id INT NOT NULL UNIQUE,
  nombre VARCHAR(45) NULL,
  stock INT NOT NULL,
  categoria VARCHAR(45) NULL,
  num_proveedor INT NOT NULL UNIQUE,
  cod_receta INT NOT NULL ,
  FOREIGN KEY (`num_proveedor`) REFERENCES `pizza_gol`.`proveedor` (`num_proveedor`),
  FOREIGN KEY (`cod_receta`) REFERENCES `pizza_gol`.`recetas` (`cod_receta`)
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`pedidos` (
  num_pedido INT NOT NULL PRIMARY KEY UNIQUE,
  cantidad FLOAT NULL,
  codigo_comida INT NOT NULL UNIQUE,
  dni_cliente INT NOT NULL UNIQUE,
  empleado INT NOT NULL UNIQUE,
  FOREIGN KEY (`codigo_comida`) REFERENCES `pizza_gol`.`menu` (`cod_comida`),
  FOREIGN KEY (`dni_cliente`) REFERENCES `pizza_gol`.`clientes` (`DNI`),
  FOREIGN KEY (`empleado`) REFERENCES `pizza_gol`.`empleados` (`DNI`)
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`pago` (
  cog_pago INT NOT NULL PRIMARY KEY UNIQUE,
  tipo_pago VARCHAR(45) NULL,
  num_pedido INT NOT NULL UNIQUE,
  FOREIGN KEY (`num_pedido`) REFERENCES `pizza_gol`.`pedidos` (`num_pedido`)
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`factura` (
  num_fac INT NOT NULL PRIMARY KEY UNIQUE,
  hora_cobro DATETIME NULL,
  IVA FLOAT NULL,
  monto_total FLOAT NULL,
  cod_pago INT NOT NULL UNIQUE,
  FOREIGN KEY (`cod_pago`) REFERENCES `pizza_gol`.`pago` (`cog_pago`)
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`puntaje` (
  num_puntaje INT NOT NULL PRIMARY KEY UNIQUE,
  asistencias INT NULL,
  faltas INT NULL,
  tarde INT NULL,
  puntaje INT NULL,
  empleado INT NOT NULL UNIQUE,
  FOREIGN KEY (`empleado`) REFERENCES `pizza_gol`.`empleados` (`DNI`)
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`promociones` (
  num_promo INT NOT NULL PRIMARY KEY UNIQUE,
  nombre VARCHAR(45) NULL,
  precio FLOAT NULL,
  descripcion VARCHAR(45) NULL,
  cod_comida INT NOT NULL UNIQUE,
  FOREIGN KEY (`cod_comida`) REFERENCES `pizza_gol`.`menu` (`cod_comida`)
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`pedido_proveedores` (
  num_pedido INT NOT NULL PRIMARY KEY UNIQUE,
  fecha DATETIME NULL,
  total FLOAT NULL,
  num_proveedor INT NOT NULL UNIQUE,
  FOREIGN KEY (`num_proveedor`) REFERENCES `pizza_gol`.`proveedor` (`num_proveedor`)
);

CREATE TABLE IF NOT EXISTS `pizza_gol`.`factura_proveedor` (
  num_fac INT NOT NULL PRIMARY KEY UNIQUE,
  hora_cobro DATETIME NULL,
  IVA FLOAT NULL,
  monto_total FLOAT NULL,
  num_pedido INT NOT NULL UNIQUE,
  FOREIGN KEY (`num_pedido`) REFERENCES `pizza_gol`.`pedido_proveedores` (`num_pedido`)
);

-- consultas --
SELECT * FROM proveedor ORDER BY num_proveedor LIMIT 7;
