
SELECT
    pr.categoria,
    SUM(pr.precio * p.cantidad) AS total_ventas
FROM pedidos p
JOIN productos pr ON p.id_producto = pr.id_producto
WHERE p.estado = 'entregado'
GROUP BY pr.categoria
ORDER BY total_ventas DESC;
