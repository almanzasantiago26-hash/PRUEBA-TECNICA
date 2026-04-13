

USE ecommerce_prueba;


INSERT INTO clientes (nombre, email, ciudad, activo) VALUES
('Ana García',      'ana@email.com',     'Madrid',     1),  -- tiene pedido entregado  → aparece en ej1
('Luis Pérez',      'luis@email.com',    'Barcelona',  1),  -- solo pedido pendiente   → NO aparece en ej1
('María López',     'maria@email.com',   'Sevilla',    1),  -- tiene pedido entregado  → aparece en ej1
('Carlos Ruiz',     'carlos@email.com',  'Valencia',   0),  -- inactivo                → NO aparece en ej1
('Sofía Martínez',  'sofia@email.com',   'Bilbao',     1);  -- sin pedidos             → NO aparece en ej1


INSERT INTO productos (nombre, categoria, precio, stock) VALUES
('Laptop Pro 15',      'Electrónica',  1200.00, 10),  -- tiene pedidos
('Mouse Inalámbrico',  'Accesorios',     25.00, 50),  -- tiene pedidos
('Teclado Mecánico',   'Accesorios',     85.00, 30),  -- tiene pedidos
('Monitor 27"',        'Electrónica',   350.00,  8),  -- NUNCA pedido, stock > 0 → aparece en ej3
('Auriculares BT',     'Audio',          60.00, 20),  -- NUNCA pedido, stock > 0 → aparece en ej3
('Webcam HD',          'Accesorios',     45.00,  0),  -- NUNCA pedido, stock = 0 → NO aparece en ej3
('Silla Ergonómica',   'Mobiliario',    299.00, 15);  -- NUNCA pedido, stock > 0 → aparece en ej3


INSERT INTO pedidos (id_cliente, id_producto, fecha, cantidad, estado) VALUES
-- Ana García compra Laptop (entregado) → aparece en ej1 y suma en ej2
(1, 1, '2024-01-10', 1, 'entregado'),
-- Ana García compra Mouse (pendiente) → NO suma en ej2
(1, 2, '2024-02-15', 2, 'pendiente'),
-- Luis Pérez compra Teclado (pendiente) → NO aparece en ej1
(2, 3, '2024-03-05', 1, 'pendiente'),
-- María López compra Mouse (entregado) → aparece en ej1 y suma en ej2
(3, 2, '2024-03-20', 3, 'entregado'),
-- María López compra Laptop (entregado) → suma en ej2
(3, 1, '2024-04-01', 2, 'entregado'),
-- Carlos Ruiz (inactivo) compra Teclado (entregado) → NO aparece en ej1
(4, 3, '2024-04-10', 1, 'entregado');
