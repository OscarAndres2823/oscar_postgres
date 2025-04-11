CREATE DATABASE techzone;
CREATE TABLE cliente(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(50),
    numero_telefono NUMBER 
);
CREATE TABLE proveedor(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(50),
    numero_telefono NUMBER 
);
CREATE TABLE producto(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio NUMBER,
    stock VARCHAR(50),
    disponibilidad VARCHAR(50),
    FOREIGN KEY id_proveedor REFERENCES proveedor(id_proveedor)
);
CREATE TABLE ventas(
    id INT PRIMARY KEY,
    FOREIGN KEY id_producto REFERENCES productos(id_producto),
    cantidad VARCHAR(50)
    FOREIGN KEY id_cliente REFERENCES cliente(id_cliente)
);
CREATE TABLE pais(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    serial VARCHAR(25)
);
CREATE TABLE departamento(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    FOREIGN KEY id_pais REFERENCES pais(id_pais)
);
CREATE TABLE ciudad(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    FOREIGN KEY id_departamento REFERENCES departamento(id_departamento)
);
CREATE TABLE barrio(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    FOREIGN KEY id_ciudad REFERENCES ciudad(id_ciudad)
);
CREATE TABLE direccion( 
    id INT PRIMARY KEY,
    lugar NUMBER,
    FOREIGN KEY id_barrio REFERENCES barrio(id_barrio)
);
CREATE TABLE empleados(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(50),
    telefono NUMBER
);
CREATE TABLE empresa(
    id INT PRIMARY KEY,
    FOREIGN KEY id_direccion REFERENCES direccion(id_direccion),
    FOREIGN KEY id_empleado REFERENCES empleado(id_empleado),
    FOREIGN KEY id_proveedor REFERENCES proveedor(id_proveedor)
);