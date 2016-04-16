create table almacen(
id_almacen int not null auto_increment,
primary key(id_almacen)
);

create table proveedor(
id_proveedor int not null auto_increment,
nombre_proveedor char(100),
primary key(id_proveedor)
);

create table comprador(
id_comprador int not null auto_increment,
nombre_comprador char(100),
primary key(id_comprador)
);

create table categoria(
id_categoria int not null auto_increment,
nombre_categoria char(100),
primary key(id_categoria)
);

create table producto(
id_producto int not null auto_increment,
categoria_producto int not null,
nombre_producto char(100),
peso_producto int,
primary key(id_producto),
foreign key(categoria_producto) references categoria(id_categoria)
);

create table proveedor_producto(
pp_proveedor int not null,
pp_producto int not null,
primary key(pp_producto, pp_proveedor),
foreign key(pp_proveedor) references proveedor(id_proveedor),
foreign key(pp_producto) references producto(id_producto)
);

create table orden_requisicion(
id_orden_r int not null auto_increment,
almacen int not null,
primary key(id_orden_r),
foreign key(almacen) references almacen(id_almacen)
);

create table orden_requisicion_contenido(
orden_requisicion int not null,
proveedor int not null,
producto int not null,
cantidad int,
primary key(orden_requisicion, producto, proveedor),
foreign key(orden_requisicion) references orden_requisicion(id_orden_r),
foreign key(proveedor) references proveedor(id_proveedor),
foreign key(producto) references producto(id_producto)
);

create table orden_servicio(
id_orden_s int not null auto_increment,
comprador int not null,
primary key(id_orden_s),
foreign key(comprador) references comprador(id_comprador)
);

create table orden_servicio_contenido(
orden_servicio int not null,
almacen int not null,
producto int not null,
cantidad int,
primary key(orden_servicio, producto, almacen),
foreign key(orden_servicio) references orden_servicio(id_orden_s),
foreign key(almacen) references almacen(id_almacen),
foreign key(producto) references producto(id_producto)
);