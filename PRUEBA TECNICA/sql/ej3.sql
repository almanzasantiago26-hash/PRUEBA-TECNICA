
SELECT
    pr.nombre,
    pr.categoria,
    pr.precio
FROM productos pr
LEFT JOIN pedidos p ON pr.id_producto = p.id_producto
WHERE p.id_producto IS NULL
  AND pr.stock > 0;

