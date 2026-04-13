CREATE DATABASE IF NOT EXISTS ecommerce_prueba;
USE ecommerce_prueba;


CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre     VARCHAR(100) NOT NULL,
    email      VARCHAR(150) NOT NULL UNIQUE,
    ciudad     VARCHAR(100),
    activo     TINYINT(1) DEFAULT 1  -- 1 = activo, 0 = inactivo
);


CREATE TABLE IF NOT EXISTS productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre      VARCHAR(150) NOT NULL,
    categoria   VARCHAR(100) NOT NULL,
    precio      DECIMAL(10, 2) NOT NULL,
    stock       INT DEFAULT 0
);


CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido   INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente  INT NOT NULL,
    id_producto INT NOT NULL,
    fecha       DATE NOT NULL,
    cantidad    INT NOT NULL DEFAULT 1,
    estado      VARCHAR(50) NOT NULL,  -- 'entregado', 'pendiente', 'cancelado'
    FOREIGN KEY (id_cliente)  REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
