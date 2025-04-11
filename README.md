# 📊 Proyecto TechZone - Gestión de Ventas y Productos

## 📌 Descripción del Proyecto

La tienda TechZone es un negocio dedicado a la venta de productos tecnológicos, desde laptops y
teléfonos hasta accesorios y componentes electrónicos. Con el crecimiento del comercio digital y
la alta demanda de dispositivos electrónicos, la empresa ha notado la necesidad de mejorar la
gestión de su inventario y ventas. Hasta ahora, han llevado el control de productos y
transacciones en hojas de cálculo, lo que ha generado problemas como:
🔹 Errores en el control de stock: No saben con certeza qué productos están por agotarse, lo
que ha llevado a problemas de desabastecimiento o acumulación innecesaria de productos en
bodega.
🔹 Dificultades en el seguimiento de ventas: No cuentan con un sistema eficiente para analizar
qué productos se venden más, en qué períodos del año hay mayor demanda o quiénes son sus
clientes más frecuentes.
🔹 Gestión manual de proveedores: Los pedidos a proveedores se han realizado sin un historial
claro de compras y ventas, dificultando la negociación de mejores precios y la planificación del
abastecimiento.
🔹 Falta de automatización en el registro de compras: Cada vez que un cliente realiza una
compra, los empleados deben registrar manualmente los productos vendidos y actualizar el
inventario, lo que consume tiempo y es propenso a errores.
Para solucionar estos problemas, TechZone ha decidido implementar una base de datos en
PostgreSQL que le permita gestionar de manera eficiente su inventario, las ventas, los clientes y
los proveedores.

---

## 📐 Modelo Entidad-Relación

A continuación se presenta el modelo E-R utilizado para el diseño de la base de datos:

![Modelo ER](modelo_er.png)

---

## 🛠️ Instrucciones para Importar y Ejecutar los Archivos SQL

1. Abre una terminal conectada a PostgreSQL.
2. Crea la base de datos ejecutando:
```sql
   CREATE DATABASE techzone;
   \c techzone;
📂 Descripción de los Scripts

db.sql	--Crea todas las tablas necesarias para el sistema.
insert.sql	--Carga datos ficticios para probar el sistema.
queries.sql	--Incluye consultas útiles como productos más vendidos, clientes sin compras recientes, etc.
procedure.sql	--Define el procedimiento registrar_venta para validar clientes, verificar stock y registrar ventas.