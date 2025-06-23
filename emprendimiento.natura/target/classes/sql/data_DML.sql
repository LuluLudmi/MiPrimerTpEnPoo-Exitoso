-- Archivo: data_DML.sql
-- DML (Data Manipulation Language) para insertar datos de ejemplo
-- Adaptado para emprendimiento de productos de belleza Natura

-- Insertar datos en la tabla clientes
-- Clientes que comprarían productos de belleza
INSERT INTO clientes (nombre, apellido, email, telefono, direccion, instagram) VALUES
('Sofia', 'Colque', 'sofia.soyyo@hotmail.com', '1165432100', 'Av. Las Flores 100, Palermo', '@sofia_soyyolover'),
('Paula', 'Gomez', 'paulagomez345@gmail.com', '1150009988', 'Calle del Sol 25, Caballito', '@paula_skincare'),
('Laura', 'Mamani', 'laura.mami21@gmail.com', '1133221144', 'Rivadavia 876, Almagro', '@laura_tumami_arg'),
('Micaela', 'Fernandez', 'micaelaSeSe@hotmail.com', '1177665544', 'calle 2 3124, Berazategui', '@mica_sese_fan'),
('Romina', 'Perez', 'romi.perez88@gmail.com', '1122334455', 'Av. Mitre 500, Avellaneda', '@romi_belleza_ok'),
('Diego', 'Gimenez', 'diegogimez_ok@hotmail.com', '1133445566', 'Calle 12 1234, Quilmes', '@diego.create_quilmes'),
('Valeria', 'Rodriguez', 'vale.rodri@yahoo.com.ar', '1144556677', 'Libertad 890, Lanús', '@valeria_lanus_beauty'),
('Lucas', 'Torres', 'lucas_torres_arg@gmail.com', '1155667788', 'San Martín 200, Florencio Varela', '@lucas.torres.argen'),
('Florencia', 'Diaz', 'flor.diaz.natural@hotmail.com', '1166778899', 'España 300, Lomas de Zamora', '@florencia_diazlife'),
('Gonzalo', 'Acosta', 'gonza.acosta7@gmail.com', '1177889900', 'Moreno 1500, Solano', '@gonza.acosta.oksi'),
('Carla', 'Lopez', 'carli_lopez_siempre@hotmail.com', '1188990011', 'Calle 25 de Mayo 700, Bernal', '@carla.lolopez.bernal'),
('Martin', 'Sanchez', 'tincho.sanchez.ok@gmail.com', '1199001122', 'Roca 450, Almirante Brown', '@martin_san_oficial'),
('Sofia', 'Martinez', 'sofimartinez_arg@yahoo.com.ar', '1111223344', 'Av. Calchaquí 1800, Cruce Varela', '@sofi.m.kiss'),
('Ezequiel', 'Ruiz', 'eze.ruiz.conurba@gmail.com', '1122334400', 'Garibaldi 100, Quilmes Oeste', '@eze.ruiz.online'),
('Andrea', 'Blanco', 'andy_blanco_7@hotmail.com', '1133445500', 'Larrea 600, Banfield', '@andy_white.banfield'),
('Pablo', 'Peralta', 'pablo.peralta.ok@gmail.com', '1144556600', 'Mitre 1200, Monte Grande', '@pablo_peralta_ventas'),
('Marina', 'Castro', 'mari.castro.belleza@yahoo.com.ar', '1155667700', 'Las Heras 200, Adrogué', '@marina.castro.life'),
('Federico', 'Nuñez', 'fede.nunez.arg@gmail.com', '1166778800', 'Eva Perón 900, Burzaco', '@fede.gree.burzaco'),
('Julieta', 'Herrera', 'juli.herrera.conur@hotmail.com', '1177889900', 'Calle Maipú 400, Berazategui', '@julieta.ventas.natura'),
('Ricardo', 'Medina', 'ricardo.medina.ventas@gmail.com', '1188990000', 'Independencia 1100, Glew', '@ricardo_dina_online');

-- Insertar datos en la tabla productos
-- Productos de belleza, con descripciones y precios acordes a Natura
INSERT INTO productos (nombre, descripcion, precio_costo, precio_venta, stock) VALUES
('Hidratante Corporal Frambuesa y Pimienta Rosa', 'Crema hidratante 400ml, fragancia intensa', 1500.00, 2500.00, 50),
('Perfume Humor Proprio', 'Eau de Toilette femenino 75ml, floral y amaderado', 4000.00, 6500.00, 30),
('Base Fluida HD', 'Base de alta cobertura FPS 15, tono medio', 2000.00, 3300.00, 40),
('Labial Cremoso Nude', 'Labial cremoso hidratante, color nude clásico', 800.00, 1300.00, 60),
('Shampoo Murumuru Reconstruccion', 'Shampoo reparador para cabello dañado 300ml', 1200.00, 1950.00, 45),
('Jabones Cremosos Surtidos x5', 'Caja con 5 jabones cremosos, varias fragancias', 900.00, 1450.00, 70),
('Desodorante Roll-on Invisible', 'Desodorante antitranspirante 72hs, sin manchas', 500.00, 850.00, 80),
('Aceite Trifásico Pitanga', 'Aceite corporal post-baño 200ml, fragancia cítrica', 1800.00, 2900.00, 35),
('Máscara de Pestañas Una', 'Máscara para volumen y alargamiento', 1300.00, 2100.00, 25),
('Crema de Manos Castaña', 'Crema hidratante para manos 75g, nutrición intensa', 700.00, 1150.00, 90);


-- Insertar datos en la tabla pedidos
-- Nota: Los id_cliente deben existir en la tabla clientes.
INSERT INTO pedidos (id_cliente, fecha_pedido, estado_pedido, total) VALUES
(1, '2025-06-09 14:00:00', 'Confirmado', 0.00), -- Sofia
(2, '2025-06-10 16:30:00', 'Pendiente', 0.00),  -- Paula
(1, '2025-06-05 10:15:00', 'Enviado', 0.00),    -- Sofia (otro pedido)
(3, '2025-06-15 11:00:00', 'Pendiente', 0.00),  -- Laura
(5, '2025-06-18 09:30:00', 'Confirmado', 0.00), -- Romina
(6, '2025-06-19 15:45:00', 'Enviado', 0.00),    -- Diego
(8, '2025-06-20 12:00:00', 'Pendiente', 0.00), -- Lucas
(10, '2025-06-21 10:00:00', 'Confirmado', 0.00),-- Gonzalo
(4, '2025-06-12 17:00:00', 'Entregado', 0.00), -- Micaela
(15, '2025-06-20 18:00:00', 'Pendiente', 0.00); -- Andrea


-- Insertar datos en la tabla detalle_pedidos
-- Nota: Los id_pedido y id_producto deben existir en sus respectivas tablas.
-- Asegurarse de que los id_producto corresponden a los nuevos productos de belleza
INSERT INTO detalle_pedidos (id_pedido, id_producto, cantidad) VALUES
(1, 1, 2), -- Pedido 1 (Sofia): 2 Hidratantes Frambuesa
(1, 4, 1), -- Pedido 1 (Sofia): 1 Labial Nude
(2, 2, 1), -- Pedido 2 (Paula): 1 Perfume Humor Proprio
(2, 6, 1), -- Pedido 2 (Paula): 1 Caja Jabones
(3, 3, 1), -- Pedido 3 (Sofia): 1 Base Fluida HD
(3, 1, 1), -- Pedido 3 (Sofia): 1 Hidratante Frambuesa
(4, 5, 2), -- Pedido 4 (Laura): 2 Shampoos Murumuru
(5, 7, 3), -- Pedido 5 (Romina): 3 Desodorantes
(5, 1, 1), -- Pedido 5 (Romina): 1 Hidratante Frambuesa
(6, 8, 1), -- Pedido 6 (Diego): 1 Aceite Trifásico Pitanga
(7, 9, 1), -- Pedido 7 (Lucas): 1 Máscara de Pestañas Una
(7, 4, 1), -- Pedido 7 (Lucas): 1 Labial Nude
(8, 10, 2),-- Pedido 8 (Gonzalo): 2 Cremas de Manos Castaña
(9, 2, 1), -- Pedido 9 (Micaela): 1 Perfume Humor Proprio
(9, 6, 1), -- Pedido 9 (Micaela): 1 Caja Jabones
(10, 5, 1); -- Pedido 10 (Andrea): 1 Shampoo Murumuru

-- Opcional: Actualizar el total de los pedidos después de insertar los detalles
-- Esto es importante porque el campo 'total' en 'pedidos' ahora se puede calcular
-- a partir de la suma de los precios de venta de los productos en detalle_pedidos.
-- Esto demuestra una consulta más avanzada para mantener la coherencia de los datos.
-- Opcional: Actualizar el total de los pedidos después de insertar los detalles
-- Esto es importante porque el campo 'total' en 'pedidos' se calcula
-- a partir de la suma de los precios de venta de los productos en detalle_pedidos.
-- Esto demuestra una consulta más avanzada para mantener la coherencia de los datos.
UPDATE pedidos p
JOIN (
    SELECT dp.id_pedido, SUM(dp.cantidad * prod.precio_venta) AS calculated_total
    FROM detalle_pedidos dp
    JOIN productos prod ON dp.id_producto = prod.id_producto
    GROUP BY dp.id_pedido
) AS subquery ON p.id_pedido = subquery.id_pedido
SET p.total = subquery.calculated_total;