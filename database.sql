create table distribuidor(
	distribuidor_id int not null auto_increment,
	primary key (distribuidor_id));

create table proveedor(
	proveedor_id int not null auto_increment,
	proveedor_nombre char(50),
	primary key (proveedor_id));

create table dependencia(
	dependencia_id int not null auto_increment,
	dependencia_nombre char(50),
	primary key (dependencia_id));

create table producto(
	producto_id int not null auto_increment,
	producto_nombre char (200),
	producto_peso real,
	producto_cantidad int,
	primary key (producto_id));

create table proveedor_producto(
	producto int not null,
	proveedor int not null,
	primary key (producto, proveedor),
	foreign key (producto) references producto(producto_id),
	foreign key (proveedor) references proveedor(proveedor_id));

create table orden_proveedor(
	orden_id int not null auto_increment,
	orden_producto int not null,
	orden_proveedor int not null,
	orden_distribuidor int not null,
	orden_fecha date,
	orden_cantidad int,
	primary key (orden_id),
	foreign key (orden_producto) references producto(producto_id),
	foreign key (orden_proveedor) references proveedor(proveedor_id),
	foreign key (orden_distribuidor) references distribuidor(distribuidor_id)
	);

create table orden_dependencia(
	orden_id int not null auto_increment,
	orden_producto int not null,
	orden_dependencia int not null,
	orden_distribuidor int not null,
	orden_fecha date,
	orden_cantidad int,
	primary key (orden_id),
	foreign key (orden_producto) references producto(producto_id),
	foreign key (orden_dependencia) references dependencia(dependencia_id),
	foreign key (orden_distribuidor) references distribuidor(distribuidor_id)
	);

