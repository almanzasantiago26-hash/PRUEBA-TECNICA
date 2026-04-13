
SELECT DISTINCT
    c.nombre,
    c.email
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE c.activo = 1
  AND p.estado = 'entregado';
