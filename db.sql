CREATE DATABASE techzone;
\c techzone 

-- Tabla Cliente
CREATE TABLE cliente(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(50),
    numero_telefono NUMERIC
);

-- Tabla Proveedor
CREATE TABLE proveedor(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(50),
    numero_telefono NUMERIC
);

-- Tabla Producto
CREATE TABLE producto(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio NUMERIC,
    stock INT,
    disponibilidad VARCHAR(50),
    id_proveedor INT,
    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id)
);

-- Tabla Ventas
CREATE TABLE ventas(
    id INT PRIMARY KEY,
    id_producto INT,
    id_cliente INT,
    cantidad INT,
    FOREIGN KEY (id_producto) REFERENCES producto(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

-- Tabla País
CREATE TABLE pais(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    serial VARCHAR(25)
);

-- Tabla Departamento
CREATE TABLE departamento(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES pais(id)
);

-- Tabla Ciudad
CREATE TABLE ciudad(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

-- Tabla Barrio
CREATE TABLE barrio(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    id_ciudad INT,
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id)
);

-- Tabla Dirección
CREATE TABLE direccion( 
    id INT PRIMARY KEY,
    lugar VARCHAR(50),
    id_barrio INT,
    FOREIGN KEY (id_barrio) REFERENCES barrio(id)
);

-- Tabla Empleados
CREATE TABLE empleados(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(50),
    telefono NUMERIC
);

-- Tabla Empresa
CREATE TABLE empresa(
    id INT PRIMARY KEY,
    id_direccion INT,
    id_empleado INT,
    id_proveedor INT,
    id_cliente INT,
    FOREIGN KEY (id_direccion) REFERENCES direccion(id),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id),
    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

-- Tabla Transacciones
CREATE TABLE transacciones(
    id INT PRIMARY KEY,
    id_producto INT,
    id_cliente INT,
    FOREIGN KEY (id_producto) REFERENCES producto(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

-- Tabla Precio
CREATE TABLE precio(
    id INT PRIMARY KEY,
    valor NUMERIC,
    id_producto INT,
    id_proveedor INT,
    FOREIGN KEY (id_producto) REFERENCES producto(id),
    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id)
);
