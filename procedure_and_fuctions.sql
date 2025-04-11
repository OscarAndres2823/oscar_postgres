CREATE OR REPLACE PROCEDURE registrar_venta(
    p_id_cliente INT,
    p_id_producto INT,
    p_cantidad INT,
    p_fecha DATE
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_stock INT;
    v_cliente_existe BOOLEAN;
BEGIN
    -- Verificamos si el cliente existe
    SELECT EXISTS (
        SELECT 1 FROM cliente WHERE id = p_id_cliente
    ) INTO v_cliente_existe;

    IF NOT v_cliente_existe THEN
        RAISE EXCEPTION 'Ups... El cliente con ID % no existe. Revisa los datos ingresados.', p_id_cliente;
    END IF;

    -- Consultamos el stock disponible del producto
    SELECT stock::INT INTO v_stock
    FROM producto
    WHERE id = p_id_producto;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'El producto con ID % no fue encontrado. Verifica el catálogo.', p_id_producto;
    END IF;

    -- Verificamos si hay suficiente stock para la venta
    IF v_stock < p_cantidad THEN
        RAISE NOTICE 'Lo sentimos, solo hay % unidades disponibles del producto %. No se puede completar la venta de % unidades.',
            v_stock, p_id_producto, p_cantidad;
    ELSE
        -- Registramos la venta
        INSERT INTO ventas (id, id_producto, cantidad, id_cliente, fecha)
        VALUES (
            (SELECT COALESCE(MAX(id), 0) + 1 FROM ventas), -- ID generado automáticamente
            p_id_producto,
            p_cantidad,
            p_id_cliente,
            p_fecha
        );

        -- Actualizamos el stock restante
        UPDATE producto
        SET stock = (v_stock - p_cantidad)::VARCHAR
        WHERE id = p_id_producto;

        RAISE NOTICE '¡Venta registrada exitosamente! El cliente % compró % unidad(es) del producto %.',
            p_id_cliente, p_cantidad, p_id_producto;
    END IF;
END;
$$;
