--1. Listar los productos con stock menor a 5 unidades
SELECT * 
FROM producto 
WHERE stock::INT < 5;
-- 2. Calcular ventas totales de un mes específico (ej: marzo 2025)
SELECT 
    SUM(cantidad::INT) AS total_vendido
FROM ventas
WHERE EXTRACT(MONTH FROM fecha) = 3 AND EXTRACT(YEAR FROM fecha) = 2025;
--3. Obtener el cliente con más compras realizadas
SELECT c.id, c.nombre, c.apellido, COUNT(v.id) AS total_compras
FROM cliente c
JOIN ventas v ON c.id = v.id_cliente
GROUP BY c.id, c.nombre, c.apellido
ORDER BY total_compras DESC
LIMIT 1;
-- 4. Listar los 5 productos más vendidos
SELECT p.id, p.nombre, SUM(v.cantidad::INT) AS total_vendido
FROM producto p
JOIN ventas v ON p.id = v.id_producto
GROUP BY p.id, p.nombre
ORDER BY total_vendido DESC
LIMIT 5;
--5. Consultar ventas realizadas en un rango de fechas (ej: del 2025-03-01 al 2025-03-04)
SELECT * 
FROM ventas
WHERE fecha BETWEEN '2025-03-01' AND '2025-03-04';
--6. Identificar clientes que no han comprado en los últimos 6 meses
SELECT * 
FROM cliente
WHERE id NOT IN (
    SELECT DISTINCT id_cliente 
    FROM ventas
    WHERE fecha >= CURRENT_DATE - INTERVAL '6 months'
);
