-- archivo: schema_DDL.sql
-- ddl (data definition language) para la base de datos de tu emprendimiento natura

-- crear base de datos si no existe
create database if not exists emprendimiento_natura_db;
use emprendimiento_natura_db;

-- eliminar tablas existentes si ya existen (útil para pruebas)
drop table if exists detalle_pedidos;
drop table if exists pedidos;
drop table if exists productos;
drop table if exists clientes;

create table clientes (
    id_cliente int auto_increment primary key,
    nombre varchar(65) not null check(length(nombre) >= 3),
    apellido varchar(65) not null check(length(apellido) >= 3),
    email varchar(75),
    telefono varchar(20),
    direccion varchar(120),
    instagram varchar(50)
);

create table productos (
    id_producto int auto_increment primary key,
    nombre varchar(65) not null check(length(nombre) >= 3),
    descripcion varchar(80),
    precio_costo double not null,
    precio_venta double not null,
    stock int not null default 0
);

create table pedidos (
    id_pedido int auto_increment primary key,
    id_cliente int not null,
    fecha_pedido datetime not null,
    estado_pedido enum('pendiente', 'confirmado', 'enviado', 'entregado', 'cancelado') not null default 'pendiente',
    total double not null,
    foreign key (id_cliente) references clientes(id_cliente)
);

create table detalle_pedidos (
    id_pedido int not null,
    id_producto int not null,
    cantidad int not null,
    primary key (id_pedido, id_producto),
    foreign key (id_pedido) references pedidos(id_pedido),
    foreign key (id_producto) references productos(id_producto)
);