
SELECT
    pr.nombre,
    pr.categoria,
    pr.precio
FROM productos pr
LEFT JOIN pedidos p ON pr.id_producto = p.id_producto
WHERE p.id_producto IS NULL
  AND pr.stock > 0;

-- Opción B: NOT EXISTS (equivalente)
-- SELECT
--     pr.nombre,
--     pr.categoria,
--     pr.precio
-- FROM productos pr
-- WHERE pr.stock > 0
--   AND NOT EXISTS (
--       SELECT 1 FROM pedidos p WHERE p.id_producto = pr.id_producto
--   );
