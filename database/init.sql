/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  motat
 * Created: 14/10/2025
 */

-- database/init.sql
CREATE DATABASE IF NOT EXISTS bd_sistema_ventas;
USE bd_sistema_ventas;

-- tabla usuarios
CREATE TABLE IF NOT EXISTS tb_usuario(
  idUsuario INT(11) AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  usuario VARCHAR(15) NOT NULL,
  password VARCHAR(50) NOT NULL,
  telefono VARCHAR(15) NOT NULL,
  estado INT(1) NOT NULL
);

-- tabla cliente
CREATE TABLE IF NOT EXISTS tb_cliente(
  idCliente INT(11) AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  cedula VARCHAR(15) NOT NULL,
  telefono VARCHAR(15) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  estado INT(1) NOT NULL
);

-- tabla categoria
CREATE TABLE IF NOT EXISTS tb_categoria(
  idCategoria INT(11) AUTO_INCREMENT PRIMARY KEY,
  descripcion VARCHAR(200) NOT NULL,
  estado INT(1) NOT NULL
);

-- tabla producto
CREATE TABLE IF NOT EXISTS tb_producto(
  idProducto INT(11) AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  cantidad INT(11) NOT NULL,
  precio DOUBLE(10,2) NOT NULL,
  descripcion VARCHAR(200) NOT NULL,
  porcentajeIva INT(2) NOT NULL,
  idCategoria INT(11) NOT NULL,
  estado INT(1) NOT NULL
);

-- cabecera venta
CREATE TABLE IF NOT EXISTS tb_cabecera_venta(
  idCabeceraVenta INT(11) AUTO_INCREMENT PRIMARY KEY,
  idCliente INT(11) NOT NULL,
  valorPagar DOUBLE(10,2) NOT NULL,
  fechaVenta DATE NOT NULL,
  estado INT(1) NOT NULL
);

-- detalle venta
CREATE TABLE IF NOT EXISTS tb_detalle_venta(
  idDetalleVenta INT(11) AUTO_INCREMENT PRIMARY KEY,
  idCabeceraVenta INT(11) NOT NULL,
  idProducto INT(11) NOT NULL,
  cantidad INT(11) NOT NULL,
  precioUnitario DOUBLE(10,2) NOT NULL,
  subtotal DOUBLE(10,2) NOT NULL,
  descuento DOUBLE(10,2) NOT NULL,
  iva DOUBLE(10,2) NOT NULL,
  totalPagar DOUBLE(10,2) NOT NULL,
  estado INT(1) NOT NULL
);

-- datos iniciales: usuarios de ejemplo
INSERT INTO tb_usuario (nombre, apellido, usuario, password, telefono, estado) 
VALUES ('Administrador', 'Sistema', 'admin', 'admin123', '3214991520', 1)
ON DUPLICATE KEY UPDATE usuario=usuario;

INSERT INTO tb_usuario (nombre, apellido, usuario, password, telefono, estado) 
VALUES ('Vendedora', 'Vendedora', 'marce', 'marce123', '3214991520', 1)
ON DUPLICATE KEY UPDATE usuario=usuario;
