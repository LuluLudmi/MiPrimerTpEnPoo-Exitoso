-- archivo: queries.sql
-- ejemplos de consultas (queries) para la base de datos de tu emprendimiento natura

-- 1. listar todos los clientes junto con sus datos de contacto
select
    c.id_cliente,
    c.nombre,
    c.apellido,
    c.email,
    c.telefono,
    c.instagram
from
    clientes c;

-- 2. obtener la cantidad de stock por cada producto
select
    p.id_producto,
    p.nombre,
    p.stock as cantidad_disponible
from
    productos p
order by
    cantidad_disponible asc;

-- 3. mostrar pedidos en estado 'pendiente' junto con el nombre del cliente
select
    pe.id_pedido,
    cl.nombre as nombre_cliente,
    cl.apellido as apellido_cliente,
    pe.fecha_pedido,
    pe.estado_pedido
from
    pedidos pe
join
    clientes cl on pe.id_cliente = cl.id_cliente
where
    pe.estado_pedido = 'pendiente';

-- 4. listar productos que tienen un precio de venta mayor a $2000
select distinct
    p.nombre,
    p.precio_venta
from
    productos p
where
    p.precio_venta > 2000;

-- 5. obtener el total de ingresos por cada tipo de producto vendido
select
    p.nombre as nombre_producto,
    sum(dp.cantidad * p.precio_venta) as ingresos_generados
from
    detalle_pedidos dp
join
    productos p on dp.id_producto = p.id_producto
group by
    p.nombre
order by
    ingresos_generados desc;

-- 6. mostrar el historial de pedidos de un cliente específico (ej. sofia colque)
select
    pe.id_pedido,
    pe.fecha_pedido,
    pe.estado_pedido,
    pe.total
from
    pedidos pe
join
    clientes cl on pe.id_cliente = cl.id_cliente
where
    cl.nombre = 'sofia' and cl.apellido = 'colque'
order by
    pe.fecha_pedido desc;

-- 7. listar los productos (nombre y cantidad) de un pedido particular (ej. pedido id 1)
select
    dp.id_pedido,
    pr.nombre as nombre_producto,
    dp.cantidad
from
    detalle_pedidos dp
join
    productos pr on dp.id_producto = pr.id_producto
where
    dp.id_pedido = 1;

-- 8. contar el número de pedidos por estado
select
    estado_pedido,
    count(id_pedido) as cantidad_de_pedidos
from
    pedidos
group by
    estado_pedido;

-- 9. clientes que han comprado un 'perfume kaiak clásico'
select distinct
    cl.nombre,
    cl.apellido,
    cl.instagram
from
    clientes cl
join
    pedidos pe on cl.id_cliente = pe.id_cliente
join
    detalle_pedidos dp on pe.id_pedido = dp.id_pedido
join
    productos pr on dp.id_producto = pr.id_producto
where
    pr.nombre = 'perfume kaiak clásico';

-- 10. calcular el valor promedio de los pedidos confirmados
select
    avg(total) as promedio_pedidos_confirmados
from
    pedidos
where
    estado_pedido = 'confirmado';