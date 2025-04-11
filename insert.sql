--CLIENTE 
INSERT INTO cliente (id, nombre, apellido, email, numero_telefono) VALUES 
(1, 'pepe', 'ramirez', 'pepe@gamil.com', '3167687678'),
(2, 'maria', 'ortiz', 'maria@gmail.com', '3124567896'),
(3, 'oscar', 'toloza', 'oscar@gmail.com', '3161408809'),
(4, 'thiago', 'ortiz', 'thiago@gmail.com', '3219627892'),
(5, 'andres', 'aceros', 'andres@gmail.com', '3157593256'),
(6, 'Nathan', 'Martin', 'hamiltondavid@yahoo.com', 7559634350)
(7, 'Linda', 'Franklin', 'derekrivera@roberts.com', 8750111217)
 (8, 'Jordan', 'Miranda', 'melissajohnson@fields-taylor.com', 5689644699)
 (9, 'Andrea', 'Jenkins', 'angela28@hoffman-lucas.com', 6057667031)
 (10, 'Lisa', 'Hunter', 'kyle89@yahoo.com', 2523940965)
 (11, 'Nancy', 'Pace', 'april46@chavez.biz', 3728455542)
  (12, 'Cory', 'Wallace', 'nancy21@gmail.com', 2173275924)
 (13, 'Megan', 'Mora', 'myersjody@robinson-paul.com', 5123445087)
(14, 'Vanessa', 'Weiss', 'brittanyporter@reid.com', 5387501517)
 (15, 'Darrell', 'Ewing', 'johnwagner@gmail.com', 3019316898);

--PROVEEDOR
INSERT INTO proveedor (id, nombre, apellido, email, numero_telefono) VALUES 
(1, 'juan', 'ramirez', 'juan@gamil.com', '3167687987'),
(2, 'marta', 'almeida', 'marta@gmail.com', '3124567987'),
(3, 'marcos', 'toloza', 'marcos@gmail.com', '3161408876'),
(4, 'cruz', 'aceros', 'cruz@gmail.com', '3245327892'),
(5, 'dario', 'rosales', 'dario@gmail.com', '3157593578'),
(6, 'Mary', 'Fleming', 'brenda73@ward.com', 817531970),
(7, 'Carla', 'Lee', 'ztorres@yahoo.com', 847048234),
(8, 'Heather', 'Melendez', 'mperry@hotmail.com', 3791802000),
(9, 'Colin', 'Poole', 'usmith@hotmail.com', 4109545447),
(10, 'Taylor', 'Barrett', 'kwise@jackson.com', 3476498433),
(11, 'Christy', 'Ward', 'aaron14@lawson.net', 2905507876),
(12, 'Elizabeth', 'Evans', 'adkinsmichelle@hotmail.com', 6788940213),
(13, 'Shawn', 'Owens', 'fisherreginald@andersen-sims.com', 6340157935),
(14, 'Bethany', 'Contreras', 'holly37@gmail.com', 4102229454),
(15, 'Brian', 'Payne', 'conniesilva@mitchell-hanson.biz', 1499409923);

--PRODUCTO
INSERT INTO producto (id, nombre, categoria, precio, stock, disponibilidad, id_proveedor) VALUES
(1, 'Laptop HP 14"', 'Computadores', 2500000, '10', 'Disponible', 1),
(2, 'Mouse Logitech', 'Periféricos', 85000, '4', 'Disponible', 2),
(3, 'Teclado Redragon', 'Periféricos', 120000, '2', 'Disponible', 3),
(4, 'Monitor Samsung 24"', 'Pantallas', 720000, '8', 'Disponible', 4),
(5, 'Impresora Epson', 'Impresoras', 560000, '5', 'Disponible', 5),
(6, 'Router TP-Link', 'Redes', 150000, '3', 'Disponible', 6),
(7, 'Tablet Lenovo', 'Tablets', 980000, '7', 'Disponible', 7),
(8, 'Auriculares Sony', 'Audio', 200000, '1', 'Disponible', 8),
(9, 'SSD Kingston 480GB', 'Almacenamiento', 220000, '0', 'Agotado', 9),
(10, 'Disco Duro WD 1TB', 'Almacenamiento', 260000, '6', 'Disponible', 10),
(11, 'Webcam Logitech', 'Cámaras', 135000, '4', 'Disponible', 11),
(12, 'Silla Gamer', 'Muebles', 870000, '2', 'Disponible', 12),
(13, 'Fuente 600W', 'Componentes', 190000, '9', 'Disponible', 13),
(14, 'Tarjeta Madre ASUS', 'Componentes', 630000, '3', 'Disponible', 14),
(15, 'Procesador Ryzen 5', 'Componentes', 820000, '1', 'Disponible', 15);

--VENTAS
INSERT INTO ventas (id, id_producto, cantidad, id_cliente) VALUES
(1, 1, '1', 3),
(2, 2, '2', 1),
(3, 3, '1', 5),
(4, 4, '1', 2),
(5, 5, '2', 6),
(6, 6, '1', 4),
(7, 7, '1', 8),
(8, 8, '1', 9),
(9, 9, '2', 11),
(10, 10, '1', 12),
(11, 11, '1', 13),
(12, 12, '1', 7),
(13, 13, '1', 10),
(14, 14, '2', 14),
(15, 15, '1', 15);

--PAIS
INSERT INTO pais (id, nombre, serial) VALUES
(1, 'Colombia', 'CO01'),
(2, 'México', 'MX02'),
(3, 'Argentina', 'AR03'),
(4, 'Chile', 'CL04'),
(5, 'Perú', 'PE05'),
(6, 'Brasil', 'BR06'),
(7, 'Ecuador', 'EC07'),
(8, 'Panamá', 'PA08'),
(9, 'Uruguay', 'UY09'),
(10, 'Paraguay', 'PY10'),
(11, 'Venezuela', 'VE11'),
(12, 'Bolivia', 'BO12'),
(13, 'Honduras', 'HN13'),
(14, 'Guatemala', 'GT14'),
(15, 'Costa Rica', 'CR15');

--DEPARTAMENTO
INSERT INTO departamento (id, nombre, id_pais) VALUES
(1, 'Cundinamarca', 1),
(2, 'Antioquia', 1),
(3, 'Valle del Cauca', 1),
(4, 'Jalisco', 2),
(5, 'Buenos Aires', 3),
(6, 'Santiago', 4),
(7, 'Lima', 5),
(8, 'São Paulo', 6),
(9, 'Quito', 7),
(10, 'Ciudad de Panamá', 8),
(11, 'Montevideo', 9),
(12, 'Asunción', 10),
(13, 'Caracas', 11),
(14, 'La Paz', 12),
(15, 'San José', 15);

--CIUDAD
INSERT INTO ciudad (id, nombre, id_departamento) VALUES
(1, 'Bogotá', 1),
(2, 'Medellín', 2),
(3, 'Cali', 3),
(4, 'Guadalajara', 4),
(5, 'La Plata', 5),
(6, 'Santiago Centro', 6),
(7, 'Miraflores', 7),
(8, 'Campinas', 8),
(9, 'Quito Norte', 9),
(10, 'Panamá Centro', 10),
(11, 'Punta Carretas', 11),
(12, 'Luque', 12),
(13, 'Chacao', 13),
(14, 'El Alto', 14),
(15, 'Escazú', 15);

--BARRIO
INSERT INTO barrio (id, nombre, id_ciudad) VALUES
(1, 'Chapinero', 1),
(2, 'Poblado', 2),
(3, 'San Antonio', 3),
(4, 'Tlaquepaque', 4),
(5, 'Tolosa', 5),
(6, 'Las Condes', 6),
(7, 'Surco', 7),
(8, 'Barão Geraldo', 8),
(9, 'La Carolina', 9),
(10, 'Bella Vista', 10),
(11, 'Parque Rodó', 11),
(12, 'San Lorenzo', 12),
(13, 'Altamira', 13),
(14, 'Zona 12', 14),
(15, 'San Rafael', 15);

--DIRECCION
INSERT INTO direccion (id, lugar, id_barrio) VALUES
(1, 'Calle 45 #10-23', 1),
(2, 'Cra 80 #35-40', 2),
(3, 'Calle 5 #12-19', 3),
(4, 'Av. López Mateos 3250', 4),
(5, 'Calle 8 #76-34', 5),
(6, 'Av. Apoquindo 3456', 6),
(7, 'Av. Benavides 2145', 7),
(8, 'Rua Carlos Gomes 234', 8),
(9, 'Av. Amazonas 1023', 9),
(10, 'Via España 222', 10),
(11, 'Calle Ejido 1122', 11),
(12, 'Ruta 2 km 5', 12),
(13, 'Av. Libertador 909', 13),
(14, 'Calle 16 #89-20', 14),
(15, 'Av. Escazú 123', 15);

--EMPLEADO
INSERT INTO empleado (id, nombre, apellido, cargo, salario) VALUES
(1, 'Andrés', 'Ramírez', 'Vendedor', 2200000),
(2, 'Luisa', 'Gómez', 'Gerente', 4200000),
(3, 'Carlos', 'Pérez', 'Auxiliar', 1800000),
(4, 'Daniela', 'Castaño', 'Administrador', 3500000),
(5, 'Sebastián', 'Rojas', 'Vendedor', 2300000),
(6, 'Ana', 'Montoya', 'Contadora', 4000000),
(7, 'Julián', 'Mora', 'Recepcionista', 1600000),
(8, 'Camila', 'García', 'Asesor Técnico', 2500000),
(9, 'Manuel', 'López', 'Mensajero', 1500000),
(10, 'Laura', 'Díaz', 'Vendedor', 2100000),
(11, 'Iván', 'Suárez', 'Logística', 1900000),
(12, 'Valentina', 'Ortega', 'Supervisor', 3200000),
(13, 'Felipe', 'Sánchez', 'Compras', 2800000),
(14, 'Mónica', 'Vargas', 'Vendedor', 2400000),
(15, 'Santiago', 'León', 'Administrador', 3600000);

--EMPRESA
INSERT INTO empresa (id, nombre, nit, telefono, email) VALUES
(1, 'TecnoMarket', '900123456-1', '6011234567', 'contacto@tecnomarket.com'),
(2, 'Logiperiféricos', '800456789-2', '6012345678', 'ventas@logiperifericos.com'),
(3, 'RedDragon S.A.S.', '830987654-3', '6013456789', 'info@reddragon.com'),
(4, 'VisualTech', '812345678-4', '6014567890', 'soporte@visualtech.com'),
(5, 'PrintSoluciones', '890123456-5', '6015678901', 'contacto@printsol.com'),
(6, 'NetConect', '840654321-6', '6016789012', 'ventas@netconect.com'),
(7, 'SmartLenovo', '850789012-7', '6017890123', 'info@smartlenovo.com'),
(8, 'AudioMaster', '800321987-8', '6018901234', 'contacto@audiomaster.com'),
(9, 'DataKing', '860111222-9', '6019012345', 'ventas@dataking.com'),
(10, 'AlmaWare', '811222333-0', '6010123456', 'info@almaware.com'),
(11, 'CamStore', '822333444-1', '6011234560', 'soporte@camstore.com'),
(12, 'GamersPoint', '833444555-2', '6012345671', 'ventas@gamerspoint.com'),
(13, 'EnerSupply', '844555666-3', '6013456782', 'info@enersupply.com'),
(14, 'HardBuild', '855666777-4', '6014567893', 'contacto@hardbuild.com'),
(15, 'RyzenPro', '866777888-5', '6015678904', 'ventas@ryzenpro.com');

--PRECIO
INSERT INTO precio (id, valor, id_producto, fecha_inicio, fecha_fin) VALUES
(1, 2500000, 1, '2024-01-01', '2024-06-01'),
(2, 85000, 2, '2024-01-01', NULL),
(3, 120000, 3, '2024-03-15', NULL),
(4, 720000, 4, '2023-12-10', '2024-05-10'),
(5, 560000, 5, '2024-02-01', NULL),
(6, 150000, 6, '2024-04-01', NULL),
(7, 980000, 7, '2024-01-15', '2024-03-01'),
(8, 200000, 8, '2024-01-01', NULL),
(9, 220000, 9, '2024-02-20', '2024-03-25'),
(10, 260000, 10, '2024-03-01', NULL),
(11, 135000, 11, '2024-01-01', NULL),
(12, 870000, 12, '2024-02-01', NULL),
(13, 190000, 13, '2024-01-01', NULL),
(14, 630000, 14, '2024-03-01', NULL),
(15, 820000, 15, '2024-04-01', NULL);

--TRANSACCION
INSERT INTO transaccion (id, tipo, monto, fecha, id_venta) VALUES
(1, 'Ingreso', 2500000, '2024-04-01', 1),
(2, 'Ingreso', 170000, '2024-04-01', 2),
(3, 'Ingreso', 120000, '2024-04-01', 3),
(4, 'Ingreso', 720000, '2024-04-02', 4),
(5, 'Ingreso', 1120000, '2024-04-02', 5),
(6, 'Ingreso', 150000, '2024-04-02', 6),
(7, 'Ingreso', 980000, '2024-04-03', 7),
(8, 'Ingreso', 200000, '2024-04-03', 8),
(9, 'Ingreso', 440000, '2024-04-04', 9),
(10, 'Ingreso', 260000, '2024-04-04', 10),
(11, 'Ingreso', 135000, '2024-04-04', 11),
(12, 'Ingreso', 870000, '2024-04-05', 12),
(13, 'Ingreso', 190000, '2024-04-05', 13),
(14, 'Ingreso', 1260000, '2024-04-06', 14),
(15, 'Ingreso', 820000, '2024-04-06', 15);